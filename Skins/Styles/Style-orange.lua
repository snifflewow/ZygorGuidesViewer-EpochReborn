local ZGV = ZygorGuidesViewer
if not ZGV or not ZGV.Skins then
  return
end

local STYLE = ZGV.Skins:GetSkin('default'):AddStyle('orange', 'Orange', 'base')

STYLE.displayname = '|cffffbb00Orange'
STYLE.texturedir = 'orange'
STYLE.skincolors = { text = { 1.00, 0.80, 0.40 }, back = { 0.20, 0.12, 0.05 } }

