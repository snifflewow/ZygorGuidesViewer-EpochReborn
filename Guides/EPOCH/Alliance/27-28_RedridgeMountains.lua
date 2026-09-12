local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Redridge Mountains (27-28)',
  {
    next = 'Leveling Guides\\Wetlands (28-29)',
  },
  [[
step
talk Guard Howe##903
accept Blackrock Bounty##128 |goto Redridge Mountains 31.54,57.85
|only if not hardcore
step
talk Marshal Marris##382  |goto Redridge Mountains 33.50,49.00
accept Eye for an Eye##26850
step
talk Verner Osgood##415
accept Howling in the Hills##126 |goto Redridge Mountains 30.97,47.27
.tip This requires you to complete the "A Baying of Gnolls" quest found in the "Redridge Mountains (18-20)" guide.
|only if not hardcore
step
Enter the building |goto Redridge Mountains,29.50,46.12,10 |walk
talk Bailiff Conacher##900
.tip Inside the building.
accept Solomon's Law##91 |goto Redridge Mountains 29.72,44.26
step
talk Amy Davenport##777  |goto Redridge Mountains 29.10,47.30
accept Clyde's Special Thread##26848
step
Leave the building |goto Redridge Mountains,29.50,46.12,10 |walk |only if subzone("Lakeshire Town Hall")
click Wanted: Lieutenant Fangore
accept Wanted: Lieutenant Fangore##180 |goto Redridge Mountains 26.75,46.47
|only if not hardcore and not Warlock
step
talk Gerald Crawley##3090
.tip Inside the building.
.tip Stock up on poisons.
.tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Gerald Crawley##3090 |goto Redridge Mountains/0 25.06,41.12 |q 34 |future
|only if Rogue
step
talk Martie Jainrose##342
accept An Unwelcome Guest##34 |goto Redridge Mountains/0 21.86,46.33
step
kill Bellygrub##345
.tip He looks like a darker brown boar that walks around this area.
collect Bellygrub's Tusk##3631 |q 34/1 |goto Redridge Mountains/0 15.68,49.32
step
talk Martie Jainrose##342
turnin An Unwelcome Guest##34 |goto Redridge Mountains/0 21.86,46.33
step
Follow the path up |goto Redridge Mountains/0,17.27,44.89,20 |only if walking
kill Yowler##518
.tip He walks between 2 of the gnolls camps.
.tip Watch for patrols and respawns while in the area. |only if hardcore
.tip Enemies around camp tend to pull in groups so be wary. |only if hardcore
.tip You can skip this quest, but you will need to grind extra xp if you do. |only if hardcore
collect Yowler's Paw##3614 |q 126/1 |goto Redridge Mountains/0 27.84,21.77
Also check around [34.17,25.09]
|only if not hardcore
step
Follow the path down |goto Redridge Mountains/0,89,70.9,15 |walk
talk Clyde Ranthal##2697  |goto Redridge Mountains 89.00,70.90
accept Gnoll Patrol##26849
stickystart "Collect_Shadowhide_Pendants"
step
kill Lieutenant Fangore##703
.tip He looks like a gnoll wearing a red robe, and carrying a long sword, that walks around this area.
.tip Try to kite him away, so you can fight him alone.
.tip If you have trouble, try to find someone to help you.
.tip Watch for patrols and respawns while in the area. |only if hardcore
.tip Enemies around camp tend to pull in groups so be wary. |only if hardcore
.tip You can skip this quest, but you will need to grind extra xp if you do. |only if hardcore
collect Fangore's Paw##3632 |q 180/1 |goto Redridge Mountains/0 78.93,38.46
Also check around [84.46,50.51]
|only if not hardcore
stickystart "gnoll_warriors"
step
kill 7 Shadowhide Brute##432 |q 26849/1 |goto Redridge Mountains/0 77.98,39.66
.tip Enemies around camps tend to pull in groups so be wary. |only if hardcore
.tip Watch for patrols and respawns here. |only if hardcore
step
label "gnoll_warriors"
kill 7 Shadowhide Warrior##568 |q 26849/2 |goto Redridge Mountains/0 77.98,39.66
.tip Enemies around camps tend to pull in groups so be wary. |only if hardcore
.tip Watch for patrols and respawns here. |only if hardcore
step
label "Collect_Shadowhide_Pendants"
Kill Shadowhide enemies around this area
.tip They look like gnolls.
.tip Enemies around camps tend to pull in groups so be wary. |only if hardcore
.tip Watch for patrols and respawns here. |only if hardcore
collect 10 Shadowhide Pendant##1075 |q 91/1 |goto Redridge Mountains/0 77.98,39.66
You can find more around: |notinsticky
[76.82,54.09]
[83.92,54.28]
step
Kill Shadowhide enemies around this area
.tip Enemies around camps tend to pull in groups so be wary. |only if hardcore
.tip Watch for patrols and respawns here. |only if hardcore
.tip Getting this far into level 27 will allow you to reach level 28 after turning in quests soon.
.tip You are about to return to Stormwind City soon, so it will be a good time to learn your level 28 abilities.
ding 27,37050 |goto Redridge Mountains/0 77.98,39.66
You can find more around: |notinsticky
[76.82,54.09]
[83.92,54.28]
|only if hardcore
step
talk Clyde Ranthal##2697
turnin Gnoll Patrol##26849 |goto Redridge Mountains/0 89,70.9
step
Follow the road |goto Redridge Mountains/0,47.63,27.69,40 |only if walking
Follow the path |goto Redridge Mountains/0,39.14,14.15,40 |only if walking
kill 15 Blackrock Champion##435 |q 128/1 |goto Redridge Mountains/0 33.21,6.88
kill 6 Blackrock Tracker##615 |q 26850/2  |goto Redridge Mountains 39.20,14.80
kill 6 Blackrock Summoner##4463 |q 26850/1 |goto Redridge Mountains 74.00,79.30
.tip Inside and outside the cave.
.tip They are mostly inside the cave, and the next guide step is inside the cave.
.tip Try to kill them mostly inside the cave.
|only if not hardcore
step
kill enemies around this area
.tip Getting this far into level 27 will allow you to reach level 28 after turning in quests soon.
.tip You are about to return to Stormwind City soon, so it will be a good time to learn your level 28 abilities.
ding 27,27900 |goto Redridge Mountains/0 33.21,6.88
|only if not hardcore
step
Follow the path inside the cave |goto Redridge Mountains/0,31.69,12.88,20 |walk
Continue following the path |goto Redridge Mountains/0,30.83,14.84,10 |walk
Follow the path |goto Redridge Mountains/0,28.45,13.64,10 |walk
talk Corporal Keeshan##349
.tip Inside the cave.
.tip This is an escort quest.
.tip If he's not here, someone may be escorting him.
.tip Wait until he respawns. |only if not hardcore
.tip Clear enemies that respawn as this quest can be overwhelming. |only if hardcore
accept Missing In Action##219 |goto Redridge Mountains/0 28.39,12.55 |noautoaccept
|only if not hardcore
step
Watch the dialogue
.tip Follow Corporal Keeshan and protect him as he walks.
.tip He walks out of the cave and all the way back to Lakeshire.
.tip When you reach the exit of the cave, pull the enemies to him, one group at a time.
.tip He eventually walks to this location.
Escort Corporal Keeshan Back to Redridge |q 219/1 |goto Redridge Mountains/0 33.41,48.51 |notravel
|only if not hardcore
step
talk Marshal Marris##382
turnin Missing In Action##219 |goto Redridge Mountains/0 33.51,48.97
turnin Eye for an Eye##26850
|only if not hardcore
step
talk Verner Osgood##415
turnin Howling in the Hills##126 |goto Redridge Mountains/0 30.97,47.27
|only if not hardcore
step
Enter the building |goto Redridge Mountains/0,29.49,46.13,10 |walk
talk Bailiff Conacher##900
.tip Inside the building.
turnin Solomon's Law##91 |goto Redridge Mountains/0 29.71,44.27
step
talk Magistrate Solomon##344
.tip Inside the building.
turnin Wanted: Lieutenant Fangore##180 |goto Redridge Mountains/0 29.99,44.46
|only if not hardcore
step
talk Amy Davenport##777  |goto Redridge Mountains 29.10,47.30
turnin Clyde's Special Thread##26848
step
Leave the building |goto Redridge Mountains/0,29.50,46.12,10 |walk |only if subzone("Lakeshire Town Hall")
talk Guard Howe##903
turnin Blackrock Bounty##128 |goto Redridge Mountains/0 31.54,57.86
|only if not hardcore
step
Fly to Stormwind
Enter the building |goto Stormwind City,55.29,68.13,10 |walk
talk Olivia Burnside##2455
.tip Inside the building.
.tip Put these items in the bank.
bank A Torn Journal Page##916 |goto Stormwind City 57.55,72.43 |q 74 |future |only if haveq(74) or completedq(74)
bank Bottle of Zombie Juice##1451 |goto Stormwind City 57.55,72.43 |q 159 |future |only if haveq(159) or completedq(159)
bank Skeleton Finger##2378
bank Vial of Spider Venom##1130
step
Enter the building |goto Stormwind City,50.95,57.84,7 |walk
talk Frederick Stover##1298
buy Sturdy Recurve##11306 |n
.tip If you can afford it.
.tip It may not be available to buy, since it's a limited supply item.
.tip If you have better, skip this step.
Visit the Vendor |vendor Frederick Stover##1298 |goto Stormwind City 49.98,57.64 |q 1078 |future
|only if Hunter and (itemcount(11306) == 0)
step
talk Collin Mauren##4078  |goto Stormwind City 53.00,86.60
accept Retrieval for Mauren##1078
step
Enter the building |goto Stormwind City,43.05,34.48,10 |walk
talk Brother Sarno##7917
.tip Inside the building.
accept Tinkmaster Overspark##2923 |goto Stormwind City 40.56,30.91
|only if Hunter or Mage
step
talk Thomas##4982
.tip He runs around inside the cathedral.
accept The Missing Diplomat##1274 |goto Stormwind City 41.26,30.60
|only if level <= 28
step
talk Duthorian Rall##6171
.tip Inside the building.
turnin The Tome of Valor##1652 |goto Stormwind City 39.81,29.80
|only if Paladin
step
talk Bishop Farthing##1212
.tip Inside the building.
turnin Seeking Wisdom##269 |goto Stormwind City 39.13,27.90
accept The Doomed Fleet##270 |goto Stormwind City 39.13,27.90
step
use An Old History Book##2794
accept An Old History Book##337	|goto Stormwind City 69.09,28.70
|only if itemcount(337) > 0 |goto Stormwind City 69.09,28.70
step
Enter the keep |goto Stormwind City 72.6,47.2
talk Bishop DeLavey##4960  |goto Stormwind City 80.20,44.10
.tip Inside the building.
turnin The Missing Diplomat##1274
accept The Missing Diplomat##1241
step
Leave the Petitioner's Chamber |goto Stormwind City,72.80,26.02,10 |walk |only if subzone("Petitioner's Chamber")
Follow the path |goto Stormwind City,72.72,22.92,10 |walk
Continue following the path |goto Stormwind City,70.17,11.34,10 |walk
talk Milton Sheaf##1440
.tip Inside the building.
turnin An Old History Book##337 |goto Stormwind City 74.17,7.49
accept Southshore##538 |goto Stormwind City 74.17,7.49
|only if haveq(337)
step
talk Jorgen##4959  |goto Stormwind City 76.30,85.10
turnin The Missing Diplomat##1241 
accept The Missing Diplomat##1242
step
talk Elling Trias##482  |goto Stormwind City 66.00,74.10
.tip Upstairs inside the building.
turnin The Missing Diplomat##1242
accept The Missing Diplomat##1243
step
bank Sealed Note to Watcher Backus##5960
fly to Wetlands
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 1242
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 1242
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock |q 1242
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 1242
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue |q 1242
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 1242
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 1242
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 1242
.tip Inside the tower. |only if Mage
.tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
.tip He patrols inside. |only if Priest
.tip In the basement. |only if Warlock
.tip Train your spells.
step
Leave the building |goto Stormwind City,43.05,34.48,10 |walk |only if subzone("Cathedral of Light")
talk Tinkmaster Overspark##7944
turnin Tinkmaster Overspark##2923 |goto Ironforge 69.54,50.32
|only if Hunter or Mage
step
Run up the stairs and enter the building |goto Ironforge,61.33,88.20,7 |walk
talk Buliwyf Stonehand##11865
.tip Inside the building.
.tip This will allow you to equip two-handed axes.
Train Two-Handed Axes |complete weaponskill("TH_AXE") > 0 |goto Ironforge 61.17,89.52
|only if Hunter
step
talk Bixi Wobblebonk##13084
.tip Inside the building.
.tip This will allow you to equip crossbows.
Train Crossbows |complete weaponskill("CROSSBOW") > 0 |goto Ironforge 62.23,89.62
|only if Hunter
step
Enter the building |goto Ironforge,30.43,26.37,7 |walk
talk Ginny Longberry##5151
.tip Inside the building.
.tip If you can afford it.
.tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Ginny Longberry##5151 |goto Ironforge 31.32,27.79 |q 289 |future
|only if Mage
step
Enter the building |goto Ironforge,53.24,7.33,7 |walk
talk Jubahl Corpseseeker##6382
.tip Inside the building.
.tip If you can afford them.
.tip Buy all of the Grimoires for spells that are upgrades for the spells you use with your pet.
.tip After buying them, make sure to use them in your bags to learn the spells.
Visit the Vendor |vendor Jubahl Corpseseeker##6382 |goto Ironforge 52.70,6.08 |q 289 |future
|only if Warlock
step
talk Jasper Fel##1325
.tip Inside the building.
.tip Stock up on poisons if needed.
.tip Skip this step if you don' tneed to.
.tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Jasper Fel##1325 |goto Stormwind City/0 78.32,58.97
|only if Rogue
]]
)
