--[[
	Skins.lua

	Skin / Style system, modelled on the architecture used by the modern
	Zygor Guides Viewer (Classic) addon.

	The idea:
	  * A SKIN is a family (e.g. "default").
	  * A STYLE is a variant inside that family (e.g. "modern", "blue").
	  * Styles hold DATA only - no logic. Adding a new style means dropping a
	    Style-<id>.lua file in Skins/Styles/ and listing it in Skins/Skins.xml.
	  * Styles may inherit from another style; SkinData() walks the inheritance
	    chain, so a style only declares what differs from its parent.

	This replaces the old Z_SKINS / Z_SKIN_HOOKS / LoadSkin tables. The values
	a style declares are the same ones AlignFrame() and UpdateSkin() already
	read out of db.profile, so those functions did not need to change.
--]]

local me = ZygorGuidesViewer
local ZGV = me
if not ZGV then
  return
end

ZGV.Skins = {}
local Skins = ZGV.Skins

Skins.skins = {}

-- Where texture folders live, e.g. Interface\AddOns\ZygorGuidesViewer\Skin\modern\
ZGV.SKINSDIR = 'Interface\\AddOns\\ZygorGuidesViewer\\Skin\\'

--------------------------------------------------------------------------
-- Skin prototype
--------------------------------------------------------------------------

local SkinProto = {}
local StyleProto = {}

function SkinProto:New(id, name)
  local skin = { id = id, name = name, styles = {}, styleorder = {} }
  return setmetatable(skin, { __index = SkinProto })
end

function SkinProto:AddStyle(id, name, inherit)
  local style = StyleProto:New(id, name)
  style.skin = self
  if inherit then
    style.inheritedStyle = self.styles[inherit]
  end
  self.styles[id] = style
  table.insert(self.styleorder, id)
  if not self.defaultStyle then
    self.defaultStyle = id -- first added becomes default unless pinned in Skin.lua
  end
  return style
end

function SkinProto:GetStyle(id)
  return self.styles[id or self.defaultStyle]
end

function SkinProto:GetDir()
  return ZGV.SKINSDIR
end

--------------------------------------------------------------------------
-- Style prototype - lookups fall through to the inherited style
--------------------------------------------------------------------------

function StyleProto:New(id, name)
  local style = { id = id, name = name }
  return setmetatable(style, {
    __index = function(t, k)
      local proto = rawget(StyleProto, k)
      if proto ~= nil then
        return proto
      end
      local inheritedStyle = rawget(t, 'inheritedStyle')
      if not inheritedStyle then
        return nil
      end
      return inheritedStyle[k]
    end,
  })
end

-- Texture folder for this style, e.g. ...\Skin\modern\
function StyleProto:GetDir()
  return ZGV.SKINSDIR .. (rawget(self, 'texturedir') or self.id) .. '\\'
end

--------------------------------------------------------------------------
-- Registration / lookup
--------------------------------------------------------------------------

function Skins:AddSkin(id, name)
  local skin = SkinProto:New(id, name)
  self.skins[id] = skin
  if not self.defaultSkin then
    self.defaultSkin = id
  end
  return skin
end

function Skins:GetSkin(id)
  return self.skins[id or self.defaultSkin]
end

-- The style currently selected in the options panel.
function Skins:GetCurrentStyle()
  local skin = self:GetSkin()
  if not skin then
    return nil
  end
  local chosen = ZGV.db and ZGV.db.profile and ZGV.db.profile.skin
  return skin:GetStyle(chosen) or skin:GetStyle()
end

--------------------------------------------------------------------------
-- SkinData - the single accessor everything else uses
--------------------------------------------------------------------------

function Skins:SkinData(property)
  local style = self:GetCurrentStyle()
  if not style then
    return nil
  end
  return style[property]
end

-- convenience global, mirrors the modern addon's local helper
function ZGV.SkinData(property)
  return ZGV.Skins:SkinData(property)
end

--------------------------------------------------------------------------
-- Applying a style
--
-- Copies every declared value (including inherited ones) into db.profile,
-- which is where AlignFrame() and UpdateSkin() read them from.
--------------------------------------------------------------------------

-- Properties that are pure style bookkeeping and must not leak into profile.
local NOT_PROFILE = {
  id = true,
  name = true,
  skin = true,
  inheritedStyle = true,
  texturedir = true,
  displayname = true,
  selectable = true,
  OnApply = true,
}

local function collect(style, out)
  if not style then
    return
  end
  -- parent first, so the child overwrites it
  collect(rawget(style, 'inheritedStyle'), out)
  for k, v in pairs(style) do
    if not NOT_PROFILE[k] then
      out[k] = v
    end
  end
end

function Skins:Apply(styleid)
  local skin = self:GetSkin()
  if not skin then
    return
  end
  local style = skin:GetStyle(styleid)
  if not style then
    return
  end

  local values = {}
  collect(style, values)

  for k, v in pairs(values) do
    -- A style may supply a function for values that depend on other settings.
    if type(v) == 'function' then
      v = v()
    end
    if type(v) == 'table' then
      ZGV.db.profile[k] = CopyTable(v)
    else
      ZGV.db.profile[k] = v
    end
  end

  -- Let a style run arbitrary frame fixups if it really needs to.
  -- Prefer declaring data over writing an OnApply.
  local onapply = style.OnApply
  if type(onapply) == 'function' then
    onapply(style)
  end
end

--------------------------------------------------------------------------
-- Resolved value set for a style, used for profile defaults at load time.
--------------------------------------------------------------------------

function Skins:GetStyleValueSet(styleid)
  local out = {}
  local skin = self:GetSkin()
  if not skin then
    return out
  end
  collect(skin:GetStyle(styleid), out)
  -- Resolve dynamic values exactly as Apply() does. These are used as profile
  -- defaults, and AlignFrame can run before Apply() has ever executed (OnEnable
  -- calls ToggleFrame before UpdateSkin), so an unresolved function would reach
  -- SetPoint and raise a usage error on a fresh profile.
  for k, v in pairs(out) do
    if type(v) == 'function' then
      out[k] = v()
    end
  end
  return out
end

--------------------------------------------------------------------------
-- Options helper - builds the dropdown from whatever is registered,
-- so adding a style needs no edit to Options.lua.
--------------------------------------------------------------------------

function Skins:GetStyleValues()
  local values = {}
  local skin = self:GetSkin()
  if not skin then
    return values
  end
  for _, id in ipairs(skin.styleorder) do
    local style = skin.styles[id]
    -- styles marked selectable=false are shared bases, not user choices
    if rawget(style, 'selectable') ~= false then
      values[id] = style.displayname or style.name or id
    end
  end
  return values
end
