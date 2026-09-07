local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  "Leveling Guides\\Un'Goro Crater (50-50)",
  {
    next = 'Leveling Guides\\Searing Gorge (50-51)',
  },
  [[
step
Follow the path down into Un'Goro Crater |goto Tanaris,27.04,56.57,40 |only if walking and not zone("Un'Goro Crater")
talk Torwa Pathfinder##9619
accept The Apes of Un'Goro##4289 |goto Un'Goro Crater 71.64,75.96
accept The Fare of Lar'korwi##4290 |goto Un'Goro Crater 71.64,75.96
stickystart "Accept_Willidens_Journal"
stickystart "Collect_Power_Crystals"
stickystart "Collect_UnGoro_Soil"
step
click A Wrecked Raft##161505
accept It's a Secret to Everybody##3844 |goto Un'Goro Crater 63.02,68.50
step
click A Small Pack##161504
.tip Underwater.
turnin It's a Secret to Everybody##3844 |goto Un'Goro Crater 63.12,69.02
accept It's a Secret to Everybody##3845 |goto Un'Goro Crater 63.12,69.02
step
click Fresh Threshadon Carcass##166863
.tip Avoid the elite t-rex that sometimes walks near this location.
collect Piece of Threshadon Carcass##11504 |q 4290/1 |goto Un'Goro Crater 68.75,56.66
step
Follow the path up into Marshal's Refuge |goto Un'Goro Crater,46.01,13.45,20 |only if walking and not subzone("Marshal's Refuge")
talk Muigin##9119
accept Muigin and Larion##4141 |goto Un'Goro Crater 42.94,9.64
step
Kill Bloodpetal enemies while heading south.
.tip Try to focus on killing the level 48-50 ones, the higher levels are dangerous.
.tip You only need 8 or so Bloodpetals right now. You'll get the rest on the way back.
.tip They look like walking plants.
collect 15 Bloodpetal##11316 |q 4141/1 |count 8 |goto Un'Goro Crater 71.46,38.72
.tip Watch for Devilsaur (large t-rex) patrols while around here.	|only if hardcore
You can find more around: |notinsticky
[66.08,35.13]
[69.26,24.59]
[55.87,34.69]
step
talk Torwa Pathfinder##9619
turnin The Fare of Lar'korwi##4290 |goto Un'Goro Crater 71.64,75.97
accept The Scent of Lar'korwi##4291 |goto Un'Goro Crater 71.64,75.97
step
kill Lar'korwi Mate##9683
.tip Stand on the pile of purple eggs to get it to appear.
collect 2 Ravasaur Pheromone Gland##11509 |q 4291/1 |goto Un'Goro Crater 67.32,73.05
You can find more eggs at: |notinsticky
[62.87,80.48]
[60.92,72.23]
[66.60,66.73]
step
talk Torwa Pathfinder##9619
turnin The Scent of Lar'korwi##4291 |goto Un'Goro Crater 71.63,75.97
accept The Bait for Lar'korwi##4292 |goto Un'Goro Crater 71.63,75.97
step
label "Collect_Power_Crystals"
click Power Crystal+
.tip They look clusters of red, yellow, green, or blue crystals on the ground around this area.
.tip They tend to be around the base of trees, or near the cliffs surrounding Un'Goro Crater.
.tip Kill enemies here and there as you search around, to continue gaining experience.
collect 7 Red Power Crystal##11186 |q 4284 |future |only if itemcount(11186) < 7
collect 7 Yellow Power Crystal##11188 |q 4284 |future |only if itemcount(11188) < 7
collect 7 Green Power Crystal##11185 |q 4284 |future |only if itemcount(11185) < 7
collect 7 Blue Power Crystal##11184 |q 4284 |future |only if itemcount(11184) < 7
|only if (itemcount(11186) < 7) or (itemcount(11188) < 7) or (itemcount(11185) < 7) or (itemcount(11184) < 7)
step
label "Collect_Bloodpetals"
Kill Bloodpetal enemies while heading back towards town.
.tip Try to focus on killing the level 48-50 ones, the higher levels are dangerous.
.tip They look like walking plants.
collect 15 Bloodpetal##11316 |q 4141/1 |goto Un'Goro Crater 71.46,38.72
.tip Watch for Devilsaur (large t-rex) patrols while around here.	|only if hardcore
You can find more around: |notinsticky
[66.08,35.13]
[69.26,24.59]
[55.87,34.69]
step
label "Collect_A_Mangled_Journal"
Kill enemies around this area
.tip Any enemy in Un'Goro Crater can drop the quest item.
.tip Watch for Devilsaur (large t-rex) patrols while around here.	|notinsticky |only if hardcore
collect A Mangled Journal##11116 |goto Un'Goro Crater 71.46,38.72 |q 3884 |future
You can find more around: |notinsticky
[66.08,35.13]
[69.26,24.59]
[55.87,34.69]
step
label "Accept_Willidens_Journal"
use A Mangled Journal##11116
accept Williden's Journal##3884
|only if itemcount(11116) > 0
step
Follow the path up into Marshal's Refuge |goto Un'Goro Crater,46.01,13.45,20 |only if walking and not subzone("Marshal's Refuge")
talk Muigin##9119
turnin Muigin and Larion##4141 |goto Un'Goro Crater 42.94,9.64
accept A Visit to Gregan##4142 |goto Un'Goro Crater 42.94,9.64
stickystop "Collect_UnGoro_Soil"
step
use A Small Pack##11107
collect Large Compass##11104 |q 3845/1
collect Curled Map Parchment##11105 |q 3845/2
collect Lion-headed Key##11106 |q 3845/3
step
Destroy This Item:
.tip It is no longer needed.
trash Faded Photograph##11108 |goto Un'Goro Crater 44.66,8.11
trash Heavy Throwing Dagger##3108 |goto Un'Goro Crater 44.66,8.11
step
talk Linken##8737
turnin It's a Secret to Everybody##3845 |goto Un'Goro Crater 44.66,8.11
accept It's a Secret to Everybody##3908 |goto Un'Goro Crater 44.66,8.11
step
talk Williden Marshal##9270
turnin Williden's Journal##3884 |goto Un'Goro Crater 43.95,7.14
step
Enter the cave |goto Un'Goro Crater,43.47,6.81,15 |walk |only if subzone("Marshal's Refuge") and not _G.IsIndoors()
talk J.D. Collie##9117
.tip Inside the cave.
accept Crystals of Power##4284 |goto Un'Goro Crater 41.92,2.70
step
talk J.D. Collie##9117
.tip Inside the cave.
turnin Crystals of Power##4284 |goto Un'Goro Crater 41.92,2.70
step
Destroy These Items:
.tip They are no longer needed.
trash Red Power Crystal##11186 |goto Un'Goro Crater 43.47,6.81
trash Yellow Power Crystal##11188 |goto Un'Goro Crater 43.47,6.81
trash Green Power Crystal##11185 |goto Un'Goro Crater 43.47,6.81
trash Blue Power Crystal##11184 |goto Un'Goro Crater 43.47,6.81
step
Leave the cave |goto Un'Goro Crater,43.47,6.81,15 |walk |only if subzone("Marshal's Refuge") and _G.IsIndoors()
talk Gryfe##10583
fpath Marshal's Refuge |goto Un'Goro Crater 45.23,5.84
step
label "Collect_UnGoro_Soil"
click Un'Goro Dirt Pile##157936+
.tip It can appear as a small pile on the ground.
.tip Any enemy in Un'Goro Crater can drop the quest item.
collect 20 Un'Goro Soil##11018 |q 3761 |future
.tip Be careful not to accidentally sell these to a vendor.
|sticky only
step
Enter the building |goto Tanaris,52.21,28.57,10 |walk
talk Gimblethorn##7799
.tip Inside the building.
.tip Collect these items from the bank.
collect 15 Silk Cloth##4306 |goto Tanaris 52.30,28.91 |q 4449 |future
collect Fool's Stout Report##5807 |goto Tanaris 52.30,28.91 |q 1122
collect Stoley's Bottle##9245 |goto Tanaris 52.30,28.91 |q 2874
collect Atal'ai Tablet Fragment##6287 |goto Tanaris 52.30,28.91 |q 1469
collect 12 Pupellyverbos Port##3900 |goto Tanaris 52.30,28.91 |q 580
step
talk Gimblethorn##7799
.tip Inside the building.
.tip Deposit these items into the bank.
bank Linken's Training Sword##11133 |goto Tanaris 52.30,28.91 |q 3908 |future
bank Un'Goro Soil##11018 |goto Tanaris 52.30,28.91 |q 3764 |future
.tip As many as you have.
bank Torwa's Pouch##11568 |goto Tanaris 52.30,28.91 |q 4292 |future
bank Bloodpetal##11316 |goto Tanaris 52.30,28.91 |q 4142 |future
step
talk Oglethorpe Obnoticus##7406
.tip In an upstairs building.
turnin Rescue OOX-17/TN!##648 |goto Stranglethorn Vale/0 28.01,76.43 |only if readyq(648)
turnin Rescue OOX-09/HL!##836 |goto Stranglethorn Vale/0 28.01,76.43 |only if readyq(836)
turnin Rescue OOX-22/FE!##2767 |goto Stranglethorn Vale/0 28.01,76.43 |only if readyq(2767)
step
Enter the building |goto Stranglethorn Vale,27.64,77.09,7 |walk
talk "Sea Wolf" MacKinley##2501
.tip Inside the building.
turnin Deliver to MacKinley##2874 |goto Stranglethorn Vale 27.78,77.07
step
Enter the building |goto Stranglethorn Vale,27.08,77.62,7 |walk
talk Whiskey Slim##2491
.tip Inside the building, on the bottom floor.
turnin Whiskey Slim's Lost Grog##580 |goto Stranglethorn Vale 27.14,77.45
step
talk Crank Fizzlebub##2498
.tip Inside the building, on the bottom floor.
turnin Report Back to Fizzlebub##1122 |goto Stranglethorn Vale 27.12,77.21
step
Enter the building |goto Stormwind City,53.44,64.92,10 |walk
talk Innkeeper Allison##6740
.tip Inside the building.
home Stormwind City |goto Stormwind City 52.62,65.70
step
Enter the building |goto Stormwind City,63.60,22.83,10 |walk
talk Brohann Caskbelly##5384
.tip Inside the building.
turnin Rhapsody's Tale##1469 |goto Stormwind City 64.33,20.66
step
talk Jasper Fel##1325
.tip Inside the building.
.tip Stock up on poisons.
.tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Jasper Fel##1325 |goto Stormwind City/0 78.32,58.97 |q 7723 |future
|only if Rogue
]]
)
