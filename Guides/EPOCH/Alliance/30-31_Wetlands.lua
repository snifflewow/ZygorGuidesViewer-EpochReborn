local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Wetlands (30-31)',
  {
    next = 'Leveling Guides\\Duskwood (31-32)',
  },
  [[
step
talk Dink##7312 |only if Mage
talk Regnus Thundergranite##5117 |only if Hunter
talk Briarthorn##5172 |only if Warlock
talk Bilban Tosslespanner##5114 |only if Warrior
talk Toldren Deepiron##5143 |only if Priest
talk Brandur Ironhammer##5149 |only if Paladin
talk Fenthwick##5167 |only if Rogue
trainer Dink##7312 |goto Ironforge/0 27.10,8.49 |only if Mage |q 306
trainer Regnus Thundergranite##5117 |goto Ironforge/0 69.86,82.94 |only if Hunter |q 306
trainer Briarthorn##5172 |goto Ironforge/0 50.33,5.70 |only if Warlock |q 306
trainer Bilban Tosslespanner##5114 |goto Ironforge/0 65.92,88.39 |only if Warrior |q 306
trainer Fenthwick##5167 |goto Ironforge/0 51.49,15.33 |only if Rogue |q 306
trainer Toldren Deepiron##5143 |goto Ironforge/0 25.19,10.76 |only if Priest |q 306
trainer Brandur Ironhammer##5149 |goto Ironforge/0 23.11,6.14 |only if Paladin |q 306
.tip Inside the building.
.tip Train your spells.
step
talk Tarrel Rockweaver##2096
.tip He walks around this area.
turnin In Search of The Excavation Team##306 |goto Wetlands 11.50,52.14
step
Run up the ramp to board the ship |goto Wetlands,16.01,23.09,7 |only if walking
kill Captain Halyndor##1160
.tip On the deck of the ship.
.tip You can body aggro him from the ramp on leading to the ship to avoid adds. |only if hardcore
.tip He periodically casts Spell Reflect, be careful. |only if Mage or Warlock or Priest
collect Intrepid Strongbox Key##2629 |q 290/1 |goto Wetlands 15.45,23.61
step
Swim underwater through the hole in the bottom of the ship |goto Wetlands,14.35,23.68,7 |walk
.tip Turn on enemy name plates with "CTRL+V" so you can see the enemies underwater. |only if hardcore
.tip Try to pull them one at a time until they cleared before entering the boat. |only if hardcore
.tip Fight enemies outside of the water so you reduce the chance of drowning. |only if hardcore
click Intrepid's Locked Strongbox##112948
.tip Underwater, at the bottom of the ship.
turnin Lifting the Curse##290 |goto Wetlands 14.37,24.02
accept The Eye of Paleth##292 |goto Wetlands 14.37,24.02
step
Swim out of the hole in the ship |goto Wetlands,14.31,23.69,7 |walk |only if subzone("The Lost Fleet")
kill 12 Fen Creeper##1040 |q 275/1 |goto Wetlands 18.45,27.72 |count 12 |noordinal
.tip They are stealthed, usually near or in the water around this area.
You can find more around: |notinsticky
[20.83,28.59]
[22.56,30.11]
[23.49,32.06]
[25.93,31.76]
[27.45,32.68]
[27.49,37.05]
[27.24,38.82]
step
Enter Whelgar's Excavation Site |goto Wetlands,34.19,41.09,20 |only if walking
Kill enemies around this area
.tip You should already be pretty close to reaching level 31.						|only if not  hardcore
.tip You are about to complete some difficult quests, where you have to kill 2 elite enemies.		|only if not  hardcore
.tip Being a level higher will help.									|only if not  hardcore
.tip You are about to skip a few quests, because they're too dangerous to solo.				|only if hardcore
.tip We are grinding to level 31 here to keep you on track.						|only if hardcore
ding 30,42000 |goto Wetlands 34.73,45.31										|only if not hardcore
ding 31 |goto Wetlands 34.73,45.31										|only if hardcore
[32.82,48.77]
[35.30,49.72]
step
Leave Whelgar's Excavation Site |goto Wetlands,34.02,40.85,20 |only if walking and subzone("Whelgar's Excavation Site")
Follow the path up |goto Wetlands,42.87,40.78,50 |only if walking
click Dragonmaw Catapult##1609
.tip Clear the enemies around the catapult before attempting to interact with it. |only if hardcore
.tip Be careful, a group of 6 enemies will appear and attack you.
.tip Run away immediately after turning in the quest.
turnin Nek'rosh's Gambit##465 |goto Wetlands 47.40,46.90
|only if not hardcore
step
talk Rethiel the Greenwarden##1244
turnin Blisters on The Land##275 |goto Wetlands 56.38,40.40
step
talk Longbraid the Grim##1071
turnin Fall of Dun Modr##472 |goto Wetlands 49.80,18.26
step
Optional Route Change
.tip You can opt to do Gnomeregan soon instead of grinding.
.tip This will mean slower leveling but it will be more fun and potentially give you gear upgrades.
.tip If you choose to do Gnomeregan, we will say when to accept and turnin dungeon quests that are worth doing in your route.
.tip We will also say when it is a good time to do the dungeon.
NOTE:
.tip This feature is currently experimental and may result in a full quest log. If this happens, please submit a feedback report so we can fix it!
.tip If you have a full quest log, we recommend abandoning any dungeon quests that can be shared by your party members later.
Click Here if you'd like to run Gnomeregan later |confirm Gnomerflag
Click Here if you'd prefer to grind |confirm
step
talk Rhag Garmason##1075
accept The Thandol Span##631 |goto Wetlands 49.92,18.21
|only if not hardcore
step
Walk onto the bridge |goto Wetlands,51.06,11.72,30 |only if walking
Enter the building and run down the stairs |goto Wetlands,51.36,8.11,7 |walk
click Ebenezer Rustlocke's Corpse
.tip Downstairs inside the building.
.tip There are 2 elite enemies inside the building, but you can fight them individually.
.tip You should be able to kill them by yourself, if you're careful.
.tip Be sure to regularly heal up when possible. |only if hardcore
.tip You will be attacked by two non-elite enemies after turning in the quest.
.tip If you have trouble, try to find someone to help you.
turnin The Thandol Span##631 |goto Wetlands 51.28,7.95
accept The Thandol Span##632 |goto Wetlands 51.28,7.95
|only if not hardcore
step
Run up the stairs |goto Wetlands,51.04,8.28,7 |c |q 632
|only if not hardcore
step
Run up the stairs and leave the building |goto Wetlands,50.69,8.00,7 |walk
talk Rhag Garmason##1075
turnin The Thandol Span##632 |goto Wetlands 49.92,18.22
accept The Thandol Span##633 |goto Wetlands 49.92,18.22
|only if not hardcore
step
Cross the bridge |goto Wetlands,51.11,11.58,30 |only if walking
Cross the hanging bridge |goto Arathi Highlands,45.96,88.11,15 |only if walking
click Cache of Explosives
Destroy the Cache of Explosives |q 633/1 |goto Arathi Highlands 48.73,88.05
|only if not hardcore
step
Cross the hanging bridge |goto Arathi Highlands,48.14,88.11,15 |only if walking
Cross the bridge |goto Arathi Highlands,45.47,89.24,30 |only if walking
talk Rhag Garmason##1075
turnin The Thandol Span##633 |goto Wetlands 49.92,18.22
accept Plea To The Alliance##634 |goto Wetlands 49.92,18.22
|only if not hardcore
step
talk Captain Nials##2700
turnin Plea To The Alliance##634 |goto Arathi Highlands 45.83,47.55
|only if not hardcore
step
talk Cedrik Prose##2835
fpath Refuge Pointe |goto Arathi Highlands 45.70,46.09
step
Follow the road and enter Hillsbrad Foothills |goto Arathi Highlands,20.17,29.54,40 |only if walking and not zone("Hillsbrad Foothills")
talk Darla Harris##2432
fpath Southshore |goto Hillsbrad Foothills 49.34,52.27
step
Prepare for Gnomeregan
.tip It will be a good time to start Gnomeregan soon.
.tip You should run it after arriving in Ironforge and getting all the quests, roughly 20 minutes.
.tip Start looking for a group.
|confirm
|only if guideflag("Gnomerflag")
step
Enter the building |goto Wetlands,10.79,59.77,10 |walk
talk Glorin Steelbrow##1217
.tip Inside the building.
turnin The Eye of Paleth##292 |goto Wetlands 10.58,60.59
accept Cleansing the Eye##293 |goto Wetlands 10.58,60.59
]]
)
