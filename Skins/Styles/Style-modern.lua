local ZGV = ZygorGuidesViewer
if not ZGV or not ZGV.Skins then
  return
end

local STYLE = ZGV.Skins:GetSkin('default'):AddStyle('modern', 'Modern', 'base')

STYLE.displayname = '|cffffffffModern'
STYLE.texturedir = 'modern'
STYLE.skincolors = { text = { 0.85, 0.90, 1.00 }, back = { 0.06, 0.07, 0.10 } }

-- Frameless look
STYLE.disableBackDrop = true
STYLE.disableGuideAnim = true
STYLE.Border_Title = false
STYLE.skinbacktopoff = 0
STYLE.bgfileback = 'Interface\\ChatFrame\\ChatFrameBackground'

-- Title bar buttons sit inside the top edge
STYLE.Boarder_Close_topright_offsetX = -15
STYLE.Boarder_Close_topright_offsetY = -13
STYLE.Boarder_Mini_topright_offsetX = -35
STYLE.Boarder_Mini_topright_offsetY = -13
STYLE.Boarder_Guide_topright_offsetX = -55
STYLE.Boarder_Guide_topright_offsetY = -27
STYLE.Boarder_Settings_anchor = 'TOPRIGHT'
STYLE.Boarder_Settings_anchor_offsetX = -75
STYLE.Boarder_Settings_anchor_offsetY = -13
STYLE.Boarder_Lock_offsetX = 10
STYLE.Boarder_Lock_offsetY = -13

STYLE.Boarder_topleft_offsetX = 0
STYLE.Boarder_topleft_offsetY = 5
STYLE.Boarder_topright_offsetX = 0
STYLE.Boarder_topright_offsetY = 0

STYLE.Skipper_anchor = 'CENTER'
STYLE.Skipper_xOffset = 0
STYLE.Skipper_yOffset = 0


-- Original Z_SKIN_HOOKS.Modern.
function STYLE:OnApply()
  
      -- The 50x28 frame is far larger than the visible icon and is anchored by its
      -- BOTTOM edge, so it reaches up behind the cog and mini buttons. Trim the
      -- hover area to the icon itself. (left, right, top, bottom)
      ZygorGuidesViewerFrame_Border_GuideButton:SetHitRectInsets(16, 16, 4, 9)

      ZygorGuidesViewerFrame_Border_Left:SetTexture(nil)
      -- New horizontal layout for skipper buttons
      ZygorGuidesViewerFrame_Skipper_PrevButton:ClearAllPoints()
      ZygorGuidesViewerFrame_Skipper_PrevButton:SetPoint(
        'LEFT',
        ZygorGuidesViewerFrame_Border_LockButton,
        'CENTER',
        19,
        0
      )
      ZygorGuidesViewerFrame_Skipper_Step:ClearAllPoints()
      ZygorGuidesViewerFrame_Skipper_Step:SetPoint(
        'CENTER',
        ZygorGuidesViewerFrame_Skipper_PrevButton,
        'CENTER',
        17,
        0
      )
      ZygorGuidesViewerFrame_Skipper_NextButton:ClearAllPoints()
      ZygorGuidesViewerFrame_Skipper_NextButton:SetPoint(
        'RIGHT',
        ZygorGuidesViewerFrame_Skipper_PrevButton,
        'CENTER',
        47,
        0
      )
      ZygorGuidesViewerFrame_Border_Gear1:SetTexture(nil)
      ZygorGuidesViewerFrame_Border_Gear2:SetTexture(nil)
      ZygorGuidesViewerFrame_Border_Gear3:SetTexture(nil)
      ZygorGuidesViewerFrame_Border_Logo:SetTexture(nil)

      -- Check which skin is active to set the correct scrollbar button textures
      -- Textures for the MODERN skin scrollbar
      local modernScrollAtlas = ZGV.SKINDIR .. '\\modern_scroll_buttons.tga' -- Make sure this is your filename

      -- Updated to use your 256px icon height
      local icon_height_ratio = 256 / 1024 -- (256px Icon Height / 1024px Image Height)

      -- UP ARROWS (Top row, arranged right-to-left on the image)
      ZygorGuidesViewerFrameScrollScrollBarScrollUpButton:SetNormalTexture(
        CreateTextureWithCoords(
          ZygorGuidesViewerFrameScrollScrollBarScrollUpButton,
          modernScrollAtlas,
          0.75,
          1.0,
          0.0,
          icon_height_ratio
        )
      ) -- Normal (Far right)
      ZygorGuidesViewerFrameScrollScrollBarScrollUpButton:SetPushedTexture(
        CreateTextureWithCoords(
          ZygorGuidesViewerFrameScrollScrollBarScrollUpButton,
          modernScrollAtlas,
          0.5,
          0.75,
          0.0,
          icon_height_ratio
        )
      ) -- Pushed
      ZygorGuidesViewerFrameScrollScrollBarScrollUpButton:SetDisabledTexture(
        CreateTextureWithCoords(
          ZygorGuidesViewerFrameScrollScrollBarScrollUpButton,
          modernScrollAtlas,
          0.25,
          0.5,
          0.0,
          icon_height_ratio
        )
      ) -- Disabled
      ZygorGuidesViewerFrameScrollScrollBarScrollUpButton:SetHighlightTexture(
        CreateTextureWithCoords(
          ZygorGuidesViewerFrameScrollScrollBarScrollUpButton,
          modernScrollAtlas,
          0.0,
          0.25,
          0.0,
          icon_height_ratio
        )
      ) -- Highlight (Far left)

      -- DOWN ARROWS (Bottom row, arranged right-to-left on the image)
      ZygorGuidesViewerFrameScrollScrollBarScrollDownButton:SetNormalTexture(
        CreateTextureWithCoords(
          ZygorGuidesViewerFrameScrollScrollBarScrollDownButton,
          modernScrollAtlas,
          0.75,
          1.0,
          1.0 - icon_height_ratio,
          1.0
        )
      ) -- Normal (Far right)
      ZygorGuidesViewerFrameScrollScrollBarScrollDownButton:SetPushedTexture(
        CreateTextureWithCoords(
          ZygorGuidesViewerFrameScrollScrollBarScrollDownButton,
          modernScrollAtlas,
          0.5,
          0.75,
          1.0 - icon_height_ratio,
          1.0
        )
      ) -- Pushed
      ZygorGuidesViewerFrameScrollScrollBarScrollDownButton:SetDisabledTexture(
        CreateTextureWithCoords(
          ZygorGuidesViewerFrameScrollScrollBarScrollDownButton,
          modernScrollAtlas,
          0.25,
          0.5,
          1.0 - icon_height_ratio,
          1.0
        )
      ) -- Disabled
      ZygorGuidesViewerFrameScrollScrollBarScrollDownButton:SetHighlightTexture(
        CreateTextureWithCoords(
          ZygorGuidesViewerFrameScrollScrollBarScrollDownButton,
          modernScrollAtlas,
          0.0,
          0.25,
          1.0 - icon_height_ratio,
          1.0
        )
      ) -- Highlight (Far left)
end
