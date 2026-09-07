local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Wetlands (28-29)',
  {
    next = 'Leveling Guides\\Stonetalon Mountains (29-29)',
  },
  [[
step
NOTE:
Save Cloth in Your Bank as You Level
.tip Once you are close to reaching level 60, you will need 240 of each type of cloth.
.tip As you level and collect Silk Cloth naturally from killing enemies while following the guide, make sure you deposit the cloth into a bank whenever you are near one.
.tip This will give you about 40,000 quick and easy xp to help you get to level 60 faster in the longer later levels.
Click Here to Continue |confirm
|only if level < 60
step
talk First Mate Fitzsimmons##1239
accept The Cursed Crew##289 |goto Wetlands 10.89,59.67
.tip This requires you to complete "The Third Fleet" quest found the "Wetlands (24-25)" guide.
step
Enter the building |goto Wetlands,10.79,59.76,10 |walk
talk Glorin Steelbrow##1217
.tip Inside the building.
turnin The Doomed Fleet##270 |goto Wetlands 10.59,60.59
step
talk Innkeeper Helbrek##1464
.tip He walks around inside the building.
home Deepwater Tavern |goto Wetlands 10.70,60.96
step
talk Archaeologist Flagongut##2911
.tip Upstairs inside the building.
accept The Absent Minded Prospector##943 |goto Wetlands 10.84,60.43
.tip You won't be able to accept this quest if you skipped any of the previous quests in the chain. |only if hardcore
step
Leave the building |goto Wetlands,10.79,59.76,10 |walk |only if subzone("Deepwater Tavern")
talk Harlo Barnaby##2097
accept Fall of Dun Modr##472 |goto Wetlands 10.85,55.90
step
Enter the building |goto Wetlands,10.30,56.30,15 |walk
Run up the stairs |goto Wetlands,9.80,57.77,7 |walk
talk Captain Stoutfist##2104
.tip Upstairs inside the building, in the large room.
accept War Banners##464 |goto Wetlands 9.86,57.49
step
Leave the building |goto Wetlands,10.29,56.31,15 |walk |only if subzone("Menethil Keep")
talk Tarrel Rockweaver##2096
.tip He walks around this area.
accept In Search of The Excavation Team##305 |goto Wetlands 11.50,52.14
step
click Damaged Crate##261
.tip Watch for murloc patrols in the area. |only if hardcore
.tip Enemies near the buildings tend to pull in groups so be careful. |only if hardcore
turnin Reclaiming Goods##281 |goto Wetlands 13.51,41.38
accept The Search Continues##284 |goto Wetlands 13.51,41.38
step
click Sealed Barrel##142151
.tip Watch for murloc patrols in the area. |only if hardcore
.tip Enemies near the buildings tend to pull in groups so be careful. |only if hardcore
turnin The Search Continues##284 |goto Wetlands 13.61,38.21
accept Search More Hovels##285 |goto Wetlands 13.61,38.21
step
click Half-buried Barrel##259
.tip Watch for murloc patrols in the area. |only if hardcore
.tip Enemies near the buildings tend to pull in groups so be careful. |only if hardcore
turnin Search More Hovels##285 |goto Wetlands 13.95,34.81
accept Return the Statuette##286 |goto Wetlands 13.95,34.81
stickystart "Kill_Cursed_Marines"
stickystart "Kill_Cursed_Sailors"
step
Enter the hole in the side of the ship |goto Wetlands,14.05,30.54,10 |walk
kill First Mate Snellig##1159
.tip Underwater, inside the sunken ship.
.tip This area is dangerous due to occasionally fast respawn rates and large aggro radius. |only if hardcore
.tip Try to pull mobs from nearby to avoid having to deal with multiple at once. |only if hardcore
.tip He's level 29, but you should be able to kill him at this level.
.tip If you have trouble, try to get someone to help you.
collect Snellig's Snuffbox##3619 |q 289/3 |goto Wetlands 14.08,30.01
step
label "Kill_Cursed_Marines"
kill 5 Cursed Marine##1158 |q 289/2 |goto Wetlands 14.22,28.53
.tip Enemies around this area are in close quarters, so plan for adds when fighting. |only if hardcore |notinsticky
You can find more around [14.82,24.62]
step
label "Kill_Cursed_Sailors"
kill 13 Cursed Sailor##1157 |q 289/1 |goto Wetlands 14.22,28.53
.tip Enemies around this area are in close quarters, so plan for adds when fighting. |only if hardcore |notinsticky
You can find more around [14.82,24.62]
step
kill Giant Wetlands Crocolisk##2089+
collect 6 Giant Crocolisk Skin##3348 |q 471/1 |goto Wetlands 16.57,28.25
You can find more around: |notinsticky
[20.92,21.92]
[27.08,21.65]
step
Kill Mosshide enemies around this area
.tip Enemies tend to pull in groups when around encampment like areas. |only if hardcore
.tip Watch for respawns while here. |only if hardcore
collect 9 Crude Flint##2611 |q 277/1 |goto Wetlands 31.41,31.20
You can find more around: |notinsticky
[36.76,28.88]
[45.65,33.83]
step
Enter Whelgar's Excavation Site |goto Wetlands,34.19,41.09,20 |only if walking
Follow the path up |goto Wetlands,37.11,42.98,20 |only if walking
talk Ormer Ironbraid##1078
.tip He walks around this area.
accept Ormer's Revenge##294 |goto Wetlands 38.18,50.89
step
Enter the cave |goto Wetlands,38.32,51.59,15 |walk
talk Merrin Rockweaver##1076
.tip Inside the cave.
turnin In Search of The Excavation Team##305 |goto Wetlands 38.91,52.34
accept In Search of The Excavation Team##306 |goto Wetlands 38.91,52.34
step
click Flagongut's Fossil##9630
.tip Inside the cave.
collect Flagongut's Fossil##5234 |q 943/2 |goto Wetlands 38.86,52.21
stickystart "Kill_Mottled_Screechers"
stickystart "Collect_Stone_Of_Relu"
step
Follow the path down |goto Wetlands,37.10,47.90,20 |only if walking and subzone("Whelgar's Excavation Site")
Leave Whelgar's Excavation Site |goto Wetlands,34.02,40.85,20 |only if walking and subzone("Whelgar's Excavation Site")
kill 10 Mottled Raptor##1020 |q 294/1 |goto Wetlands 29.12,44.15
.tip Watch for respawns while in the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[25.11,47.95]
[22.90,53.35]
step
label "Kill_Mottled_Screechers"
kill 10 Mottled Screecher##1021 |q 294/2 |goto Wetlands 29.12,44.15
.tip These enemies call for help with their health is low. |only if hardcore |notinsticky
.tip Pull them back away from other raptors when possible. |only if hardcore |notinsticky
.tip Watch for respawns while in the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[25.11,47.95]
[22.90,53.35]
step
Enter Whelgar's Excavation Site |goto Wetlands,34.19,41.09,20 |only if walking
Follow the path up |goto Wetlands,37.11,42.98,20 |only if walking
talk Ormer Ironbraid##1078
.tip He walks around this area.
turnin Ormer's Revenge##294 |goto Wetlands 38.18,50.89
accept Ormer's Revenge##295 |goto Wetlands 38.18,50.89
stickystop "Collect_Stone_Of_Relu"
step
Enter the cave |goto Wetlands,38.32,51.59,15 |walk
talk Prospector Whelgar##1077
.tip Inside the cave.
accept Uncovering the Past##299 |goto Wetlands 38.81,52.39
stickystart "Collect_Golm_Fragment"
stickystart "Collect_Modr_Fragment"
stickystart "Collect_Ados_Fragment"
stickystart "Kill_Mottled_Scytheclaws"
stickystart "Kill_Mottled_Razormaws"
stickystart "Collect_Stone_Of_Relu"
step
click Loose Soil##331
.tip It looks like a large pile of dark brown dirt on the ground.
.tip It randomly spawns in multiple locations around this area.
.tip It can also spawn up on the cliff next to the higher level Sarltooth raptor.
.tip If it does, try to get someone to help you, if you can't solo him.
collect Neru Fragment##2661 |q 299/4 |goto Wetlands 36.51,42.11
Also check: |notinsticky
Around [34.73,45.31]
Around [32.82,48.77]
Around [35.30,49.72]
Up the path at [31.90,50.17]
step
label "Collect_Golm_Fragment"
click Ancient Relic##333
.tip It looks like a large wide yellow vase sitting upright on the ground.
.tip It randomly spawns in multiple locations around this area. |notinsticky
.tip It can also spawn up on the cliff next to the higher level Sarltooth raptor. |notinsticky
.tip If it does, try to get someone to help you, if you can't solo him. |notinsticky
collect Golm Fragment##2660 |q 299/3 |goto Wetlands 36.51,42.11
Also check: |notinsticky
Around [34.73,45.31]
Around [32.82,48.77]
Around [35.30,49.72]
Up the path at [31.90,50.17]
step
label "Collect_Modr_Fragment"
click Ancient Relic##333
.tip It looks like a large tall red vase sitting upright on the ground.
.tip It randomly spawns in multiple locations around this area. |notinsticky
.tip It can also spawn up on the cliff next to the higher level Sarltooth raptor. |notinsticky
.tip If it does, try to get someone to help you, if you can't solo him. |notinsticky
collect Modr Fragment##2659 |q 299/2 |goto Wetlands 36.51,42.11
Also check: |notinsticky
Around [34.73,45.31]
Around [32.82,48.77]
Around [35.30,49.72]
Up the path at [31.90,50.17]
step
label "Collect_Ados_Fragment"
click Ancient Relic##333
.tip It looks like a large stone box container on the ground.
.tip It randomly spawns in multiple locations around this area. |notinsticky
.tip It can also spawn up on the cliff next to the higher level Sarltooth raptor. |notinsticky
.tip If it does, try to get someone to help you, if you can't solo him. |notinsticky
collect Ados Fragment##2658 |q 299/1 |goto Wetlands 36.51,42.11
Also check: |notinsticky
Around [34.73,45.31]
Around [32.82,48.77]
Around [35.30,49.72]
Up the path at [31.90,50.17]
step
label "Kill_Mottled_Scytheclaws"
kill 10 Mottled Scytheclaw##1022 |q 295/1 |goto Wetlands 34.73,45.31
.tip Watch for respawns while in the area. |only if hardcore |notinsticky
[32.82,48.77]
[35.30,49.72]
step
label "Kill_Mottled_Razormaws"
kill 10 Mottled Razormaw##1023 |q 295/2 |goto Wetlands 34.73,45.31
.tip Watch for respawns while in the area. |only if hardcore |notinsticky
[32.82,48.77]
[35.30,49.72]
step
Follow the path up |goto Wetlands,37.11,42.98,20 |only if walking
talk Ormer Ironbraid##1078
.tip He walks around this area.
turnin Ormer's Revenge##295 |goto Wetlands 38.18,50.89
accept Ormer's Revenge##296 |goto Wetlands 38.18,50.89
step
Enter the cave |goto Wetlands,38.32,51.59,15 |walk
talk Prospector Whelgar##1077
.tip Inside the cave.
turnin Uncovering the Past##299 |goto Wetlands 38.81,52.39
step
Follow the path down |goto Wetlands,37.10,47.90,20 |only if walking
Follow the path up |goto Wetlands,31.89,48.63,10 |only if walking
Continue up the path |goto Wetlands,31.90,50.17,15 |only if walking
kill Sarltooth##1353
.tip Up on the cliff.
.tip He looks like a level 29 blue raptor.
.tip He sometimes walks around in the valley below, with the other raptors, so if he's not here, check around.
collect Sarltooth's Talon##3638 |q 296/1 |goto Wetlands 33.26,51.52
step
Follow the path up |goto Wetlands,37.11,42.98,20 |only if walking
talk Ormer Ironbraid##1078
.tip He walks around this area.
turnin Ormer's Revenge##296 |goto Wetlands 38.18,50.89
.tip The Excavation Rod is a decent wand.	|only if Priest
step
label "Collect_Stone_Of_Relu"
Kill Mottled enemies around this area
.tip They look like raptors. |notinsticky
.tip Watch for respawns while in the area. |only if hardcore |notinsticky
collect Stone of Relu##5233 |q 943/1 |goto Wetlands 34.73,45.31
[32.82,48.77]
[35.30,49.72]
step
Leave Whelgar's Excavation Site |goto Wetlands,34.02,40.85,20 |only if walking and subzone("Whelgar's Excavation Site")
Kill Dragonmaw enemies around this area
collect 8 Dragonmaw War Banner##3337 |q 464/1 |goto Wetlands 42.95,41.12
You can find more around [45.71,44.48]
step
talk Rethiel the Greenwarden##1244
turnin Fire Taboo##277 |goto Wetlands 56.37,40.40
accept Blisters on The Land##275 |goto Wetlands 56.37,40.40
step
kill 12 Fen Creeper##1040 |q 275/1 |goto Wetlands 55.06,37.24 |count 6 |noordinal
.tip Kill count is 12 — this is intentional, it will be completed later.
.tip They are stealthed, usually near or in the water around this area.
.tip You will kill more of these later.
You can find more around: |notinsticky
[53.31,36.23]
[47.69,32.72]
[46.82,34.61]
[47.43,35.97]
[48.92,37.46]
[53.96,41.25]
[54.98,46.16]
step
click Musquash Root
collect Musquash Root##2784 |q 335/2 |goto Wetlands 64.76,75.29
step
talk Glorin Steelbrow##1217
.tip Inside the building.
accept Lightforge Iron##321 |goto Wetlands 10.59,60.59
.tip You may not be able to accept this quest if you skipped an earlier quest in the chain. |only if hardcore
step
talk Archaeologist Flagongut##2911
.tip Upstairs inside the building.
turnin The Absent Minded Prospector##943 |goto Wetlands 10.84,60.43
step
Leave the building |goto Wetlands,10.79,59.77,10 |walk |only if subzone("Deepwater Tavern")
talk First Mate Fitzsimmons##1239
turnin The Cursed Crew##289 |goto Wetlands 10.89,59.67
accept Lifting the Curse##290 |goto Wetlands 10.89,59.67
step
talk Karl Boran##1242
.tip He walks around this area.
turnin Return the Statuette##286 |goto Wetlands 8.31,58.54
step
talk James Halloran##2094
.tip He walks around this area.
turnin Apprentice's Duties##471 |goto Wetlands 8.51,55.71
step
Enter the building |goto Wetlands,10.30,56.30,15 |walk
Run up the stairs |goto Wetlands,9.80,57.77,7 |walk
talk Captain Stoutfist##2104
.tip Upstairs inside the building, in the large room.
turnin War Banners##464 |goto Wetlands 9.86,57.49
accept Nek'rosh's Gambit##465 |goto Wetlands 9.86,57.49 |only if not hardcore
step
Leave the building |goto Wetlands,10.30,56.30,15 |walk |only if subzone("Menethil Keep")
click Waterlogged Chest
turnin Lightforge Iron##321 |goto Wetlands 12.10,64.17
accept The Lost Ingots##324 |goto Wetlands 12.10,64.17
.tip You may not be able to accept this quest if you skipped an earlier quest in the chain. |only if hardcore
step
kill Bluegill Raider##1418+
.tip Underwater and on the land around this area.
collect 5 Lightforge Ingot##2702 |q 324/1 |goto Wetlands 11.19,64.73
You can find more around [9.28,70.11]
step
Enter the building |goto Wetlands,10.79,59.76,10 |walk
talk Glorin Steelbrow##1217
.tip Inside the building.
turnin The Lost Ingots##324 |goto Wetlands 10.59,60.59
accept Blessed Arm##322 |goto Wetlands 10.59,60.59
.tip You may not be able to accept this quest if you skipped an earlier quest in the chain. |only if hardcore
]]
)
