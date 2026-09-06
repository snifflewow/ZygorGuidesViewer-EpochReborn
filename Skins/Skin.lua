--[[
	Skins/Skin.lua

	Registers the "default" skin family. Styles are declared in Styles/,
	one file each, and listed in Skins.xml.
--]]

local ZGV = ZygorGuidesViewer
if not ZGV or not ZGV.Skins then
  return
end

local skin = ZGV.Skins:AddSkin('default', 'Default')

-- Fallback when the saved profile names a style that no longer exists.
-- Must not be 'base' - that is a shared layout, not a real skin.
skin.defaultStyle = 'modern'
