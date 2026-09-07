local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\The Hinterlands (49-50)',
  {
    next = 'Leveling Guides\\Tanaris (50-50)',
  },
  [[
step
NOTE:
Save Cloth in Your Bank as You Level
.tip Once you are close to reaching level 60, you will need 240 of each type of cloth.
.tip As you level and collect Runecloth naturally from killing enemies while following the guide, make sure you deposit the cloth into a bank whenever you are near one.
.tip This will give you about 40,000 quick and easy xp to help you get to level 60 faster in the longer later levels.
Click Here to Continue |confirm
|only if level < 60
step
Optional Route Change
.tip You can opt to do Maraudon soon instead of grinding.
.tip This is highly recommended due to the weapon quest reward. |only if Hunter or Rogue or Warrior
.tip This will mean slower leveling but it will be more fun and potentially give you gear upgrades.
.tip If you choose to do Maraudon, we will say when to accept and turnin dungeon quests that are worth doing in your route.
.tip We will also say when it is a good time to do the dungeon.
NOTE:
.tip This feature is currently experimental and may result in a full quest log. If this happens, please submit a feedback report so we can fix it!
.tip If you have a full quest log, we recommend abandoning any dungeon quests that can be shared by your party members later.
Click Here if you'd like to run Maraudon later |confirm Maraflag
Click Here if you'd prefer to grind |confirm
step
Enter the building |goto Tanaris,52.21,28.57,10 |walk
talk Gimblethorn##7799
.tip Inside the building.
.tip Collect these items from the bank.
collect 3 Roc Gizzard##6257 |goto Tanaris 52.30,28.91 |q 1452
collect 3 Ironfur Liver##6258 |goto Tanaris 52.30,28.91 |q 1452
collect 3 Groddoc Liver##6259 |goto Tanaris 52.30,28.91 |q 1452
step
click Marvon's Chest##149036
collect Stone Circle##10556 |q 3444/1 |goto The Barrens 62.50,38.54
step
talk Tynnus Venomsprout##5169
.tip Stock up on poisons.
.tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Tynnus Venomsprout##5169 |goto Ironforge 52.94,13.66 |q 2988 |future
|only if Rogue
step
Enter the building |goto Hillsbrad Foothills,49.30,55.47,10 |walk
talk Sarah Raycroft##3541
.tip Upstairs inside the building.
.tip Buy enough ammo to fill your ammo bag, plus 12-15 stacks.
.tip You will be questing for a while.
Visit the Vendor |vendor Sarah Raycroft##3541 |goto Hillsbrad Foothills 49.14,55.06 |q 2988 |future
|only if Hunter
step
Enter the building |goto Hillsbrad Foothills,50.45,58.55,10 |walk
talk Jaysin Lanyda##3542
.tip Upstairs inside the building.
.tip If you can afford it.
.tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Jaysin Lanyda##3542 |goto Hillsbrad Foothills 50.82,59.02 |q 2988 |future
|only if Mage
step
Enter the building |goto The Hinterlands,11.00,45.67,10 |walk
talk Gryphon Master Talonaxe##5636
.tip Inside the building.
accept Witherbark Cages##2988 |goto The Hinterlands 9.76,44.48
step
Leave the building |goto The Hinterlands,11.00,45.67,10 |walk |only if subzone("Aerie Peak") and _G.IsIndoors()
Enter the building |goto The Hinterlands,14.19,45.18,30 |walk |only if not subzone("Wildhammer Keep")
talk Fraggar Thundermantle##7884
.tip Inside the building.
accept Troll Necklace Bounty##2880 |goto The Hinterlands 14.83,44.56
stickystart "Collect_Wildkin_Feathers"
step
Leave the building |goto The Hinterlands,14.19,45.18,30 |walk |only if subzone("Wildhammer Keep")
Follow the path up |goto The Hinterlands,20.81,47.82,30 |only if walking
talk Rhapsody Shindigger##5634
turnin Rhapsody's Kalimdor Kocktail##1452 |goto The Hinterlands 26.94,48.59
step
Watch the dialogue
talk Rhapsody Shindigger##5634
accept Rhapsody's Tale##1469 |goto The Hinterlands 26.94,48.59
stickystart "Collect_Troll_Tribal_Necklaces"
step
click Third Witherbark Cage##144068
.tip Enemies may run away in fear around this area.	|only if hardcore
Check the Third Cage |q 2988/3 |goto The Hinterlands 31.99,57.38
step
click First Witherbark Cage##144066
.tip Enemies may run away in fear around this area.	|only if hardcore
Check the First Cage |q 2988/1 |goto The Hinterlands 23.28,58.75
step
click Second Witherbark Cage##144067
.tip Enemies may run away in fear around this area.	|only if hardcore
Check the Second Cage |q 2988/2 |goto The Hinterlands 23.13,58.76
step
label "Collect_Troll_Tribal_Necklaces"
Kill Witherbark enemies around this area
.tip They look like trolls.
.tip Witherbark enemies may run away in fear around this area.	|only if hardcore
collect 5 Troll Tribal Necklace##9259 |q 2880/1 |goto The Hinterlands 23.73,57.89
.tip Be careful not to accidentally sell these to a vendor.
You can find more around [32.03,58.00]
step
Enter the building |goto The Hinterlands,14.19,45.18,30 |walk |only if not subzone("Wildhammer Keep")
talk Fraggar Thundermantle##7884
.tip Inside the building.
turnin Troll Necklace Bounty##2880 |goto The Hinterlands 14.83,44.56
accept Skulk Rock Clean-up##2877 |goto The Hinterlands 14.83,44.56
stickystop "Collect_Wildkin_Feathers"
step
Leave the building |goto The Hinterlands,14.19,45.18,30 |walk |only if subzone("Wildhammer Keep")
Follow the path up |goto The Hinterlands,12.95,48.19,30 |only if walking
Enter the building at the top of the path |goto The Hinterlands,11.00,45.67,10 |walk
talk Gryphon Master Talonaxe##5636
.tip Inside the building.
turnin Witherbark Cages##2988 |goto The Hinterlands 9.76,44.48
accept The Altar of Zul##2989 |goto The Hinterlands 9.76,44.48		|only if not hardcore
stickystart "Collect_Wildkin_Feathers"
step
click Violet Tragan##141853+
.tip They look like large brown and white mushrooms underwater around this area.
.tip Despite how fun the tooltip sounds, don't eat it. It's for a quest.
collect Violet Tragan##8526 |q 2641/1 |goto The Hinterlands 41.01,59.77
step
Run up the stairs |goto The Hinterlands,47.74,66.71,30 |only if walking
.tip Clear enemies as you make your way up.	|only if hardcore
Search the Altar of Zul |q 2989/1 |goto The Hinterlands 48.85,68.45
.tip There are elite enemies at the top of the temple.
.tip Complete the quest goal and immediately run away to safety.
|only if not hardcore
stickystart "Kill_Jade_Oozes"
step
kill 10 Green Sludge##2655 |q 2877/1 |goto The Hinterlands 48.95,52.71
You can find more around: |notinsticky
[47.11,41.36]
step
label "Kill_Jade_Oozes"
kill 10 Jade Ooze##2656 |q 2877/2 |goto The Hinterlands 57.60,42.60
.tip These primarily spawn on the northeast hill.
You can find more around: |notinsticky
[47.11,41.36]
step
Kill enemies around this area
.tip Watch for respawns while in the area.	|only if hardcore
collect OOX-09/HL Distress Beacon##8704 |goto The Hinterlands 47.11,41.36 |q 485 |future
.tip If you reach level 50 and still haven't found it, skip the quest.
step
Kill enemies around this area
.tip You should already be pretty close to reaching level 50.
.tip You are about to go to Un'Goro Crater, and it will help to be level 50 already.
.tip If you've fallen behind, it's also fine to do a dungeon after this zone.
ding 50 |goto The Hinterlands 47.11,41.36 |q 2944
step
use the OOX-09/HL Distress Beacon##8704
accept Find OOX-09/HL!##485
|only if itemcount(8704) > 0
step
talk Homing Robot OOX-09/HL##7806
turnin Find OOX-09/HL!##485 |goto The Hinterlands 49.35,37.66
step
label "Collect_Wildkin_Feathers"
click Wildkin Feather##153239+
.tip They look large brown and white feathers on the ground around this area.
.tip They can be found around most of the Hinterlands, except in the eastern part.
.tip If you have trouble seeing them, reduce the "Ground Clutter" setting to "1" in the System > Graphics game settings menu.
collect 15 Wildkin Feather##10819 |q 3661/1 |goto The Hinterlands 15.76,53.78
You can find more around: |notinsticky
[22.17,55.01]
[28.43,54.20]
[33.90,48.74]
[33.03,43.66]
stickystart "Collect_Snapshot_Of_Gammerita"
step
Follow the path down |goto The Hinterlands,71.50,65.09,30 |only if walking and not subzone("The Overlook Cliffs")
click Pupellyverbos Port+
.tip They look like small dark blue bottles on the ground around this area.
.tip If you have trouble seeing them, reduce the "Ground Clutter" setting to "0" in the System > Graphics game settings menu.
.tip Be careful to avoid Gammmerita, it's the only turtle that will attack you.
.tip It looks like a blue turtle that walks around this area.
.tip Avoid the guards of the Horde town nearby.
collect 12 Pupellyverbos Port##3900 |q 580/1 |goto The Hinterlands 81.08,55.81
You can find more around: |notinsticky
[79.46,62.41]
[78.49,69.25]
[78.44,75.71]
step
label "Collect_Snapshot_Of_Gammerita"
use the Super Snapper FX##9328
.tip Use it on Gammerita.
.tip It looks like a blue turtle that walks around this area.
.tip Use it as far away from it as you can.
.tip Run away when it attacks you after using the item.
collect Snapshot of Gammerita##9330 |q 2944/1 |goto The Hinterlands 75.62,67.03
You can also find it around: |notinsticky
[75.62,67.03]
[80.79,55.59]
step
click Cortello's Treasure##2556
.tip Underwater, at the bottom of the waterfall.
turnin Cortello's Riddle##626 |goto The Hinterlands 80.81,46.81
|only if haveq(626)
step
Prepare for Maraudon
.tip It will be a good time to start Maraudon soon.
.tip We are heading there after turning in our quests in Tanaris.
.tip Start looking for a group.
|confirm
|only if guideflag("Maraflag")
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin
.tip Inside the tower. |only if Mage
.tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
.tip He patrols inside. |only if Priest
.tip In the basement. |only if Warlock
.tip Train your spells.
]]
)
