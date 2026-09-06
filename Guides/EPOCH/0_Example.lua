local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Horde' then
  return
end

ZygorGuidesViewer:RegisterGuide(
  'Epoch\\Example (1-6)',
  {},
  [[
  startlevel 1
  step
  Example
]])
