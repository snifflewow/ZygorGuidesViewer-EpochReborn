local ZGV = ZygorGuidesViewer
if not ZGV or not ZGV.Skins then
  return
end

local STYLE = ZGV.Skins:GetSkin('default'):AddStyle('blue', 'Blue', 'base')

STYLE.displayname = '|cff99aaffBlue'
STYLE.texturedir = 'blue'
STYLE.skincolors = { text = { 0.70, 0.80, 1.00 }, back = { 0.07, 0.10, 0.20 } }

