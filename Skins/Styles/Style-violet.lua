local ZGV = ZygorGuidesViewer
if not ZGV or not ZGV.Skins then
  return
end

local STYLE = ZGV.Skins:GetSkin('default'):AddStyle('violet', 'Violet', 'base')

STYLE.displayname = '|cffee55ffViolet'
STYLE.texturedir = 'violet'
STYLE.skincolors = { text = { 0.95, 0.65, 1.0 }, back = { 0.17, 0.07, 0.20 } }

