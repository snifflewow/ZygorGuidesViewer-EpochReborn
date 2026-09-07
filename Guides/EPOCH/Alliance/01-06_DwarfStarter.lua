local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end

ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Dwarf Starter (1-6)',
  {
    next = 'Leveling Guides\\Dun Morogh (6-13)',
  },
  [[
  startlevel 1
  step
  Example
]]
)
