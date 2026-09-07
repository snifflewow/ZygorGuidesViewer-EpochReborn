local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Dun Morogh (6-13)',
  {
    next = 'Leveling Guides\\Darkshore (13-17)',
  },
  [[
]]
)
