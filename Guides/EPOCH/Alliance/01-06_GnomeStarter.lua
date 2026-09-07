local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end

ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Gnome Starter (1-6)',
  {
    image = ZGV.IMAGESDIR .. 'Dun Morogh',
    condition_suggested = function()
      return raceclass('Gnome') and level <= 6
    end,
    condition_suggested_race = function()
      return raceclass('Gnome')
    end,
    condition_suggested_exclusive = true,
    next = 'Leveling Guides\\Dun Morogh (6-13)',
    hardcore = true,
  },
  [[
  startlevel 1
  step
  Example
]]
)
