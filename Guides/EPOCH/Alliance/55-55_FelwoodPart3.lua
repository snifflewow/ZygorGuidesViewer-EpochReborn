local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Felwood Part 3 (55-55)',
  {
    next = 'Leveling Guides\\Winterspring (55-56)',
  },
  [[
step
Leave the cave |goto Un'Goro Crater,43.47,6.79,15 |walk |only if subzone("Marshal's Refuge") and _G.IsIndoors()
talk Greta Mosshoof##10922
turnin Dousing the Flames of Protection##5165 |goto Felwood 51.21,82.11
step
talk Jessir Moonbow##11019
turnin Rescue From Jaedenar##5203 |goto Felwood/0 51.35,82.01
step
Enter the building |goto Felwood,51.26,81.70,10 |walk
talk Eridan Bluewind##9116
.tip Inside the building.
turnin Linken's Memory##3942 |goto Felwood 51.35,81.51
accept Silver Heart##4084 |goto Felwood 51.35,81.51
stickystart "Collect_Toxic_Horror_Droplets"
stickystart "Collect_Silvery_Claws"
step
Kill Irontree enemies around this area
.tip They look like walking trees with no leaves.
collect Irontree Heart##11173 |q 4084/2 |goto Felwood 51.57,20.70
step
label "Collect_Toxic_Horror_Droplets"
kill Toxic Horror##7132+
.tip All around this green lake.
collect 3 Toxic Horror Droplet##12822 |q 5086/1 |goto Felwood 49.42,23.51
step
label "Collect_Silvery_Claws"
Kill enemies around this area
.tip Only enemies that look like bears and wolves will drop the quest item.
collect 11 Silvery Claws##11172 |q 4084/1 |goto Felwood 53.31,27.49
You can find more around: |notinsticky
[56.10,22.91]
[57.71,18.14]
[61.26,15.96]
]]
)
