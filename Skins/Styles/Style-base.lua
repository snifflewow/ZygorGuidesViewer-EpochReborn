--[[
	Base layout shared by the four original colour skins.
	Not selectable itself - the colour styles inherit from it.
--]]

local ZGV = ZygorGuidesViewer
if not ZGV or not ZGV.Skins then
  return
end

local STYLE = ZGV.Skins:GetSkin('default'):AddStyle('base', 'Base')

STYLE.selectable = false

-- Window backdrop
STYLE.disableBackDrop = false
STYLE.bgfileback = 'Interface\\ChatFrame\\ChatFrameBackground'
STYLE.skinbacktopoff = 0
STYLE.Border_Title = true
STYLE.disableGuideAnim = false

-- Title bar buttons
STYLE.Boarder_Close_topright_offsetX = 5
STYLE.Boarder_Close_topright_offsetY = -2
STYLE.Boarder_Mini_topright_offsetX = -40
STYLE.Boarder_Mini_topright_offsetY = -5
STYLE.Boarder_Guide_topright_offsetX = -58
STYLE.Boarder_Guide_topright_offsetY = -19
STYLE.Boarder_Settings_anchor = 'TOPLEFT'
STYLE.Boarder_Settings_anchor_offsetX = 40
STYLE.Boarder_Settings_anchor_offsetY = -5
STYLE.Boarder_Lock_offsetX = 8
STYLE.Boarder_Lock_offsetY = -13

-- Border corners
STYLE.Boarder_topleft_offsetX = 28
STYLE.Boarder_topleft_offsetY = 11
STYLE.Boarder_topright_offsetX = 0
STYLE.Boarder_topright_offsetY = 11

-- Side borders
STYLE.Boarder_Left_TopLeft_X = -1
STYLE.Boarder_Left_TopLeft_Y = -85
STYLE.Boarder_Left_BottomRight_X = 9
STYLE.Boarder_Left_BottomRight_Y = 10
STYLE.Boarder_Right_TopRight_X = 1
STYLE.Boarder_Right_TopRight_Y = -35
STYLE.Boarder_Right_BottomLeft_X = -9
STYLE.Boarder_Right_BottomLeft_Y = 10

-- Step skipper. Anchor depends on whether the window grows upward.
STYLE.Skipper_xOffset = -23
STYLE.Skipper_yOffset = -27

-- The original code picked this from the resizeup setting. Kept as a function
-- so it is evaluated when the style is applied, not when the file loads.
STYLE.Skipper_anchor = function()
  return (ZGV.db and ZGV.db.profile and ZGV.db.profile.resizeup) and 'BOTTOMLEFT'
    or 'TOPLEFT'
end


-- Original Z_SKIN_HOOKS.Default: textures + skipper layout for the colour skins.
function STYLE:OnApply()
      ZygorGuidesViewerFrame_Border_Left:SetTexture(
        'Interface\\AddOns\\ZygorGuidesViewer\\Skin\\LeavesOfSteel_border'
      )
      ZygorGuidesViewerFrame_Skipper_Step:ClearAllPoints()
      ZygorGuidesViewerFrame_Skipper_Step:SetPoint(
        'TOP',
        ZygorGuidesViewerFrame_Skipper,
        'TOP',
        0,
        -20
      )
      ZygorGuidesViewerFrame_Skipper_PrevButton:ClearAllPoints()
      ZygorGuidesViewerFrame_Skipper_PrevButton:SetPoint(
        'TOP',
        ZygorGuidesViewerFrame_Skipper,
        'TOP',
        0,
        0
      )
      ZygorGuidesViewerFrame_Skipper_NextButton:ClearAllPoints()
      ZygorGuidesViewerFrame_Skipper_NextButton:SetPoint(
        'TOP',
        ZygorGuidesViewerFrame_Skipper_PrevButton,
        'BOTTOM',
        0,
        -13
      )
      ZygorGuidesViewerFrame_Border_Gear1:SetTexture(
        'Interface\\AddOns\\ZygorGuidesViewer\\Skin\\leavesofsteel_gear1'
      )
      ZygorGuidesViewerFrame_Border_Gear2:SetTexture(
        'Interface\\AddOns\\ZygorGuidesViewer\\Skin\\leavesofsteel_gear2'
      )
      ZygorGuidesViewerFrame_Border_Gear3:SetTexture(
        'Interface\\AddOns\\ZygorGuidesViewer\\Skin\\leavesofsteel_gear3'
      )
      ZygorGuidesViewerFrame_Border_Logo:SetTexture(ZGV.SKINDIR .. '\\zglogo')
end
