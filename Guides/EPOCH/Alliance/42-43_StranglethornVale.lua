local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Stranglethorn Vale (42-43)',
  {
    next = 'Leveling Guides\\Swamp of Sorrows (43-43)',
  },
  [[
step
Enter the building |goto Stormwind City,50.94,57.84,7 |walk
talk Frederick Stover##1298
buy Massive Longbow##11307 |n
.tip If you can afford it.
.tip It's a limited supply item, so it may not be for sale.
.tip You can't use it until level 42, but it's good to have waiting to use, and you can only buy it in Stormwind City and Ironforge.
.tip We will check vendors for it along the way, if it's not here right now.
.tip If you have better, skip this step.
Visit the Vendor |vendor Frederick Stover##1298 |goto Stormwind City 49.98,57.64 |q 1363 |future
|only if Hunter and itemcount(11307) == 0
step
talk Jasper Fel##1325
.tip Inside the building.
.tip Stock up on poisons.
.tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Jasper Fel##1325 |goto Stormwind City/0 78.32,58.97 |q 669
|only if Rogue
step
Enter the building |goto Stormwind City,55.29,68.12,10 |walk
talk Olivia Burnside##2455
.tip Inside the building.
.tip Collect these items from the bank.
collect Sample Elven Gem##4502 |goto Stormwind City 57.66,72.78 |q 669
collect Kravel's Scheme##5826 |goto Stormwind City 57.66,72.78 |q 1118
step
Enter the building |goto Stormwind City,41.16,63.63,10 |walk
talk Mazen Mac'Nadir##338
.tip Inside the building.
accept Mazen's Behest##1363 |goto Stormwind City 51.8,74.3
step
talk Acolyte Dellis##5386
.tip Upstairs inside the building.
turnin Mazen's Behest##1363 |goto Stormwind City 51.4,73.8
accept Mazen's Behest##1364 |goto Stormwind City 51.4,73.8
step
Run up the ramp and enter the building |goto Stormwind City,39.32,81.50,10 |only if walking
talk High Sorcerer Andromath##5694
.tip Upstairs inside the building.
accept Vital Supplies##1477 |goto Stormwind City 48.7,87.6
step
talk Kebok##737
.tip Upstairs inside the building, on the top floor.
accept Skullsplitter Tusks##209 |goto Stranglethorn Vale 27.00,77.13
step
talk Fleet Master Seahorn##2487
.tip Upstairs on the balcony of the building, on the top floor.
turnin Sunken Treasure##669 |goto Stranglethorn Vale 27.17,77.01
step
Enter the building |goto Stranglethorn Vale,27.08,77.62,7 |walk |only if not subzone("The Salty Sailor Tavern")
talk Crank Fizzlebub##2498
.tip Inside the building, on the bottom floor.
turnin Back to Booty Bay##1118 |goto Stranglethorn Vale 27.12,77.21
step
Watch the dialogue
talk Crank Fizzlebub##2498
.tip Inside the building, on the bottom floor.
accept Venture Company Mining##600 |goto Stranglethorn Vale 27.12,77.21
step
talk Innkeeper Skindle##6807
.tip Inside the building, on the bottom floor.
home Booty Bay |goto Stranglethorn Vale 27.04,77.31
step
talk Catelyn the Blade##2542
.tip Upstairs inside the building, on the middle floor.
turnin Ansirem's Key##603 |goto Stranglethorn Vale 27.28,77.53
accept "Pretty Boy" Duncan##610 |goto Stranglethorn Vale 27.28,77.53
step
Enter the building |goto Stranglethorn Vale,27.64,77.09,7 |walk
talk "Sea Wolf" MacKinley##2501
.tip Inside the building.
accept Scaring Shaky##606 |goto Stranglethorn Vale 27.78,77.07
step
Run up the ramp and cross the bridge |goto Stranglethorn Vale,28.16,76.54,10 |only if walking
Enter the building |goto Stranglethorn Vale,28.21,77.32,7 |walk
talk Drizzlik##2495
.tip Inside the building.
accept Excelsior##628 |goto Stranglethorn Vale 28.29,77.59
step
talk First Mate Crazz##2490
accept The Bloodsail Buccaneers##595 |goto Stranglethorn Vale 28.10,76.22
step
Enter the tunnel to leave Booty Bay |goto Stranglethorn Vale,28.00,73.46,15 |only if walking and subzone("Booty Bay")
kill "Pretty Boy" Duncan##2545
.tip Watch for respawns while you make you way here.	|only if hardcore
.tip Enemies tend to be bunched up at the camp.		|only if hardcore
collect Catelyn's Blade##4027 |q 610/1 |goto Stranglethorn Vale 27.38,69.41
step
click Bloodsail Correspondence##2083
turnin The Bloodsail Buccaneers##595 |goto Stranglethorn Vale 27.28,69.52
accept The Bloodsail Buccaneers##597 |goto Stranglethorn Vale 27.28,69.52
step
Enter the tunnel to enter Booty Bay |goto Stranglethorn Vale,29.56,72.51,15 |only if walking and not subzone("Booty Bay")
talk First Mate Crazz##2490
turnin The Bloodsail Buccaneers##597 |goto Stranglethorn Vale 28.10,76.21
accept The Bloodsail Buccaneers##599 |goto Stranglethorn Vale 28.10,76.21
step
Enter the building |goto Stranglethorn Vale,27.08,77.62,7 |walk
talk Catelyn the Blade##2542
.tip Upstairs inside the building, on the middle floor.
turnin "Pretty Boy" Duncan##610 |goto Stranglethorn Vale 27.28,77.53
accept The Curse of the Tides##611 |goto Stranglethorn Vale 27.28,77.53
step
talk Fleet Master Seahorn##2487
.tip Upstairs on the balcony of the building, on the top floor.
turnin The Bloodsail Buccaneers##599 |goto Stranglethorn Vale 27.17,77.01
step
Enter the tunnel to leave Booty Bay |goto Stranglethorn Vale,28.00,73.46,15 |only if walking and subzone("Booty Bay")
kill Elder Mistvale Gorilla##1557+
collect 5 Mistvale Giblets##3919 |q 606/1 |goto Stranglethorn Vale 31.72,67.03
You can find more around: |notinsticky
[33.79,64.66]
[32.18,59.97]
step
Follow the road to this location and follow the path |goto Stranglethorn Vale,38.57,40.68,100 |only if walking
kill 10 Jungle Stalker##687 |q 196/1 |goto Stranglethorn Vale 33.70,38.83
.tip Be careful to avoid Tethis.
.tip He looks like a level 43 elite blue raptor that walks around this area.
You can find more around: |notinsticky
[31.79,41.74]
[28.91,44.29]
[27.19,49.65]
step
Kill Venture Co. enemies around this area
.tip This area is dangerous.						|only if hardcore
.tip Venture Co. Tinkerers are ranged attackers that deal heavy damage.	|only if hardcore
.tip They also  may summon a companion to fight at their side.		|only if hardcore
.tip Enemies may run away in fear at low health here.			|only if hardcore
collect 10 Singing Blue Crystal##3917 |q 600/1 |goto Stranglethorn Vale 41.22,43.95
stickystart "Collect_Skullsplitter_Tusks"
step
Kill Skullspliter enemies around this area
.tip Only the Mystics and Witch Doctors will drop these.
.tip Watch for patrols and respawns while here.					|only if hardcore |notinsticky
.tip Skullsplitter Mystics are ranged attackers that may heal at low health.	|only if hardcore |notinsticky
.tip Enemies tend to bunch together.						|only if hardcore |notinsticky
.tip Enemies around here may run away in fear when at low health.		|only if hardcore |notinsticky
collect 4 Skullsplitter Fetish##2466 |q 205/1 |goto Stranglethorn Vale 42.69,36.60
You can find more around: |notinsticky
[45.93,32.79]
[47.39,39.42]
[45.33,42.07]
step
label "Collect_Skullsplitter_Tusks"
Kill Skullspliter enemies around this area
.tip Avoid the eastern-most area, it is much higher level.
.tip Watch for patrols and respawns while here.					|only if hardcore |notinsticky
.tip Skullsplitter Mystics are ranged attacks that may heal at low health.	|only if hardcore |notinsticky
.tip Enemies tend to bunch together.						|only if hardcore |notinsticky
.tip Enemies around here may run away in fear when at low health.		|only if hardcore |notinsticky
collect 18 Skullsplitter Tusk##1524 |q 209/1 |goto Stranglethorn Vale 42.69,36.60
You can find more around: |notinsticky
[45.93,32.79]
[47.39,39.42]
[45.33,42.07]
step
Follow the path up into the Rebel Camp |goto Stranglethorn Vale,39.04,5.15,30 |only if walking and not subzone("Rebel Camp")
talk Brother Nimetz##739
turnin Troll Witchery##205 |goto Stranglethorn Vale 37.83,3.56
step
Leave the Rebel Camp |goto Stranglethorn Vale,39.28,5.59,40 |only if walking and subzone("Rebel Camp")
talk Sir S. J. Erlgadin##718
accept Panther Mastery##193 |goto Stranglethorn Vale 35.55,10.55
|only if not hardcore
step
talk Hemet Nesingwary##715
turnin Raptor Mastery##196 |goto Stranglethorn Vale 35.66,10.81
accept Raptor Mastery##197 |goto Stranglethorn Vale 35.66,10.81 |only if not hardcore
step
kill Elder Saltwater Crocolisk##2635
.tip They are level 38 elites, but you should be able to kill one at this level.
.tip They share spawns with Saltwater Crocolisks, so kill those also, if you can't find any.
.tip If you have trouble, try to find someone to help you.
collect Elder Crocolisk Skin##4105 |q 628/1 |goto Stranglethorn Vale 29.86,25.63
Also check around: |notinsticky
[29.29,22.16]
[25.39,19.18]
step
NOTE:
Incoming Underwater Quest
.tip The quest has you going underwater in an area surrounded by elites.
.tip While it is easy to avoid them, they may still aggro.
.tip You may want to skip this quest if you don't have a potion of water breathing to use for it.
.tip If you do skip the next step, you will need to grind 3,150 xp to make up for it.
Click Here to Continue |confirm |q 611 |future
step
click Altar of the Tides##2576
.tip It's important to pay attention to your breath during this step.
.tip It looks like a stone table underwater.
.tip Try to swim down directly on top of the stone table to avoid aggroing the elite murlocs nearby.
.tip If you can't do it without aggroing any murlocs, you should be able to kill them one at a time at this level.
.tip If you have trouble, try to find someone to help you, or skip the quest and abandon it.
kill Gazban##2624
.tip He looks like a level 40 (non-elite) goblin that appears after you click the altar.
.tip Try to pull him away to fight him on the surface of the water, away from the elite murlocs.
collect Stone of the Tides##4034 |q 611/1 |goto Stranglethorn Vale 24.96,23.58
step
talk Crank Fizzlebub##2498
.tip Inside the building, on the bottom floor.
turnin Venture Company Mining##600 |goto Stranglethorn Vale 27.12,77.21
step
talk Krazek##773
.tip Upstairs inside the building, on the top floor.
accept Tran'rek##2864 |goto Stranglethorn Vale 26.94,77.21
step
talk Kebok##737
.tip Upstairs inside the building, on the top floor.
turnin Skullsplitter Tusks##209 |goto Stranglethorn Vale 27.00,77.13
step
talk Baron Revilgaz##2496
.tip Upstairs, on the balcony of the building, on the top floor.
turnin The Curse of the Tides##611 |goto Stranglethorn Vale 27.23,76.87
step
Run up the ramp and cross the bridge |goto Stranglethorn Vale,28.15,76.52,10 |only if walking
Enter the building |goto Stranglethorn Vale,28.21,77.33,7 |walk
talk Drizzlik##2495
.tip Inside the building.
turnin Excelsior##628 |goto Stranglethorn Vale 28.29,77.59
step
Enter the building |goto Stranglethorn Vale,28.11,75.00,10 |walk
talk Haren Kanmae##2839
.tip Inside the building.
.tip Buy enough ammo to fill your ammo bag, plus 8-10 extra stacks.
.tip You are about to have a long grind.
Visit the Vendor |vendor Haren Kanmae##2839 |goto Stranglethorn Vale 28.31,74.56 |q 606
|only if Hunter
step
talk "Shaky" Phillipe##2502
turnin Scaring Shaky##606 |goto Stranglethorn Vale 26.90,73.59
accept Return to MacKinley##607 |goto Stranglethorn Vale 26.90,73.59
step
Enter the tunnel to leave Booty Bay |goto Stranglethorn Vale,28.00,73.46,15 |only if walking and subzone("Booty Bay")
Kill enemies around this area
.tip This is a bit longer grind, but grinding some now will reduce the amount you have to grind all at once later.
.tip The next few levels will have a lot of grinding in them, so if you prefer, you could run dungeons to get to level 47, and then you shouldn't need to grind.
ding 43 |goto Stranglethorn Vale 31.72,67.03
You can find more around: |notinsticky
[33.79,64.66]
[32.18,59.97]
step
Enter the tunnel to enter Booty Bay |goto Stranglethorn Vale,29.56,72.51,15 |only if walking and not subzone("Booty Bay")
Enter the building |goto Stranglethorn Vale,27.64,77.09,7 |walk
talk "Sea Wolf" MacKinley##2501
.tip Inside the building.
turnin Return to MacKinley##607 |goto Stranglethorn Vale 27.78,77.07
]]
)
