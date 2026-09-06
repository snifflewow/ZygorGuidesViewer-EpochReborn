local ZGV = ZygorGuidesViewer
if not ZGV or not ZGV.Skins then
  return
end

local STYLE = ZGV.Skins:GetSkin('default'):AddStyle('green', 'Green', 'base')

STYLE.displayname = '|cff88ff88Green'
STYLE.texturedir = 'green'
STYLE.skincolors = { text = { 0.70, 1.00, 0.70 }, back = { 0.09, 0.17, 0.09 } }

