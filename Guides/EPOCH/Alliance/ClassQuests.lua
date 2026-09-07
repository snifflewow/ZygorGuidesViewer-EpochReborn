local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Class Quests\\Druid',
  {
    description = 'This guide will walk you through completing various Druid Class Quests.',
  },
  [[
step
ding 10
step
talk Denatharion##4218
accept Heeding the Call##5923 |goto Darnassus/0 34.77,7.36
|only if NightElf Druid
step
Follow the road |goto Darnassus/0 54.81,58.48 < 30 |only if walking
Enter Darnassus |goto Darnassus/0 36.06,54.39 < 20 |only if walking
Enter the building |goto Darnassus 35.52,10.72 < 15 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building.
turnin Heeding the Call##5923 |goto Darnassus 35.38,8.41
accept Moonglade##5921 |goto Darnassus 35.38,8.41
|only if NightElf Druid
step
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Moonglade##5921 |goto Moonglade 56.21,30.64
accept Great Bear Spirit##5929 |goto Moonglade 56.21,30.64
|only if NightElf Druid
step
Follow the path |goto Moonglade 42.47,34.44 < 20 |only if walking
talk Great Bear Spirit##11956
Select _"What do you represent, spirit?"_
Seek Out the Great Bear Spirit and Learn what it Has to Share with You About the Nature of the Bear |q 5929/1 |goto Moonglade 39.11,27.51
|only if NightElf Druid
step
Enter the building |goto Moonglade 56.13,30.98 < 15 |walk
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Great Bear Spirit##5929 |goto Moonglade 56.21,30.64
accept Back to Darnassus##5931 |goto Moonglade 56.21,30.64
|only if NightElf Druid
step
talk Sindrayl##10897
fpath Moonglade |goto Moonglade 48.10,67.34
|only if NightElf Druid
step
Enter the building |goto Darnassus 35.52,10.72 < 15 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building.
turnin Back to Darnassus##5931 |goto Darnassus 35.38,8.41
accept Body and Heart##6001 |goto Darnassus 35.38,8.41
|only if NightElf Druid
step
Enter the cave |goto Darkshore 43.06,45.55 < 15 |walk
use the Cenarion Moondust##15208
|tip Inside the cave.
kill Lunaclaw##12138
|tip This enemy is level 12. |only if hardcore
|tip The area is surrounded by level 13 enemies. |only if hardcore
|tip The Owlbear enemies around here aggro from quite a bit away, so it may be safe to level up to 11 or even 12 before attempting the quest. |only if hardcore
Face Lunaclaw and Earn the Strength of Body and Heart it Possesses |q 6001/1 |goto Darkshore 43.48,45.96
|only if NightElf Druid
step
Leave the cave |goto Darkshore 42.97,45.44 < 15 |walk
Enter the building |goto Darnassus 35.52,10.72 < 15 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building.
turnin Body and Heart##6001 |goto Darnassus 35.38,8.41
|only if NightElf Druid
step
ding 14
step
collect 5 Earthroot##2449 |q 6123 |future
|tip You can gather these with the Herbalism Profession.
|tip Refer to the Earthroot Gathering Guide to accomplish this.
|tip You can also purchase them from the Auction House. |only if not selfmade
step
Enter the building |goto Darnassus 35.52,10.72 < 7 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building.
accept Lessons Anew##6121 |goto Darnassus 35.38,8.41
|only if NightElf Druid
step
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Lessons Anew##6121 |goto Moonglade 56.21,30.64
accept The Principal Source##6122 |goto Moonglade 56.21,30.64
|only if NightElf Druid
step
Follow the road |goto Darkshore 40.33,46.35 < 30 |only if walking
Follow the path |goto Darkshore 46.41,32.14 < 30 |only if walking
Follow the path up |goto Darkshore 54.64,31.76 < 20 |only if walking
use the Empty Cliffspring Falls Sampler##15844
|tip At the entrance of the cave.
|tip There may be around 4 naga around the cave entrance. |only if hardcore
|tip Pull them carefully before attempting to fill the sampler. |only if hardcore
|tip Stormscale Sirens are ranged attackers that may heal. |only if hardcore
|tip Enemies around here may run away in fear when at low health. |only if hardcore
collect Filled Cliffspring Falls Sampler##15845 |q 6122/1 |goto Darkshore 54.93,33.32
|only if NightElf Druid
step
Follow the road |goto Darkshore 47.10,26.84 < 30 |only if walking
Follow the path |goto Darkshore 42.21,42.33 < 30 |only if walking
Enter the building |goto Darkshore 37.77,41.36 < 10 |walk
talk Alanndarian Nightsong##3702
|tip Inside the building.
turnin The Principal Source##6122 |goto Darkshore 37.69,40.66
accept Gathering the Cure##6123 |goto Darkshore 37.69,40.66
|only if NightElf Druid
step
Leave the building |goto Darkshore 37.77,41.36 < 10 |walk
Follow the road |goto Darkshore 40.04,46.77 < 30 |only if walking
click Lunar Fungal Bloom##177750+
|tip They look like clusters of small white-spotted mushrooms on the ground inside the small caves around this area.
|tip Watch for respawns while in the area. |only if hardcore
|tip Owlbear enemies around here have an abnormal aggro radius. |only if hardcore
collect 12 Lunar Fungus##15851 |q 6123/2 |goto Darkshore 43.07,45.55
You can find more small caves at: |notinsticky
[43.07,49.24]
[43.38,50.50]
[42.71,52.28]
[45.22,53.45]
[46.30,45.56]
[45.52,50.24]
|only if NightElf Druid
step
Follow the road |goto Darkshore 39.93,46.07 < 30 |only if walking
Enter the building |goto Darkshore 37.77,41.36 < 10 |walk
talk Alanndarian Nightsong##3702
|tip Inside the building.
turnin Gathering the Cure##6123 |goto Darkshore 37.69,40.66
accept Curing the Sick##6124 |goto Darkshore 37.69,40.66
|only if NightElf Druid
step
Leave the building |goto Darkshore 37.77,41.34 < 10 |walk
Follow the road |goto Darkshore 39.55,45.39 < 30 |only if walking
use the Curative Animal Salve##15826
|tip Use it on Sickly Deer around this area.
|tip They look like green diseased deer in areas with trees.
|tip They are spread out all throughout Darkshore.
Cure #10# Sickly Deer |q 6124/1 |goto Darkshore 41.51,46.08
|only if NightElf Druid
step
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Curing the Sick##6124 |goto Moonglade 56.21,30.64
accept Power over Poison##6125 |goto Moonglade 56.21,30.64
|only if NightElf Druid
step
Enter the building |goto Darnassus 35.52,10.72 < 7 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building.
turnin Power over Poison##6125 |goto Darnassus 35.38,8.41
|only if NightElf Druid
step
ding 16
step
Enter the building |goto Darnassus 35.49,10.63 < 7 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building.
accept A Lesson to Learn##26 |goto Darnassus 35.37,8.39
|only if NightElf Druid
step
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin A Lesson to Learn##26 |goto Moonglade 56.21,30.64
accept Trial of the Lake##29 |goto Moonglade 56.21,30.64
|only if NightElf Druid
step
click Bauble Container
|tip It looks like a wicker basket vase on the ground underwater.
|tip They spawn randomly, so you may have to search around this area.
|tip Don't linger in the water for any reason. |only if hardcore
collect Shrine Bauble##15877 |goto Moonglade 54.33,55.65 |q 29 |future
|only if NightElf Druid
step
use the Shrine Bauble##15877
Complete the Trial of the Lake |q 29/1 |goto Moonglade 35.92,41.38
|only if NightElf Druid
step
talk Tajarri##11799
turnin Trial of the Lake##29 |goto Moonglade 36.51,40.11
accept Trial of the Sea Lion##272 |goto Moonglade 36.51,40.11
|only if NightElf Druid
step
Follow the road |goto Darkshore 40.23,46.41 < 30 |only if walking
Follow the path |goto Darkshore 48.43,24.86 < 30 |only if walking
click Strange Lockbox
|tip Underwater.
|tip If you fight enemies around here, make sure you do so above water. |only if hardcore
collect Half Pendant of Aquatic Agility##15883 |goto Darkshore 48.87,11.32 |q 272
|only if NightElf Druid
step
click Strange Lockbox
|tip Underwater.
|tip If you fight enemies around here, make sure you do so above water. |only if hardcore
|tip You should wait until you quest into Loch Modan to do this portion of the quest. |only if hardcore
collect Half Pendant of Aquatic Endurance##15882 |goto Westfall 17.87,33.11 |q 272
|only if NightElf Druid
step
use the Half Pendant of Aquatic Agility##15883
collect Pendant of the Sea Lion##15885 |q 272/1 |goto Moonglade 35.92,41.42
|only if NightElf Druid
step
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Trial of the Sea Lion##272 |goto Moonglade 56.21,30.64
accept Aquatic Form##5061 |goto Moonglade 56.21,30.64
|only if NightElf Druid
step
Enter the building |goto Darnassus 35.49,10.63 < 7 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building.
turnin Aquatic Form##5061 |goto Darnassus 35.37,8.39
|only if NightElf Druid
step
ding 52
step
Enter the building |goto Darnassus 35.52,10.72 < 15 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building.
accept Torwa Pathfinder##9063|goto Darnassus 35.38,8.41
|only if NightElf Druid
step
talk Torwa Pathfinder##9619
turnin Torwa Pathfinder##9063 |goto Un'Goro Crater 71.63,75.96
accept Bloodpetal Poison##9052 |goto Un'Goro Crater 71.63,75.96
|only if NightElf Druid
step
Kill Gorishi enemies around this area
|tip Gorishi Workers may call for help when at low health. |only if hardcore |notinsticky
|tip Watch for patrols and respawns while in the cave. 	|only if hardcore |notinsticky
collect 8 Gorishi Sting##22435 |q 9052/1 |goto Un'Goro Crater 50.40,78.60
|only if NightElf Druid
step
click Bloodcap
|tip They look like vines entwined in a ball.
|tip They are all over Un'Goro Crater.
collect 8 Bloodcap##22434 |q 9052/2 |goto Un'Goro Crater 71.90,57.40
You Can Find More Around [53.50,14.90]
[34.60,30.60]
|only if NightElf Druid
step
talk Torwa Pathfinder##9619
turnin Bloodpetal Poison##9052 |goto Un'Goro Crater 71.63,75.96
accept Toxic Test##9051 |goto Un'Goro Crater 71.63,75.96
|only if NightElf Druid
step
use the Devilsaur Barb##22432
|tip Use it on roaming Devilsaur around Un'Goro Crater.
|tip Root the Devisaur before trying to use the Barb and run away after you accomplish this. |only if hardcore
Stab a Devilsaur with the Barb |q 9051/1 |goto Un'Goro Crater 67.31,33.89
|only if NightElf Druid
step
talk Torwa Pathfinder##9619
turnin Toxic Test##9051 |goto Un'Goro Crater 71.63,75.96
accept A Better Ingredient##9053 |goto Un'Goro Crater 71.63,75.96
|only if NightElf Druid
step
_NOTE:_
Incoming Dungeon Step
|tip The next couple of steps will be taking you to the Sunken Temple dungeon.
|tip You will need a group to complete the dungeon as well as the quest.
|tip If you don't have a group, wait until you do before continuing.
Click Here to Continue |confirm |q 9053
|only if NightElf Druid and hardcore
step
Run up the stairs |goto Swamp of Sorrows/0 69.36,56.89 < 7 |walk
Enter the building and swim under the water |goto Swamp of Sorrows/0 70.54,49.78 < 7 |walk
Run down the stairs |goto Swamp of Sorrows/0 72.69,42.22 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 75.69,45.78 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 78.62,47.47 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 80.22,49.62 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 81.33,42.38 < 7 |walk
Run down the stairs |goto Swamp of Sorrows/0 78.86,40.74 < 7 |walk
Run down the ramp |goto Swamp of Sorrows/0 76.85,38.82 < 7 |walk
Enter The Temple of Atal'Hakkar Dungeon with Your Group |goto The Temple of Atal'Hakkar/0 0.00,0.00 < 500 |c |q 9053 |future
|only if NightElf Druid
step
Inside the Temple of Atal'Hakkar Dungeon:
kill Atal'alarion##8580
|tip Refer to the Temple of Atal'Hakkar Dungeon Guide to accomplish that.
collect Putrid Vine##22444 |q 9053/1
|only if NightElf Druid
step
Leave the Temple of Atal'Hakkar Dungeon
Click Here to Continue |confirm |q 9053 |future
|only if NightElf Druid
step
talk Torwa Pathfinder##9619
turnin A Better Ingredient##9053 |goto Un'Goro Crater 71.63,75.96
|only if NightElf Druid
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Class Quests\\Priest',
  {
    description = 'This guide will walk you through completing various Priest Class Quests.',
  },
  [[
step
ding 10
step
Enter the building |goto Dun Morogh 46.95,52.05 < 7 |walk
talk Maxan Anvol##1226
|tip Inside the building.
accept Desperate Prayer##5637 |goto Dun Morogh 47.34,52.18
|only if Dwarf Priest
step
Enter the building |goto Stormwind City 43.04,34.51 < 7 |walk
talk High Priestess Laurena##376
|tip Inside the building.
turnin Desperate Prayer##5637 |goto Stormwind City 38.58,26.02
|only if Dwarf Priest
step
Enter the building |goto Elwynn Forest 42.95,65.64 < 7 |walk
talk Priestess Josetta##377
|tip Upstairs inside the building.
accept Desperate Prayer##5637 |goto Elwynn Forest 43.29,65.72
|only if Human Priest
step
Enter the building |goto Stormwind City 43.04,34.51 < 7 |walk
talk High Priestess Laurena##376
|tip Inside the building.
turnin Desperate Prayer##5637 |goto Stormwind City 38.58,26.02
|only if Human Priest
step
Enter the building |goto Teldrassil 55.76,57.24 < 7 |walk
talk Laurna Morninglight##3600
|tip Inside the building.
accept Returning Home##5629 |goto Teldrassil 55.57,56.75
|only if NightElf Priest
step
talk Priestess Alathea##11401
|tip Upstairs inside the building.
turnin Returning Home##5629 |goto Darnassus 39.53,81.18
|only if NightElf Priest
step
ding 20
step
Enter the building |goto Stormwind City 43.04,34.51 < 7 |walk
talk High Priestess Laurena##376
|tip Inside the building.
accept A Lack of Fear##5647 |goto Stormwind City 38.58,26.02
|only if Dwarf Priest
step
talk High Priest Rohan##11406
|tip Inside the building.
turnin A Lack of Fear##5647 |goto Ironforge 24.72,8.14
|only if Dwarf Priest
step
talk High Priest Rohan##11406
|tip Inside the building.
accept Arcane Feedback##5676
|only if Human Priest
step
Enter the building |goto Stormwind City 43.04,34.51 < 7 |walk
talk High Priestess Laurena##376
|tip Inside the building.
turnin Arcane Feedback##5676 |goto Stormwind City 38.58,26.02
|only if Human Priest
step
Enter the building |goto Stormwind City 43.04,34.51 < 7 |walk
talk High Priestess Laurena##376
|tip Inside the building.
accept Elune's Grace##5673 |goto Stormwind City 38.58,26.02
|only if NightElf Priest
step
talk Priestess Alathea##11401
|tip Upstairs inside the building.
turnin Elune's Grace##5673 |goto Darnassus 39.53,81.18
|only if NightElf Priest
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Class Quests\\Warrior',
  {
    description = 'This guide will walk you through completing various Warrior Class Quests.',
  },
  [[
step
ding 10
step
talk Lyria Du Lac##913
accept A Warrior's Training##1638 |goto Elwynn Forest 41.09,65.77 |or
'|complete completedq(1679) |or
|only if Human Warrior
step
Enter the building |goto Stormwind City 71.60,39.93 < 7 |walk
talk Harry Burlguard##6089
|tip Inside the building.
turnin A Warrior's Training##1638 |goto Stormwind City 74.25,37.26
accept Bartleby the Drunk##1639 |goto Stormwind City 74.25,37.26 |or
'|complete completedq(1678) |or
|only if Human Warrior
step
talk Bartleby##6090
|tip He walks around this area inside the building.
turnin Bartleby the Drunk##1639 |goto Stormwind City 73.83,37.17
accept Beat Bartleby##1640 |goto Stormwind City 73.83,37.17 |or
'|complete completedq()
|tip He will attack you immediately after you accept this quest.
|only if Human Warrior
step
talk Bartleby##6090
|tip He walks around this area inside the building.
turnin Beat Bartleby##1640 |goto Stormwind City 73.83,37.17
accept Bartleby's Mug##1665 |goto Stormwind City 73.83,37.17
|only if Human Warrior
step
talk Harry Burlguard##6089
|tip Inside the building.
turnin Bartleby's Mug##1665 |goto Stormwind City 74.25,37.26
|only if Human Warrior
step
talk Granis Swiftaxe##1229
|tip Inside the building.
accept Muren Stormpike##1679 |goto Dun Morogh 47.36,52.65 |or
'|complete completedq(1638) |or
|only if (Dwarf Warrior) or (Gnome Warrior)
step
talk Muren Stormpike##6114
|tip Upstairs inside the building.
turnin Muren Stormpike##1679 |goto Ironforge 70.78,90.27
accept Vejrek##1678 |goto Ironforge 70.78,90.27 |or
'|complete completedq(1665) |or
|only if (Dwarf Warrior) or (Gnome Warrior)
step
Follow the path up |goto Dun Morogh 27.97,56.18 < 20 |only if walking
kill Vejrek##6113
|tip Inside the hut.
collect Vejrek's Head##6799 |q 1678/1 |goto Dun Morogh 27.83,57.95 |or
'|complete completedq(1665)
|only if (Dwarf Warrior) or (Gnome Warrior)
step
talk Muren Stormpike##6114
|tip Upstairs inside the building.
turnin Vejrek##1678 |goto Ironforge/0 70.78,90.29 |or
'|complete completedq(1665)
|only if (Dwarf Warrior) or (Gnome Warrior)
step
talk Kyra Windblade##3598
accept Elanaria##1684 |goto Teldrassil 56.22,59.19
|only if NightElf Warrior
step
talk Elanaria##4088
turnin Elanaria##1684 |goto Darnassus 57.29,34.61
accept Vorlus Vilehoof##1683 |goto Darnassus 57.29,34.61
|only if NightElf Warrior
step
Follow the path |goto Teldrassil 48.78,61.64
Follow the path up |goto Teldrassil 49.02,63.24
Continue up the path |goto Teldrassil 47.98,64.47
kill Vorlus Vilehoof##6128
collect Horn of Vorlus##6805 |q 1683/1 |goto Teldrassil 47.26,63.52
|only if NightElf Warrior
step
talk Elanaria##4088
turnin Vorlus Vilehoof##1683 |goto Darnassus 57.29,34.61
|only if NightElf Warrior
step
ding 30
step
_NOTE:_
Incoming Difficult Quest
|tip You're going to be tasked with surviving the Affray, which is a combat trial.
|tip You'll be tasked with killing waves of enemies with very little downtime afforded in between.
|tip If possible, you may want to get help for this.
Click Here to Continue |confirm |q 1718 |future
|only if Warrior and hardcore
step
Enter the building |goto Stormwind City 77.97,48.19 < 7 |walk
talk Wu Shen##5479
|tip Upstairs inside the building.
accept The Islander##1718 |goto Stormwind City 78.68,45.80
|only if Warrior
step
talk Klannoc Macleod##6236
turnin The Islander##1718 |goto The Barrens 68.62,49.17
accept The Affray##1719 |goto The Barrens 68.62,49.17
|only if Warrior
step
Step on the Grate to Begin the Affray |q 1719/1 |goto The Barrens 68.61,48.72
|only if Warrior
step
kill Affray Challenger##6240+
|tip You will have to kill six of them before Big Will will appear.
|tip They will fight them one at a time.
|tip Avoid using AoE abilities as they may aggro the other affray contestants. |only if hardcore
|tip When you defeat an enemy, don't stand near the grate or it will force the next opponent. |only if hardcore
|tip Eat or Bandage after each opponent. |only if hardcore
|tip Step back after each opponent spawns. |only if hardcore
kill Big Will##6238 |q 1719/2 |goto The Barrens 68.61,48.72
|tip It may take a while before he appears.
|only if Warrior
step
talk Klannoc Macleod##6236
turnin The Affray##1719 |goto The Barrens 68.62,49.17
|only if Warrior
step
ding 38
step
collect 8 Liferoot##3357 |q 1712 |future
|tip If you have the Herbalism profession, you can gather these.
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House. |only if not selfmade
|only if Warrior
step
talk Klannoc Macleod##6236
accept The Windwatcher##1791 |goto The Barrens 68.62,49.17
|only if Warrior
step
Follow the path |goto Hillsbrad Foothills 70.63,10.06
talk Bath'rah the Windwatcher##6176
turnin The Windwatcher##1791 |goto Alterac Mountains 80.50,66.92
accept Cyclonian##1712 |goto Alterac Mountains 80.50,66.92
|only if Warrior
step
kill Burning Exile##2760
collect 8 Burning Charm##4479 |q 1712 |future |goto Arathi Highlands 26.60,31.80
|only if Warrior
step
kill Thundering Exile##2762
collect 8 Thundering Charm##4480 |q 1712 |future |goto Arathi Highlands 52.60,52.20
|only if Warrior
step
kill Cresting Exile##2761
collect 8 Cresting Charm##4481 |q 1712 |future |goto Arathi Highlands 68.00,30.00
|only if Warrior
step
Kill Bloodscalp enemies around this area
collect 30 Bloodscalp Tusk##3901 |q 1712/2 |goto Stranglethorn Vale 25.85,11.25
|only if Warrior
step
click Bath'rah's Cauldron##89931
accept Essence of the Exile##1714 |goto Alterac Mountains 79.31,66.81
collect Essence of the Exile##6851 |q 1712/3 |goto Alterac Mountains 79.31,66.81
|only if Warrior
step
_NOTE:_
Incoming Difficult Quest
|tip "The Summoning" quest coming up after Cyclonian has you facing a level 40 elite enemy.
|tip You will likely need help with this.
Click Here to Continue |confirm |q 1713 |future
|only if Warrior and hardcore
step
talk Bath'rah the Windwatcher##6176
turnin Cyclonian##1712 |goto Alterac Mountains 80.50,66.92
accept The Summoning##1713 |goto Alterac Mountains 80.50,66.92
|only if Warrior
step
Follow Bath'rah the Windwatcher
Watch the Dialogue
kill Cyclonian##6239
|tip You may need help with this.
|tip This is a level 40 Elite enemy. |only if hardcore
collect Whirlwind Heart##6894 |q 1713/1 |goto Alterac Mountains 80.57,62.56
|only if Warrior
step
talk Bath'rah the Windwatcher##6176
turnin The Summoning##1713 |goto Alterac Mountains 80.50,66.92
accept Whirlwind Weapon##1792 |goto Alterac Mountains 80.50,66.92
|only if Warrior
step
ding 52
step
Enter the building |goto Stormwind City 77.97,48.19 < 7 |walk
talk Wu Shen##5479
|tip Upstairs inside the building.
accept A Troubled Spirit##8417 |goto Stormwind City 78.68,45.80
|only if Warrior
step
talk Fallen Hero of the Horde##7572
turnin A Troubled Spirit##8417 |goto Swamp of Sorrows 34.29,66.15
accept Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.15
|only if Warrior
step
kill 7 Helboar##5993 |q 8423/1 |goto Blasted Lands 51.34,53.45
|only if Warrior
step
talk Fallen Hero of the Horde##7572
turnin Warrior Kinship##8423 |goto Swamp of Sorrows 34.29,66.15
accept War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.15
|only if Warrior
stickystart "Kill_Shadowsworn_Cultitst"
stickystart "Kill_Shadowsworn_Thug"
step
kill 20	Shadowsworn Adept##6006 |q 8424/1 |goto Blasted Lands 65.17,32.83
|tip Watch for patrols and respawns around this area. |only if hardcore
|only if Warrior
step
label "Kill_Shadowsworn_Cultitst"
kill 10 Shadowsworn Cultist##6004 |q 8424/2 |goto Blasted Lands 65.17,32.83
|tip Watch for patrols and respawns around this area. |only if hardcore |notinsticky
|only if Warrior
step
label "Kill_Shadowsworn_Thug"
kill 20 Shadowsworn Thug##6005 |q 8424/3 |goto Blasted Lands 65.17,32.83
|tip Watch for patrols and respawns around this area. |only if hardcore |notinsticky
|only if Warrior
step
talk Fallen Hero of the Horde##7572
turnin War on the Shadowsworn##8424 |goto Swamp of Sorrows 34.29,66.15
accept Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.15
|only if Warrior
step
_NOTE:_
Incoming Dungeon Step
|tip The next couple of steps will be taking you to the Sunken Temple dungeon.
|tip You will need a group to complete the dungeon as well as the quest.
|tip If you don't have a group, wait until you do before continuing.
Click Here to Continue |confirm |q 9053
|only if Warrior and hardcore
step
Run up the stairs |goto Swamp of Sorrows/0 69.36,56.89 < 7 |walk
Enter the building and swim under the water |goto Swamp of Sorrows/0 70.54,49.78 < 7 |walk
Run down the stairs |goto Swamp of Sorrows/0 72.69,42.22 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 75.69,45.78 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 78.62,47.47 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 80.22,49.62 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 81.33,42.38 < 7 |walk
Run down the stairs |goto Swamp of Sorrows/0 78.86,40.74 < 7 |walk
Run down the ramp |goto Swamp of Sorrows/0 76.85,38.82 < 7 |walk
Enter The Temple of Atal'Hakkar Dungeon with Your Group |goto The Temple of Atal'Hakkar/0 0.00,0.00 < 500 |c |q 9053 |future
|only if Warrior
step
Inside the Temple of Atal'Hakkar:
collect 2 Amber Voodoo Feather##20606 |q 8425/1
|tip These come from Gasher and Zul'Lor.
|only if Warrior
step
Inside the Temple of Atal'Hakkar:
collect 2 Blue Voodoo Feather##20607 |q 8425/2
|tip These come from Mijan and Hukku.
|only if Warrior
step
Inside the Temple of Atal'Hakkar:
collect 2 Green Voodoo Feather##20608 |q 8425/3
|tip These come from Zolo and Loro.
|only if Warrior
step
talk Fallen Hero of the Horde##7572
turnin Voodoo Feathers##8425 |goto Swamp of Sorrows 34.29,66.15
|only if Warrior
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Class Quests\\Hunter',
  {
    description = 'This guide will walk you through completing various Hunter Class Quests.',
  },
  [[
step
ding 10
step
talk Dazalar##3601
accept Taming the Beast##6063 |goto Teldrassil 56.68,59.49
|only if NightElf Hunter
step
use the Taming Rod##15921
|tip Use it on a Webwood Lurker around this area.
Tame a Webwood Lurker |q 6063/1 |goto Teldrassil 59.81,59.06
|tip Dismiss it after you tame it.
|tip It may attack you after you dismiss it.
|only if NightElf Hunter
step
talk Dazalar##3601
turnin Taming the Beast##6063 |goto Teldrassil 56.68,59.49
accept Taming the Beast##6101 |goto Teldrassil 56.68,59.49
|only if NightElf Hunter
step
use the Taming Rod##15922
|tip Use it on a Nightsaber Stalker around this area.
Tame a Nightsaber Stalker |q 6101/1 |goto Teldrassil 55.95,71.98
|tip Dismiss it after you tame it.
|tip It may attack you after you dismiss it.
|only if NightElf Hunter
step
talk Dazalar##3601
turnin Taming the Beast##6101 |goto Teldrassil 56.68,59.49
accept Taming the Beast##6102 |goto Teldrassil 56.68,59.49
|only if NightElf Hunter
step
Follow the road |goto Teldrassil 54.81,58.48 < 30 |only if walking
use the Taming Rod##15923
|tip Use it on a Strigid Screecher around this area.
Tame a Strigid Screecher |q 6102/1 |goto Teldrassil 43.99,51.16
|only if NightElf Hunter
step
Follow the road |goto Teldrassil 45.10,49.62 < 30 |only if walking
talk Dazalar##3601
turnin Taming the Beast##6102 |goto Teldrassil 56.68,59.49
accept Training the Beast##6103 |goto Teldrassil 56.68,59.49
|only if NightElf Hunter
step
Follow the road |goto Teldrassil 54.81,58.48 < 30 |only if walking
Enter Darnassus |goto Teldrassil 36.06,54.39 < 20 |only if walking
Run up the ramp |goto Darnassus 45.70,17.69 < 15 |only if walking
talk Jocaste##4146
|tip Inside the building.
turnin Training the Beast##6103 |goto Darnassus 40.38,8.56
|only if NightElf Hunter
step
talk Grif Wildheart##1231
accept Taming the Beast##6064 |goto Dun Morogh 45.81,53.03
|only if Dwarf Hunter
step
use the Taming Rod##15911
|tip Use it on a Large Crag Boar around this area.
Tame a Large Crag Boar |q 6064/1 |goto Dun Morogh 48.26,56.81
|tip Dismiss it after you tame it.
|tip It may attack you after you dismiss it.
|only if Dwarf Hunter
step
talk Grif Wildheart##1231
turnin Taming the Beast##6064 |goto Dun Morogh 45.81,53.04
accept Taming the Beast##6084 |goto Dun Morogh 45.81,53.04
|only if Dwarf Hunter
step
use the Taming Rod##15913
|tip Use it on a Snow Leopard around this area.
Tame a Snow Leopard |q 6084/1 |goto Dun Morogh 48.68,58.93
|tip Dismiss it after you tame it.
|tip It may attack you after you dismiss it.
|only if Dwarf Hunter
step
talk Grif Wildheart##1231
turnin Taming the Beast##6084 |goto Dun Morogh 45.81,53.04
accept Taming the Beast##6085 |goto Dun Morogh 45.81,53.04
|only if Dwarf Hunter
step
use the Taming Rod##15908
|tip Use it on an Ice Claw Bear around this area.
Tame an Ice Claw Bear |q 6085/1 |goto Dun Morogh 49.06,62.12
You can usually find another one around [50.11,53.57]
|only if Dwarf Hunter
step
talk Grif Wildheart##1231
turnin Taming the Beast##6085 |goto Dun Morogh 45.81,53.04
accept Training the Beast##6086 |goto Dun Morogh 45.81,53.04
|only if Dwarf Hunter
step
Enter the building |goto Ironforge 66.34,82.50 < 7 |walk
talk Belia Thundergranite##10090
|tip Inside the building.
turnin Training the Beast##6086 |goto Ironforge 70.87,85.80
|only if Dwarf Hunter
step
ding 50
|only if not hardcore
step
ding 52
|only if hardcore
step
talk Dorion##4205
|tip Upstairs inside the building.
accept The Hunter's Charm##8151 |goto Darnassus 42.21,7.26
|only if Hunter
step
Follow the path up |goto Azshara 42.09,42.45
talk Ogtinc##8405
turnin The Hunter's Charm##8151 |goto Azshara 42.40,42.62
accept Courser Antlers##8153 |goto Azshara 42.40,42.62
|only if Hunter
step
kill Mosshoof Courser##8761
|tip They are scattered all over the area.
|tip These have a low drop rate. |only if hardcore
collect 2 Perfect Courser Antler##20017 |q 8153/1 |goto Azshara 49.47,17.62
|only if Hunter
step
Follow the path up |goto Azshara 42.09,42.45
talk Ogtinc##8405
turnin Courser Antlers##8153 |goto Azshara 42.40,42.62
accept Wavethrashing##8231 |goto Azshara 42.40,42.62
|only if Hunter
step
Jump down here carefully |goto Azshara 33.68,48.68 < 10 |only if walking
Follow the path down |goto Azshara 40.54,47.84 < 15 |only if walking
Kill Wavethrasher enemies around this area
|tip They look like 3 headed beasts. |only if hardcore
|tip They are underwater around this area.
|tip Watch for patroling elites while here. |only if hardcore
|tip When you fight them, be sure that you arne't underwater. |only if hardcore
|tip These enemies cannot be tracked. |only if hardcore
|tip They also have a very low spawn rate. |only if hardcore
collect 6 Wavethrasher Scale##20087 |q 8231/1 |goto Azshara 52.61,41.87
|tip These may have a low drop rate.
You can find more around here [59.77,37.36]
[67.20,33.08]
|tip The coordinates below are a bit further out, but there are more.
[72.19,35.39]
[84.34,33.76]
[86.73,25.65]
|only if Hunter
step
Follow the path up |goto Azshara 42.09,42.45
talk Ogtinc##8405
turnin Wavethrashing##8231 |goto Azshara 42.40,42.62
accept The Green Drake##8232 |goto Azshara 42.40,42.62
|only if Hunter
step
_NOTE:_
Incoming Dungeon Step
|tip The next couple of steps will be taking you to the Sunken Temple dungeon.
|tip You will need a group to complete the dungeon as well as the quest.
|tip If you don't have a group, wait until you do before continuing.
Click Here to Continue |confirm |q 8232
|only if Hunter and hardcore
step
Run up the stairs |goto Swamp of Sorrows/0 69.36,56.89 < 7 |walk
Enter the building and swim under the water |goto Swamp of Sorrows/0 70.54,49.78 < 7 |walk
Run down the stairs |goto Swamp of Sorrows/0 72.69,42.22 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 75.69,45.78 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 78.62,47.47 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 80.22,49.62 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 81.33,42.38 < 7 |walk
Run down the stairs |goto Swamp of Sorrows/0 78.86,40.74 < 7 |walk
Run down the ramp |goto Swamp of Sorrows/0 76.85,38.82 < 7 |walk
Enter The Temple of Atal'Hakkar Dungeon with Your Group |goto The Temple of Atal'Hakkar/0 0.00,0.00 < 500 |c |q 8232 |future
|only if Hunter
step
Inside the Temple of Atal'Hakkar:
kill Morphaz##5719
collect Tooth of Morphaz##20019 |q 8232/1
|only if Hunter
step
Follow the path up |goto Azshara 42.09,42.45
talk Ogtinc##8405
turnin The Green Drake##8232 |goto Azshara 42.40,42.62
|only if Hunter
step
ding 60
step
_NOTE:_
Incoming Raid Steps
|tip The upcoming quest steps will send you into the Molten Core and Onyxia's Lair raids.
|tip You will need a group to complete them.
Click Here to Continue |confirm |q 7635 |future
|only if Hunter
step
Inside the Molten Core Raid:
kill Majordomo Executus##12018
collect Ancient Petrified Leaf##18703 |n
use the Ancient Petrified Leaf##18703
accept The Ancient Leaf##7632
|only if Hunter
step
talk Vartus the Ancient##14524
|tip Kill enemies around the area for him to appear.
turnin The Ancient Leaf##7632 |goto Felwood 48.99,24.44
accept An Introduction##7633 |goto Felwood 48.99,24.44
accept Stave of the Ancients##7636 |goto Felwood 48.99,24.44
|only if Hunter
step
talk Stoma the Ancient##14525
|tip Kill enemies around the area for him to appear.
accept A Proper String##7635 |goto Felwood 48.31,24.43
|only if Hunter
step
label "Simone_the_Inconspicuous_1"
map Un'Goro Crater
path loop off; dist 20
path	40.60,79.81	39.66,80.76	40.56,83.56	44.20,84.60	44.70,84.97
path	47.33,83.43	48.29,83.07	49.48,82.62	52.88,82.85	54.39,80.58
path	53.25,76.57	52.94,71.85	52.49,70.68	50.94,68.32	48.26,68.82
path	46.33,66.62	45.54,65.95	44.59,63.45	41.43,62.58	41.03,62.86
path	39.76,60.14	40.27,55.85	39.31,48.70	38.48,45.86	38.04,41.96
path	36.18,39.79	35.09,38.14	33.26,37.56	31.74,42.57	31.26,43.64
path	31.58,44.98
Follow the path
talk Simone the Inconspicuous##14527
|tip Use the "Track Demons" ability from the Survival Branch to accomplish this.
|tip She patrols all around Un'Goro Crater.
Select _"Show me your real face, demon."_
kill Simone the Inconspicuous##14527
|tip This must be done alone or it will despawn.
collect Simone's Head##18952 |q 7636/1 |next "Klinfran_the_Crazed_1" |or
'|goto Un'Goro Crater 31.58,44.98 < 20 |noway |or |c |next "Simone_the_Inconspicuous_2"
|only if Hunter
step
label "Simone_the_Inconspicuous_2"
map Un'Goro Crater
path loop off; dist 20
path	34.12,41.24	35.41,41.78	36.58,44.59	37.39,46.16	37.11,50.89
path	38.49,51.80	39.14,53.13	38.36,56.24	38.06,60.14	38.74,65.34
path	39.38,67.27	39.65,69.63	40.89,73.47	41.67,73.78	42.23,75.22
path	42.32,77.27	41.33,78.48	40.66,79.79
Follow the path
talk Simone the Inconspicuous##14527
|tip Use the "Track Demons" ability from the Survival Branch to accomplish this.
|tip She patrols all around Un'Goro Crater.
Select _"Show me your real face, demon."_
kill Simone the Inconspicuous##14527
|tip This must be done alone or it will despawn.
collect Simone's Head##18952 |q 7636/1 |next "Klinfran_the_Crazed_1" |or
'|goto Un'Goro Crater 40.66,79.79 < 20 |noway |or |c |next "Simone_the_Inconspicuous_1"
|only if Hunter
step
label "Klinfran_the_Crazed_1"
map Burning Steppes
path dist 25
path	30.95,53.11	28.61,51.69	26.37,50.79	24.46,49.56	22.35,49.13
path	19.24,49.41	17.32,53.62	17.55,57.76	19.13,59.29	21.32,59.59
path	24.15,62.26	25.60,62.31	25.54,64.65	27.14,62.05	28.46,59.49
path	28.81,56.98	30.04,55.63	29.20,51.92
Follow the path
talk Franklin the Friendly##14529
|tip Use the "Track Demons" ability from the Survival Branch to accomplish this.
|tip He patrols around Burning Steppes.
Select _"Show me your real face, demon."_
kill Klinfran the Crazed##14534
|tip This must be done alone or it will despawn.
collect Klinfran's Head##18953 |q 7636/2
|only if Hunter
step
map Silithus
path dist 20
path	27.18,84.28	25.70,86.85	25.51,88.41	22.00,86.39	21.41,83.81
path	21.45,81.74	23.00,79.45	24.79,76.13	26.93,75.99	28.43,76.18
path	28.98,80.30	29.15,81.69	26.81,84.80
Follow the path
talk Nelson the Nice##14536
|tip Use the "Track Demons" ability from the Survival Branch to accomplish this.
|tip He walks around the area.
Select _"Show me your real face, demon."_
kill Solenor the Slayer##14530
|tip This must be done alone or it will despawn.
collect Solenor's Head##18954 |q 7636/3 |goto Silithus 26.00,81.20
|only if Hunter
step
map Winterspring
path dist 17
path	57.82,21.11	58.43,21.89	58.74,22.81	59.05,23.60	59.71,24.17
path	60.19,23.60	60.38,22.81	60.15,21.85	60.63,21.54	60.84,21.21
path	60.33,20.38	59.94,19.05	59.71,17.37	60.14,16.22	60.62,15.32
path	60.87,14.53	60.51,13.36	59.83,12.09	59.33,12.32	58.73,12.74
path	58.15,13.34	57.93,14.47	58.11,15.96	58.50,17.78	58.22,19.31
path	57.98,20.53
Follow the path
talk Artorius the Amiable##14531
|tip Use the "Track Demons" ability from the Survival Branch to accomplish this.
|tip He walks around the area.
Select _"Show me your real face, demon."_
kill Artorius the Doombringer##14535
|tip This must be done alone or it will despawn and be on a 3 hour timer.
collect Artorius's Head##18955 |q 7636/4 |goto Winterspring 58.20,15.60
|only if Hunter
step
Inside the Onyxia's Lair Raid:
kill Onyxia##10184
collect Mature Black Dragon Sinew##18705 |q 7635/1
|tip This isn't a 100% drop rate.
|only if Hunter
step
talk Vartus the Ancient##14524
|tip Kill enemies around the area for him to appear.
turnin Stave of the Ancients##7636  |goto Felwood 48.99,24.44
|only if Hunter
step
talk Stoma the Ancient##14525
|tip Kill enemies around the area for him to appear.
turnin A Proper String##7635 |goto Felwood 48.31,24.43
|only if Hunter
step
use the Ancient Rune Etched Stave##18707
collect Rhok'delar, Longbow of the Ancient Keepers##18713 |n
collect Lok'delar, Stave of the Ancient Keepers##18715 |n
|only if Hunter
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Class Quests\\Rogue',
  {
    description = 'This guide will walk you through completing various Rogue Class Quests.',
  },
  [[
step
ding 10
step
talk Hogral Bakkan##1234
accept Road to Salvation##2218 |goto Dun Morogh/0 47.56,52.61
|only if Rogue
step
talk Hulfdan Blackbeard##5165
|tip Downstairs inside the building.
turnin Road to Salvation##2218 |goto Ironforge/0 51.94,14.82
accept Simple Subterfugin'##2238 |goto Ironforge/0 51.94,14.82
|only if Rogue
step
talk Onin##6886
|tip On top of the platform.
turnin Simple Subterfugin'##2238 |goto Dun Morogh/0 25.16,44.45
accept Onin's Report##2239 |goto Dun Morogh/0 25.16,44.45
|only if Rogue
step
talk Hulfdan Blackbeard##5165
|tip Downstairs inside the building.
turnin Onin's Report##2239 |goto Ironforge/0 51.94,14.82
|only if Rogue
step
ding 16
|only if not hardcore
step
ding 21
|tip We are waiting until 21 because the quest sends you to an area with level 23s.
|only if hardcore
step
talk Lord Tony Romano##13283
|tip Inside the building.
Train the "Pick Lock" Ability |complete knowspell(1804) |goto Stormwind City 78.31,57.04
|only if Rogue
step
talk Gerald Crawley##3090
|tip Inside the building.
buy 1 Thieves' Tools##5060 |goto Redridge Mountains 25.09,41.15
|only if Rogue
step
Follow the road |goto Redridge Mountains 35.02,44.11 < 30 |only if walking
Follow the path |goto Redridge Mountains 43.30,37.54 < 30 |only if walking
click Practice Lockbox+
|tip They look like grey metal chests.
|tip Inside the building.
|tip Keep clicking them until you reach Lockpicking skill level 75.
Click Here After Reaching Level 75 Lockpicking |confirm |goto Redridge Mountains 51.97,45.15 |q 2607 |future
|only if Rogue
step
Follow the path |goto Stormwind City 74.74,53.70 < 7 |only if walking
Enter the building |goto Stormwind City 77.14,58.02 < 7 |walk
talk Master Mathias Shaw##332
|tip Upstairs inside the building.
accept Mathias and the Defias##2360 |goto Stormwind City 75.78,59.85
|only if Rogue
step
Leave the building |goto Stormwind City 77.11,58.00 < 7 |walk
Follow the path |goto Stormwind City 74.67,53.63 < 7 |only if walking
Leave Stormwind |goto Stormwind City 71.10,88.88 < 30 |only if walking
Follow the road |goto Elwynn Forest 27.55,77.78 < 30 |only if walking
Enter Westfall |goto Elwynn Forest 20.73,79.79 < 20 |only if walking
talk Thor##523
fpath Sentinel Hill |goto Westfall 56.56,52.64
|only if Rogue
step
talk Agent Kearnen##7024
turnin Mathias and the Defias##2360 |goto Westfall 68.49,70.08
accept Klaven's Tower##2359 |goto Westfall 68.49,70.08
|only if Rogue
step
collect Defias Tower Key##7923 |q 2359/2 |goto Westfall 71.63,73.91
|tip Use your "Pickpocket" ability on Malformed Defias Drone.
|tip He walks around this area.
|tip Look out for the pair of Defias Drones patrolling as well. |only if hardcore
|only if Rogue
step
Enter the building |goto Westfall 69.97,74.07 < 7 |walk
click Duskwood Chest##123214
|tip Upstairs inside the building.
|tip You will get a debuff after opening it.
|tip Use your "Sap" ability on Klaven Mortwake nearby before clicking the chest.
|tip He is elite, but you should be fine.
|tip If you have trouble, try to find someone to help you.
collect Klaven Mortwake's Journal##7908 |q 2359/1 |goto Westfall 70.41,73.93
|only if Rogue
step
Leave the building |goto Westfall 69.95,74.04 < 7 |walk
Follow the path |goto Stormwind City 74.74,53.70 < 7 |only if walking
Enter the building |goto Stormwind City 77.14,58.02 < 7 |walk
talk Master Mathias Shaw##332
|tip Upstairs inside the building.
turnin Klaven's Tower##2359 |goto Stormwind City 75.78,59.85
accept The Touch of Zanzil##2607 |goto Stormwind City 75.78,59.85
|only if Rogue
step
talk Doc Mixilpixil##7207
|tip Downstairs inside the building.
turnin The Touch of Zanzil##2607 |goto Stormwind City 78.04,58.77
accept The Touch of Zanzil##2608 |goto Stormwind City 78.04,58.77
|only if Rogue
step
Watch the dialogue
|tip Use the "/lay" emote while targeting Doc Mixilpixil.
Complete the Diagnosis |q 2608/1 |goto Stormwind City 78.04,58.77
|only if Rogue
step
talk Doc Mixilpixil##7207
|tip Downstairs inside the building.
turnin The Touch of Zanzil##2608 |goto Stormwind City 78.04,58.77
|only if Rogue
step
Remove the Touch of Zanzil |nobuff Touch of Zanzil##9991
|tip You will still have the "Touch of Zanzil" debuff.
|tip There is a quest to remove the buff.
|tip The quest makes you gather items in Stormwind City, but gathering the items can cost a lot of silver.
|tip To remove the buff without doing the quest and wasting money, you have 2 options:
|tip If you have First Aid leveled, create an "Anti-Venom" and use it on yourself.
|tip You can also try to buy one from the Auction House, they're usually cheap. |only if not selfmade
|tip Alternatively, try to ask a Druid player to use their "Cure Poison" ability on you.
|only if Rogue
step
ding 50
|only if not hardcore
step
ding 52
|tip We are waiting until 52 because there are higher level enemies around the are which you'll be questing.
|only if hardcore
step
talk Lord Tony Romano##13283
|tip Inside the building.
accept A Simple Request##8233 |goto Stormwind City 78.32,57.04
|only if Rogue
step
Follow the road up |goto Hillsbrad Foothills 75.51,23.52 < 10 |only if walking
Enter the cave |goto Hillsbrad Foothills 77.82,19.27 < 10 |walk
Follow the path |goto Alterac Mountains 81.71,77.48 < 10 |only if walking
Enter the building |goto Alterac Mountains 85.46,79.39 < 10 |walk
talk Lord Jorach Ravenholdt##6768
turnin A Simple Request##8233 |goto Alterac Mountains 86.03,78.88
accept Sealed Azure Bag##8234 |goto Alterac Mountains 86.03,78.88
|only if Rogue
step
kill Timbermaw Shaman##6188
|tip You can also Pickpocket them.
|tip Watch for patrols and respawns while in the area. |only if hardcore
collect Sealed Azure Bag##19775 |q 8234/1 |goto Azshara 43.77,25.56
You can find more around:
[41.49,19.55]
|only if Rogue
step
talk Sanath Lim-yo##8395
accept Meeting with the Master##3503 |goto Azshara 28.11,50.09
|only if Rogue
step
Follow the path up |goto Azshara 26.48,44.23 < 15 |only if walking
talk Archmage Xylem##8379
|tip Inside the tower.
turnin Sealed Azure Bag##8234 |goto Azshara 29.71,40.52
accept Encoded Fragments##8235 |goto Azshara 29.71,40.52
|only if Rogue
step
Follow the path down |goto Azshara 27.04,43.31 < 15 |only if walking
talk Nyrill##8399
accept Return Trip##3421 |goto Azshara 36.13,67.82
|only if Rogue
step
kill Forest Ooze##8766
|tip Pickpocket them before killing them.
|tip Kill Mistwing Ravagers if you run out of oozes to kill. |only if hardcore
collect 10 Encoded Fragment##20023 |q 8235/1 |goto Azshara 73.40,25.20
You can find more around
[80.13,24.75]
[72.71,23.53]
[74.59,13.08]
[66.10,22.93]
|only if Rogue
step
talk Sanath Lim-yo##8395
accept Meeting with the Master##3503 |goto Azshara 28.11,50.09
|only if Rogue
step
Follow the path up |goto Azshara 26.48,44.23 < 15 |only if walking
talk Archmage Xylem##8379
|tip Inside the tower.
turnin Encoded Fragments##8235 |goto Azshara 29.71,40.52
accept The Azure Key##8236 |goto Azshara 29.71,40.52
|only if Rogue
step
_NOTE:_
Incoming Dungeon Step
|tip The next couple of steps will be taking you to the Sunken Temple dungeon.
|tip You will need a group to complete the dungeon as well as the quest.
|tip If you don't have a group, wait until you do before continuing.
Click Here to Continue |confirm |q 8236
|only if Rogue and hardcore
step
Run up the stairs |goto Swamp of Sorrows/0 69.36,56.89 < 7 |walk
Enter the building and swim under the water |goto Swamp of Sorrows/0 70.54,49.78 < 7 |walk
Run down the stairs |goto Swamp of Sorrows/0 72.69,42.22 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 75.69,45.78 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 78.62,47.47 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 80.22,49.62 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 81.33,42.38 < 7 |walk
Run down the stairs |goto Swamp of Sorrows/0 78.86,40.74 < 7 |walk
Run down the ramp |goto Swamp of Sorrows/0 76.85,38.82 < 7 |walk
Enter The Temple of Atal'Hakkar Dungeon with Your Group |goto The Temple of Atal'Hakkar/0 0.00,0.00 < 500 |c |q 8232 |future
|only if Rogue
step
Inside the Temple of Atal'Hakkar:
kill Morphaz##5719
|tip Refer to the Temple of Atal'Hakkar Dungeon guide to accomplish this.
collect Azure Key##20022 |q 8236/1
|only if Rogue
step
Follow the road up |goto Hillsbrad Foothills 75.51,23.52 < 10 |only if walking
Enter the cave |goto Hillsbrad Foothills 77.82,19.27 < 10 |walk
Follow the path |goto Alterac Mountains 81.71,77.48 < 10 |only if walking
Enter the building |goto Alterac Mountains 85.46,79.39 < 10 |walk
talk Lord Jorach Ravenholdt##6768
turnin The Azure Key##8236|goto Alterac Mountains 86.03,78.88
|only if Rogue
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Class Quests\\Mage',
  {
    description = 'This guide will walk you through completing various Mage Class Quests.',
  },
  [[
step
ding 10
step
talk Zaldimar Wefhellt##328
|tip Upstairs inside the building.
accept Speak with Jennea##1860 |goto Elwynn Forest 43.25,66.19
|only if Mage
step
talk Jennea Cannon##5497
|tip Upstairs inside the tower.
turnin Speak with Jennea##1860 |goto Stormwind City 38.54,79.35
accept Mirror Lake##1861 |goto Stormwind City 38.54,79.35
|only if Mage
step
use Jennea's Flask##7207
|tip Use it while in the water.
collect Mirror Lake Water Sample##7206 |q 1861/1 |goto Elwynn Forest 28.78,61.47
step
talk Jennea Cannon##5497
|tip Upstairs inside the tower.
turnin Mirror Lake##1861 |goto Stormwind City 38.54,79.35
|only if Mage
step
ding 15
step
talk Dink##7312
|tip Inside the building
accept Report to Jennea##1919 |goto Ironforge 27.18,8.58
|only if Gnome Mage
step
talk Zaldimar Wefhellt##328
|tip Upstairs inside the building.
accept Report to Jennea##1919 |goto Elwynn Forest 43.25,66.19
|only if Human Mage
step
talk Jennea Cannon##5497
|tip Upstairs inside the tower.
turnin Report to Jennea##1919 |goto Stormwind City 38.54,79.35
accept Investigate the Blue Recluse##1920 |goto Stormwind City 38.54,79.35
|only if Mage
step
click Chest of Containment Coffers##105174
|tip Upstairs inside the tower.
collect Chest of Containment Coffers##7247 |q 1920/2 |goto Stormwind City 38.59,79.06
|only if Mage
step
click Cantation of Manifestation##105175
|tip Upstairs inside the tower.
collect Cantation of Manifestation##7308 |q 1920/3 |goto Stormwind City 38.70,78.78
|only if Mage
step
Enter the building |goto Stormwind City 39.90,85.36 < 5 |walk
use Cantation of Manifestation##7308
|tip Inside the building.
|tip This will cause Rift Spawns to appear.
kill Rift Spawn##6492
use Chest of Containment Coffers##7247
click Filled Containment Coffer##103574
collect 1 Filled Containment Coffer##7292 |complete itemcount(7292) >= 1 |q 1920/1 |goto Stormwind City 40.64,91.92
|only if Mage
step
use Cantation of Manifestation##7308
|tip Inside the building.
|tip This will cause Rift Spawns to appear.
kill Rift Spawn##6492
use Chest of Containment Coffers##7247
click Filled Containment Coffer##103574
collect 2 Filled Containment Coffer##7292 |complete itemcount(7292) >= 2 |q 1920/1|goto Stormwind City 40.46,92.81
|only if Mage
step
use Cantation of Manifestation##7308
|tip Downstairs inside the building.
|tip This will cause Rift Spawns to appear.
kill Rift Spawn##6492
use Chest of Containment Coffers##7247
click Filled Containment Coffer##103574
collect 3 Filled Containment Coffer##7292 |complete itemcount(7292) >= 3 |q 1920/1 |goto Stormwind City 40.46,90.90
|only if Mage
step
talk Jennea Cannon##5497
|tip Upstairs inside the tower.
turnin Investigate the Blue Recluse##1920 |goto Stormwind City 38.54,79.35
accept Gathering Materials##1921 |goto Stormwind City 38.54,79.35
|only if Mage
stickystart "Collect_10_Linen"
step
Enter the mine |goto Loch Modan 35.47,19.08 < 8 |walk
click Miners' League Crates##271
|tip Inside the mine.
|tip Keep an eye out for patrols and casters. |only if hardcore
collect 6 Charged Rift Gem##7249 |q 1921/2 |goto Loch Modan 35.85,22.58
|only if Mage
step
label "Collect_10_Linen"
collect 10 Linen Cloth##2589 |q 1921/1
|tip These drop from Tunnel Rat enemies inside the cave.
|tip Keep an eye out for patrols and casters while in the cave. |only if hardcore |notinsticky
|tip You can also purchase them from the Auction House. |only if not selfmade
|only if Mage
step
talk Wynne Larson##1309
|tip Inside the building
turnin Gathering Materials##1921 |goto Stormwind City 41.57,76.35
accept Manaweave Robe##1941 |goto Stormwind City 41.57,76.35
|only if Mage
step
ding 26
step
talk Jennea Cannon##5497
|tip Upstairs inside the tower.
accept High Sorcerer Andromath##1939 |goto Stormwind City 38.54,79.35
|only if Mage
step
talk High Sorcerer Andromath##5694
|tip Upstairs inside the tower.
turnin High Sorcerer Andromath##1939 |goto Stormwind City 37.52,81.64
accept Ur's Treatise on Shadow Magic##1938 |goto Stormwind City 37.52,81.64
|only if Mage
step
click Ur's Treatise on Shadow Magic##103628
|tip Upstairs inside the tower.
collect Ur's Treatise on Shadow Magic##7266 |q 1938/1 |goto Redridge Mountains 78.87,47.64
|only if Mage
step
talk High Sorcerer Andromath##5694
|tip Upstairs inside the tower.
turnin Ur's Treatise on Shadow Magic##1938 |goto Stormwind City 37.52,81.64
accept Pristine Spider Silk##1940 |goto Stormwind City 37.52,81.64
|only if Mage
step
Kill enemies around this area
collect 8 Pristine Spider Silk##7267 |q 1940/1 |goto Duskwood 31.38,26.95
You can find more around here [34.42,56.77]
|only if Mage
step
talk Wynne Larson##1309
|tip Inside the building
turnin Pristine Spider Silk##1940 |goto Stormwind City 41.57,76.35
Watch the dialogue
accept Astral Knot Garment##1942 |goto Stormwind City 41.57,76.35
|only if Mage
step
ding 30
|only if not hardcore
step
ding 34
|tip We are waiting until this level because you will be traveling through higher level areas.
|only if not hardcore
step
talk Jennea Cannon##5497
|tip Upstairs inside the tower.
accept Journey to the Marsh##1947 |goto Stormwind City 38.54,79.35
|only if Mage
step
talk Tabetha##6546
|tip Inside the building.
turnin Journey to the Marsh##1947 |goto Dustwallow Marsh 46.06,57.09
Watch the Dialogue
accept Hidden Secrets##1949 |goto Dustwallow Marsh 46.06,57.09
|only if Mage
step
talk Magus Tirth##6548
turnin Hidden Secrets##1949 |goto Thousand Needles 78.29,75.70
accept Get the Scoop##1950 |goto Thousand Needles 78.29,75.70
|only if Mage
step
talk "Plucky" Johnson##6626
|tip Use the "/beckon" Emote to turn him back to a human.
Tell him to _"Please tell me the Phrase..."_
Learn the Secret Phrase |q 1950/1 |goto Thousand Needles 79.60,75.60
|only if Mage
step
talk Magus Tirth##6548
turnin Get the Scoop##1950 |goto Thousand Needles 78.29,75.70
accept Rituals of Power##1951 |goto Thousand Needles 78.29,75.70
|only if Mage
step
talk Tabetha##6546
|tip Inside the building.
accept Items of Power##1948 |goto Dustwallow Marsh 46.06,57.09
|only if Mage
step
Kill Witherbark enemies around this area
|tip They look like trolls.
collect 10 Witherbark Totem Stick##7273 |q 1948 |goto Arathi Highlands 66.66,64.37
|only if Mage
step
use the Witherbark Totem Stick##7273
|tip Clear the enemies around the stones before doing so.
click Bolt Charged Bramble##103662
|tip On top of the rock at the center of the Outer Binding Circle.
collect Bolt Charged Bramble##7272 |q 1948/2 |goto Arathi Highlands 52.06,50.69
|only if Mage
step
collect 1 Jade##1529 |q 1948
|tip You should have collected this earlier.
|only if Mage
step
talk Tabetha##6546
|tip Inside the building.
turnin Items of Power##1948 |goto Dustwallow Marsh 46.06,57.09
|only if Mage
step
_NOTE:_
Incoming Dungeon Step
|tip The next couple of steps will be taking you to the Scarlet Monastery (Library) dungeon.
|tip You will need a group to complete the dungeon as well as the quest.
|tip If you don't have a group, wait until you do before continuing.
Click Here to Continue |confirm |q 1951
|only if Mage and hardcore
step
Enter the building |goto Tirisfal Glades/0 82.65,32.88 < 7 |walk
Enter the Portal |goto Tirisfal Glades/0 85.33,32.27 < 7 |walk
Enter the Scarlet Monastery - Library Dungeon with Your Group |goto Scarlet Monastery/0 0.00,0.00 < 500 |c |noway |q 1951
step
Inside the Scarlet Monastery Library Dungeon:
click Rituals of Power##103664
|tip In the Athenaeum, to the left of the doorway.
collect Rituals of Power##7274 |q 1951/1
|only if Mage
step
talk Tabetha##6546
|tip Inside the building.
turnin Rituals of Power##1951  |goto Dustwallow Marsh 46.06,57.09
accept Mage's Wand##1952 |goto Dustwallow Marsh 46.06,57.09
|only if Mage
step
talk Tabetha##6546
|tip Inside the building.
turnin Mage's Wand##1952 |goto Dustwallow Marsh 46.06,57.09 |noautoaccept
|only if Mage
step
ding 40
|only if Mage and not hardcore
step
ding 45
|tip We are waiting until level 45 because there is an elite enemy that will need to be killed.
|tip It will be level 40, but you may need help as it still hits hard.
|only if Mage and hardcore
step
talk Jennea Cannon##5497
|tip Upstairs inside the tower.
accept Return to the Marsh##1953 |goto Stormwind City 38.54,79.35
|only if Mage
step
talk Tabetha##6546
|tip Inside the building.
turnin Return to the Marsh##1953 |goto Dustwallow Marsh 46.06,57.09
accept The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
|only if Mage
step
kill Burning Blade Summoner##4668
|tip You may have to look around for them. |only if hardcore
|tip Watch out for patrols and respawns while in the area. |only if hardcore
collect Infernal Orb##7291 |q 1954/1 |goto Desolace 53.34,79.05
|only if Mage
step
_NOTE:_
Incoming Elite Quest
|tip During the quest "The Exorcism", you will be tasked with killing The Demon of the Orb, which is a level 40 elite enemy.
|tip It will deal a lot of a damage.
|tip If you are unable to get help, you should have your best healing potions ready.
Click Here to Continue |confirm |q 1955 |future
|only if Mage and hardcore
step
talk Tabetha##6546
|tip Inside the building.
turnin The Infernal Orb##1954 |goto Dustwallow Marsh 46.06,57.09
accept The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
|only if Mage
step
kill Demon of the Orb##6549 |q 1955/1 |goto Dustwallow Marsh 46.04,57.10
|only if Mage
step
talk Tabetha##6546
|tip Inside the building.
turnin The Exorcism##1955 |goto Dustwallow Marsh 46.06,57.09
accept Power in Uldaman##1956 |goto Dustwallow Marsh 46.06,57.09
|only if Mage
step
_NOTE:_
Incoming Dungeon Step
|tip The next couple of steps will be taking you to the Uldaman dungeon.
|tip You will need a group to complete the dungeon as well as the quest.
|tip If you don't have a group, wait until you do before continuing.
Click Here to Continue |confirm |q 1956
|only if Mage and hardcore
step
Enter the Uldaman Dungeon with Your Group |goto Uldaman/0 0.00,0.00 < 500 |c |q 1956
step
Inside the Uldaman Dungeon:
kill Obsidian Sentinel##7023
|tip Use the Uldaman Dungeon guide to accomplish this.
collect Obsidian Power Source##8053 |q 1956/1
|only if Mage
step
talk Tabetha##6546
|tip Inside the building.
turnin Power in Uldaman##1956 |goto Dustwallow Marsh 46.06,57.09
accept Mana Surges##1957 |goto Dustwallow Marsh 46.06,57.09
|only if Mage
step
kill Mana Surge##6550
|tip They will spawn continuously as you kill them.
Slay #12# Manage Surges |q 1957/1 |goto Dustwallow Marsh 45.85,56.76
|only if Mage
step
talk Tabetha##6546
|tip Inside the building.
turnin Mana Surges##1957 |goto Dustwallow Marsh 46.06,57.09
Watch the Dialogue
accept Celestial Power##1958 |goto Dustwallow Marsh 46.06,57.09
|only if Mage
step
ding 46
step
talk Jennea Cannon##5497
|tip Upstairs inside the tower.
accept Tabetha's Task##2861 |goto Stormwind City 38.54,79.35
|only if Mage
step
talk Tabetha##6546
|tip Inside the building.
turnin Tabetha's Task##2861 |goto Dustwallow Marsh 46.06,57.09
accept Tiara of the Deep##2846 |goto Dustwallow Marsh 46.06,57.09
|only if Mage
step
_NOTE:_
Incoming Dungeon Step
|tip The next couple of steps will be taking you to the Zul'Farrak dungeon.
|tip You will need a group to complete the dungeon as well as the quest.
|tip If you don't have a group, wait until you do before continuing.
Click Here to Continue |confirm |q 2846
|only if Mage and hardcore
step
Enter the Zul'Farrak Dungeon with Your Group |goto Zul'Farrak/0 0.00,0.00 < 500 |c |q 2846
step
Inside the Zul'Farrak Dungeon:
kill Hydromancer Velratha##7795
collect Tiara of the Deep##9234 |q 2846/1
|only if Mage
step
talk Tabetha##6546
|tip Inside the building.
turnin Tiara of the Deep##2846 |goto Dustwallow Marsh 46.06,57.09
|only if Mage
step
ding 60
step
_NOTE:_
Incoming Dungeon Step
|tip The next couple of steps will be taking you to the Dire Maul (North) dungeon.
|tip You will need a group to complete the dungeon as well as the quest.
|tip If you don't have a group, wait until you do before continuing.
Click Here to Continue |confirm |q 7463 |future
|only if Mage and hardcore
step
Run up the ramp |goto Feralas/0 59.13,44.67 < 20 |only if walking
Follow the path |goto Feralas/0 59.52,39.51 < 15 |only if walking
Continue following the path |goto Feralas/0 61.72,38.78 < 15 |only if walking
Continue following the path |goto Feralas/0 61.15,34.87 < 7 |only if walking
click Door |goto Feralas/0 62.49,24.89 < 5 |walk
|tip You need a Crescent Key to unlock this door.
|tip This drops from Pusillin in the "Dire Maul - East" dungeon.
Enter the Dire Maul - North Dungeon with Your Group |goto Dire Maul/0 0.00,0.00 < 500 |c |q 7463 |future
step
Inside the Dire Maul North Dungeon:
talk Lorekeeper Lydros##14368
|tip Through the Conservatory Door in the courtyard.
accept Arcane Refreshment##7463
|only if Mage
step
_NOTE:_
Incoming Dungeon Step
|tip The next couple of steps will be taking you to the Dire Maul (East) dungeon.
|tip You will need a group to complete the dungeon as well as the quest.
|tip If you don't have a group, wait until you do before continuing.
Click Here to Continue |confirm |q 7463 |future
|only if Mage and hardcore
step
Run up the ramp |goto Feralas/0 59.13,44.67 < 20 |only if walking
Follow the path |goto Feralas/0 59.52,39.51 < 15 |only if walking
Continue following the path |goto Feralas/0 61.72,38.78 < 15 |only if walking
Continue following the path |goto Feralas/0 61.15,34.87 < 7 |only if walking
Continue following the path |goto Feralas/0 64.85,30.18 < 7 |only if walking
Enter the Dire Maul - East Dungeon with Your Group |goto Dire Maul/0 0.00,0.00 < 500 |c |q 7463 |future
step
Inside the Dire Maul East Dungeon:
kill Hydrospawn##13280
|tip Refer to the Dire Maul East Dungeon guide to accomplish this.
collect Hydrospawn Essence##18299
|only if Mage
step
_NOTE:_
Incoming Dungeon Step
|tip The next couple of steps will be taking you to the Dire Maul (North) dungeon.
|tip You will need a group to complete the dungeon as well as the quest.
|tip If you don't have a group, wait until you do before continuing.
Click Here to Continue |confirm |q 7463 |future
|only if Mage and hardcore
step
Run up the ramp |goto Feralas/0 59.13,44.67 < 20 |only if walking
Follow the path |goto Feralas/0 59.52,39.51 < 15 |only if walking
Continue following the path |goto Feralas/0 61.72,38.78 < 15 |only if walking
Continue following the path |goto Feralas/0 61.15,34.87 < 7 |only if walking
click Door |goto Feralas/0 62.49,24.89 < 5 |walk
|tip You need a Crescent Key to unlock this door.
|tip This drops from Pusillin in the "Dire Maul - East" dungeon.
Enter the Dire Maul - North Dungeon with Your Group |goto Dire Maul/0 0.00,0.00 < 500 |c |q 7463 |future
step
Inside the Dire Maul North Dungeon:
talk Lorekeeper Lydros##14368
|tip Through the Conservatory Door in the courtyard.
turnin Arcane Refreshment##7463
|only if Mage
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Class Quests\\Paladin',
  {
    description = 'This guide will walk you through completing various Paladin Class Quests.',
  },
  [[
step
ding 12
step
Enter the building |goto Stormwind City 43.44,35.14 < 7 |walk
talk Duthorian Rall##6171
|tip Inside the building.
accept The Tome of Divinity##1641 |goto Stormwind City 39.81,29.80
|only if Human Paladin
step
talk Duthorian Rall##6171
|tip Inside the building.
turnin The Tome of Divinity##1641 |goto Stormwind City 39.81,29.80
|only if Human Paladin
step
use the Tome of Divinity##6775
accept The Tome of Divinity##1642
|only if Human Paladin
step
talk Duthorian Rall##6171
|tip Inside the building.
turnin The Tome of Divinity##1642 |goto Stormwind City 39.81,29.80
accept The Tome of Divinity##1643 |goto Stormwind City 39.81,29.80
|only if Human Paladin
step
Leave the building |goto Stormwind City 43.06,34.49 < 7 |walk
talk Stephanie Turner##6174
turnin The Tome of Divinity##1643 |goto Stormwind City 57.08,61.74
accept The Tome of Divinity##1644 |goto Stormwind City 57.08,61.74
|only if Human Paladin
step
Enter the building |goto Stormwind City 53.99,58.98 < 7 |walk
talk Auctioneer Jaxon##15659
|tip Inside the building.
|tip Buy these items from the Auction House.
|tip Or, refer to the Linen Cloth farming guide to accomplish this.
collect 10 Linen Cloth##2589 |q 1644/1 |goto Stormwind City 53.61,59.76
|only if Human Paladin and selfmade
step
Leave the building |goto Stormwind City 53.86,58.92 < 7 |walk
talk Stephanie Turner##6174
turnin The Tome of Divinity##1644 |goto Stormwind City 57.08,61.74
accept The Tome of Divinity##1780 |goto Stormwind City 57.08,61.74
|only if Human Paladin
step
Enter the building |goto Stormwind City 43.44,35.14 < 7 |walk
talk Duthorian Rall##6171
|tip Inside the building.
turnin The Tome of Divinity##1780 |goto Stormwind City 39.81,29.80
accept The Tome of Divinity##1781 |goto Stormwind City 39.81,29.80
|only if Human Paladin
step
talk Gazin Tenorm##6173
|tip Inside the building.
turnin The Tome of Divinity##1781 |goto Stormwind City 38.55,26.45
accept The Tome of Divinity##1786 |goto Stormwind City 38.55,26.45
|only if Human Paladin
step
Leave the building |goto Stormwind City 43.06,34.49 < 7 |walk
Leave Stormwind City |goto Stormwind City 71.05,88.81 < 30 |only if walking
Follow the road |goto Elwynn Forest 42.70,67.19 < 30 |only if walking
Follow the path |goto Elwynn Forest 69.14,70.95 < 30 |only if walking
use the Symbol of Life##6866
|tip Watch for Defias Rogue Wizards around here. |only if hardcore
|tip They are ranged attackers with an abnormal sized aggro radius. |only if hardcore
|tip Use it on Henze Faulk's corpse.
Ressurect Henze Faulk |q 1786/1 |goto Elwynn Forest 72.60,51.41
|only if Human Paladin
step
talk Henze Faulk##6172
turnin The Tome of Divinity##1786 |goto Elwynn Forest 72.60,51.41
accept The Tome of Divinity##1787 |goto Elwynn Forest 72.60,51.41
|only if Human Paladin
step
kill Defias Rogue Wizard##474+
|tip They are ranged attackers with an abnormal sized aggro radius. |only if hardcore
collect Defias Script##6846 |q 1787/1 |goto Elwynn Forest 74.07,51.57
|only if Human Paladin
step
Follow the road |goto Elwynn Forest 70.14,70.84 < 30 |only if walking
Continue following the road |goto Elwynn Forest 42.19,64.92 < 30 |only if walking
Enter Stormwind City |goto Elwynn Forest 32.07,49.32 < 30 |only if walking
Enter the building |goto Stormwind City 43.44,35.14 < 7 |walk
talk Gazin Tenorm##6173
|tip Inside the building.
turnin The Tome of Divinity##1787 |goto Stormwind City 38.56,26.47
accept The Tome of Divinity##1788 |goto Stormwind City 38.56,26.47
|only if Human Paladin
step
talk Duthorian Rall##6171
|tip Inside the building.
turnin The Tome of Divinity##1788 |goto Stormwind City 39.81,29.80
|only if Human Paladin
step
Enter the building |goto Ironforge 27.28,12.31 < 10 |walk
talk Brandur Ironhammer##5149
|tip Inside the building.
accept Tome of Divinity##2997 |goto Ironforge 23.12,6.14
|only if Dwarf Paladin
step
talk Tiza Battleforge##6179
|tip Upstairs inside the building.
turnin Tome of Divinity##2997 |goto Ironforge 27.64,12.19
accept The Tome of Divinity##1645 |goto Ironforge 27.64,12.19
|only if Dwarf Paladin
step
talk Tiza Battleforge##6179
|tip Upstairs inside the building.
accept The Tome of Divinity##1646 |goto Ironforge 27.64,12.19
|only if Dwarf Paladin
step
use the Tome of Divinity##6916
accept The Tome of Divinity##1646
|only if Dwarf Paladin
step
talk Tiza Battleforge##6179
|tip Upstairs inside the building.
turnin The Tome of Divinity##1646 |goto Ironforge 27.64,12.19
accept The Tome of Divinity##1647 |goto Ironforge 27.64,12.19
|only if Dwarf Paladin
step
talk John Turner##6175
|tip He walks around this area
turnin The Tome of Divinity##1647 |goto Ironforge 21.55,50.80
accept The Tome of Divinity##1648 |goto Ironforge 21.55,50.80
You can also find him around: |notinsticky
[22.93,61.36]
[32.40,78.58]
[43.09,84.17]
|only if Dwarf Paladin
step
Enter the building |goto Ironforge 26.14,72.21 < 10 |walk
talk Auctioneer Redmuse##8720
|tip Inside the building.
collect 10 Linen Cloth##2589 |q 1648/1 |goto Ironforge 24.25,74.57
|tip Buy them from the Auction House.
|only if Dwarf Paladin and selfmade
step
talk John Turner##6175
|tip He walks around this area
turnin The Tome of Divinity##1648 |goto Ironforge 21.55,50.80
accept The Tome of Divinity##1778 |goto Ironforge 21.55,50.80
You can also find him around: |notinsticky
[22.93,61.36]
[32.40,78.58]
[43.09,84.17]
|only if Dwarf Paladin
step
Enter the building |goto Ironforge 27.28,12.31 < 10 |only if walking
talk Tiza Battleforge##6179
|tip Upstairs inside the building.
turnin The Tome of Divinity##1778 |goto Ironforge 27.64,12.19
accept The Tome of Divinity##1779 |goto Ironforge 27.64,12.19
|only if Dwarf Paladin
step
talk Muiredon Battleforge##6178
|tip Upstairs inside the building.
turnin The Tome of Divinity##1779 |goto Ironforge 23.53,8.29
accept The Tome of Divinity##1783 |goto Ironforge 23.53,8.29
|only if Dwarf Paladin
step
Follow the road |goto Dun Morogh 49.69,46.36 < 30 |only if walking
Follow the path |goto Dun Morogh 73.14,49.95 < 30 |only if walking
use the Symbol of Life##6866
|tip Use it on Narm Faulk's corpse.
Resseurect Narm Faulk |q 1783/1 |goto Dun Morogh 78.32,58.09
|only if Dwarf Paladin
step
talk Narm Faulk##6177
turnin The Tome of Divinity##1783 |goto Dun Morogh 78.32,58.09
accept The Tome of Divinity##1784 |goto Dun Morogh 78.32,58.09
|only if Dwarf Paladin
step
kill Dark Iron Spy##6123+
collect Dark Iron Script##6847 |q 1784/1 |goto Dun Morogh 77.39,61.27
|only if Dwarf Paladin
step
Follow the road |goto Dun Morogh 72.88,49.82 < 30 |only if walking
Follow the path up |goto Dun Morogh 47.25,41.65 < 20 |only if walking
Enter Ironforge |goto Dun Morogh 53.47,34.90 < 20 |walk
Enter the building |goto Ironforge 27.28,12.31 < 15 |only if walking
talk Muiredon Battleforge##6178
|tip Upstairs inside the building.
turnin The Tome of Divinity##1784 |goto Ironforge 23.53,8.29
accept The Tome of Divinity##1785 |goto Ironforge 23.53,8.29
|only if Dwarf Paladin
step
talk Tiza Battleforge##6179
|tip Upstairs inside the building.
turnin The Tome of Divinity##1785 |goto Ironforge 27.64,12.19
|only if Dwarf Paladin
step
ding 20
|only if not hardcore
step
ding 24
|tip We are waiting until 24 becuase there will be a difficult quest coming up.
|tip You will need to defeat 3 waves of enemies.
|tip The first wave has 3 enemies, the second has 4 and the final has 5.
|tip Even at this level, you may still need help with this.
|only if hardcore
step
talk Duthorian Rall##6171
|tip Inside the building.
accept The Tome of Valor##1794 |goto Stormwind City 39.81,29.80 |or
accept The Tome of Valor##1793 |goto Stormwind City 39.81,29.80 |or
|only if Paladin
step
use the Tome of Valor##6776
accept The Tome of Valor##1649
|only if Paladin
step
talk Duthorian Rall##6171
turnin The Tome of Valor##1649 |goto Stormwind City 39.81,29.80
accept The Tome of Valor##1650 |goto Stormwind City 39.81,29.80
|only if Paladin
step
Follow the path up |goto Westfall 38.34,81.95 < 15 |only if walking
Follow the path down |goto Westfall 40.13,86.97 < 15 |only if walking
talk Daphne Stilwell##6182
|tip She walks around the area.
turnin The Tome of Valor##1650 |goto Westfall 42.71,88.40
accept The Tome of Valor##1651 |goto Westfall 42.71,88.40
|only if Paladin
step
kill Defias Raider##6180
|tip You may need help with this.
|tip They spawn in waves, the first has 3, the second has 4 and the third has 5.
Protect Daphne Stillwell from the Defias |q 1651/1 |goto Westfall 42.29,88.57
|only if Paladin
step
talk Daphne Stilwell##6182
|tip She walks around the area.
turnin The Tome of Valor##1651 |goto Westfall 42.71,88.40
accept The Tome of Valor##1652 |goto Westfall 42.71,88.40
|only if Paladin
step
talk Duthorian Rall##6171
turnin The Tome of Valor##1652 |goto Stormwind City 39.81,29.80
accept The Test of Righteousness##1653 |goto Stormwind City 39.81,29.80
|only if Paladin
step
talk Jordan Stilwell##6181
turnin The Test of Righteousness##1653 |goto Dun Morogh 52.48,36.92
accept The Test of Righteousness##1654 |goto Dun Morogh 52.48,36.92
|only if Paladin
step
_NOTE:_
Incoming Dungeon Steps
|tip The next couple of steps will be taking you to the Deadmines and Shadowfang Keep dungeons.
|tip You will need a group to complete the dungeon as well as the quest.
|tip If you don't have a group, wait until you do before continuing.
Click Here to Continue |confirm |q 1654 |future
|only if Paladin and hardcore
step
Enter the building |goto Westfall/0 42.57,71.83 < 5 |walk
Jump down here |goto Westfall/0 43.42,72.89 < 5 |walk
Follow the path |goto Westfall/0 42.40,75.87 < 10 |walk
Follow the path |goto Westfall/0 41.79,78.54 < 10 |walk
Jump down here |goto Westfall/0 39.64,78.12 < 10 |walk
Enter the Deadmines Dungeon with Your Group |goto The Deadmines/0 0.00,0.00 < 500 |c |q 1654
step
Inside the Deadmines Dungeon:
|tip You can skip this step for now and do it later if you're unable to get a group. |only if hardcore
kill Goblin Woodcarver##641
collect Whitestone Oak Lumber##6994 |q 1654/1
|only if Paladin
step
Enter the Shadowfang Keep Dungeon with Your Group |goto Shadowfang Keep/0 0.00,0.00 < 500 |c |q 1654
step
Inside the Shadowfang Keep Dungeon:
|tip You can skip this step for now and do it later if you're unable to get a group. |only if hardcore
click Jordan's Smithing Hammer##91138
|tip Inside the stable area of the dungeon.
collect Jordan's Smithing Hammer##6895 |q 1654/3
|only if Paladin
step
_NOTE:_
Incoming Elite Area
|tip The area you're about to venture into is surrounded by level 20 elite enemies.
|tip If you're able, you may want to get help before continuing.
Click Here to Continue |confirm |q 1655 |future
|only if Paladin and hardcore
step
talk Bailor Stonehand##6241
|tip Inside the building.
accept Bailor's Ore Shipment##1655 |goto Loch Modan 35.96,44.92
|only if Paladin
step
click Bailor's Ore##92420
|tip It looks like a crate next to a tree stump.
collect Jordan's Ore Shipment##6992 |q 1655/1 |goto Loch Modan 71.62,21.55
|only if Paladin
step
talk Bailor Stonehand##6241
|tip Inside the building.
|tip You may need help with this.
turnin Bailor's Ore Shipment##1655 |goto Loch Modan 35.96,44.92
collect Jordan's Ore Shipment##6992 |q 1654/2
|only if Paladin
step
talk Thundris Windweaver##3649
|tip Inside the building.
accept Seeking the Kor Gem##1442 |goto Darkshore 37.40,40.13
|only if Paladin
step
_NOTE:_
Incoming Elite Area
|tip The area you're about to venture into is surrounded by level 22 elite enemies.
|tip If you're able, you may want to get help before continuing.
Click Here to Continue |confirm |q 1442 |future
|only if Paladin and hardcore
step
Follow the path |goto Ashenvale 14.11,14.87 < 15 |only if walking
Jump down into the water |goto Kalimdor 43.97,35.37 < 20 |walk
Enter the underwater cave |goto Kalimdor 43.94,35.27 < 7 |walk
Kill Blackfathom enemies around this area
|tip They are elite enemies.
|tip You may need help with this. |only if not hardcore
|tip You will likely need help with this task unless you are overleveled. |only if hardcore
collect Corrupted Kor Gem##6995 |q 1442/1 |goto Kalimdor 43.82,35.14
|only if Paladin
step
talk Thundris Windweaver##3649
|tip Inside the building.
accept Seeking the Kor Gem##1442 |goto Darkshore 37.40,40.13
collect Purified Kor Gem##7083 |q 1654/4
|only if Paladin
step
talk Jordan Stilwell##6181
turnin The Test of Righteousness##1654 |goto Dun Morogh 52.48,36.92
accept The Test of Righteousness##1806 |goto Dun Morogh 52.48,36.92
|only if Paladin
step
Watch the dialogue
talk Jordan Stilwell##6181
turnin The Test of Righteousness##1806 |goto Dun Morogh 52.48,36.92
|only if Paladin
step
ding 40
step
talk Duthorian Rall##6171
|tip Inside the building.
accept The Tome of Nobility##1661 |goto Stormwind City 39.82,29.81
turnin The Tome of Nobility##1661 |goto Stormwind City 39.82,29.81
|only if Paladin
step
ding 52
step
talk Lord Grayson Shadowbreaker##928
|tip Inside the building.
accept Chillwind Point##8415 |goto Stormwind City 37.14,33.25
|only if Paladin
step
talk Commander Ashlam Valorfist##10838
turnin Chillwind Point##8415 |goto Western Plaguelands 42.70,84.03
accept Dispelling Evil##8414 |goto Western Plaguelands 42.70,84.03
|only if Paladin
step
Kill enemies around this area
|tip Avoid Flesh Golems that patrol around the area.
collect 20 Minion's Scourgestone##12840 |q 8414/1 |goto Western Plaguelands 40.65,70.27
You can find more around here [44.38,69.97]
|only if Paladin
step
talk High Priest Thel'danis##1854
|tip He patrols around the area.
turnin Dispelling Evil##8414 |goto Western Plaguelands 52.09,83.35
accept Inert Scourgestones##8416 |goto Western Plaguelands 52.09,83.35
|only if Paladin
step
talk Commander Ashlam Valorfist##10838
turnin Inert Scourgestones##8416 |goto Western Plaguelands 42.70,84.03
accept Forging the Mightstone##8418 |goto Western Plaguelands 42.70,84.03
|only if Paladin
step
_NOTE:_
Incoming Dungeon Step
|tip The next couple of steps will be taking you to the Sunken Temple dungeon.
|tip You will need a group to complete the dungeon as well as the quest.
|tip If you don't have a group, wait until you do before continuing.
Click Here to Continue |confirm |q 8236
|only if Paladin and hardcore
step
Run up the stairs |goto Swamp of Sorrows/0 69.36,56.89 < 7 |walk
Enter the building and swim under the water |goto Swamp of Sorrows/0 70.54,49.78 < 7 |walk
Run down the stairs |goto Swamp of Sorrows/0 72.69,42.22 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 75.69,45.78 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 78.62,47.47 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 80.22,49.62 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 81.33,42.38 < 7 |walk
Run down the stairs |goto Swamp of Sorrows/0 78.86,40.74 < 7 |walk
Run down the ramp |goto Swamp of Sorrows/0 76.85,38.82 < 7 |walk
Enter The Temple of Atal'Hakkar Dungeon with Your Group |goto The Temple of Atal'Hakkar/0 0.00,0.00 < 500 |c |q 8232 |future
|only if Paladin
stickystart "Blue_Voodoo_Feathers"
stickystart "Green_Voodoo_Feathers"
step
Inside the Temple of Atal'Hakkar:
collect 2 Amber Voodoo Feather##20606 |q 8418/1
|tip These come from Gasher and Zul'Lor.
|only if Paladin
step
label "Blue_Voodoo_Feathers"
Inside the Temple of Atal'Hakkar:
collect 2 Blue Voodoo Feather##20607 |q 8418/2
|tip These come from Mijan and Hukku.
|only if Paladin
step
label "Green_Voodoo_Feathers"
Inside the Temple of Atal'Hakkar:
collect 2 Green Voodoo Feather##20608 |q 8418/3
|tip These come from Zolo and Loro.
|only if Paladin
step
talk Commander Ashlam Valorfist##10838
turnin Forging the Mightstone##8418 |goto Western Plaguelands 42.70,84.03
|only if Paladin
step
ding 60
step
talk Duthorian Rall##6171
|tip Inside the building.
accept Lord Grayson Shadowbreaker##7638 |goto Stormwind City 39.82,29.80
|only if Paladin
step
talk Lord Grayson Shadowbreaker##928
|tip Inside the building.
turnin Lord Grayson Shadowbreaker##7638 |goto Stormwind City 37.14,33.27
accept Emphasis on Sacrifice##7637 |goto Stormwind City 37.14,33.27
|only if Paladin
step
Collect 150 Gold |complete _G.GetMoney() >= 1500000 |q 7637 |future
|only if Paladin
step
talk High Priest Rohan##11406
|tip He walks around inside the building.
turnin Emphasis on Sacrifice##7637 |goto Ironforge 26.98,7.30
accept To Show Due Judgment##7639 |goto Ironforge 26.98,7.30
|only if Paladin
step
talk Lord Grayson Shadowbreaker##928
|tip Inside the building.
turnin To Show Due Judgment##7639|goto Stormwind City 37.14,33.27
accept Exorcising Terrordale##7640 |goto Stormwind City 37.14,33.27
|only if Paladin
step
use the Exorcism Censer##18752
|tip Use it on the green circles on the ground around this area.
|tip The green circles can also appear inside buildings.
kill 25 Terrordale Spirit##14564 |q 7640/1 |goto Eastern Plaguelands 19.58,32.25
|tip 3 will spawn at a time.
|tip You may need help with this.
You can find more around here [17.92,31.06]
|only if Paladin
step
talk Lord Grayson Shadowbreaker##928
|tip Inside the building.
turnin xorcising Terrordale##7640|goto Stormwind City 37.14,33.27
accept The Work of Grimand Elmore##7641 |goto Stormwind City 37.14,33.27
|only if Paladin
step
talk Grimand Elmore##1416
|tip Inside the building.
turnin The Work of Grimand Elmore##7641 |goto Stormwind City 51.74,12.07
accept Collection of Goods##7642 |goto Stormwind City 51.74,12.07
|only if Paladin
step
Collect 150 Gold |complete _G.GetMoney() >= 1500000 |q 7642/5 |future
|only if Paladin
step
collect 10 Arthas##8836 |q 7642/2
|tip If you have the Herbalism profession, you can gather these.
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House. |only if not selfmade
|only if Paladin
step
collect 40 Runecloth##14047 |q 7642/3
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House. |only if not selfmade
|only if Paladin
step
collect 6 Arcanite Bar##12360 |q 7642/4
|tip These are made by Alchemists.
|tip It takes 1 Thorium Bar and 1 Arcane Crystal to make one.
|tip Try to find a Alchemist to create one for you.
|only if Paladin
step
_NOTE:_
Incoming Dungeon Step
|tip The next couple of steps will be taking you to the Stratholme (Undead) dungeon.
|tip You will need a group to complete the dungeon as well as the quest.
|tip If you don't have a group, wait until you do before continuing.
Click Here to Continue |confirm |q 7642
|only if Paladin and hardcore
step
click Elders' Square Service Gate |goto Eastern Plaguelands/0 47.88,23.87 < 10 |walk
|tip This requires the Key to the City, which drops from Magistrate barthilas in Stratholme - Live.
Enter the Stratholme - Undead Dungeon with Your Group |goto Stratholme/0 0.00,0.00 < 500 |c |q 7642
step
Inside the Stratholme - Undead Dungeon:
click Stratholme Supply Crate
|tip They look like brown boxes along the walls of the dungeon.
collect 5 Stratholme Holy Water##13180 |q 7642/1
|only if Paladin
step
talk Grimand Elmore##1416
|tip Inside the building.
turnin Collection of Goods##7642 |goto Stormwind City 51.74,12.07
|only if Paladin
step
Follow Grimand Elmore
Watch the dialogue
accept Grimand's Finest Work##7648 |goto Stormwind City 51.74,12.07
|only if Paladin
step
talk Lord Grayson Shadowbreaker##928
|tip Inside the building.
turnin Grimand's Finest Work##7648 |goto Stormwind City 37.14,33.27
accept Ancient Equine Spirit##7643 |goto Stormwind City 37.14,33.27
|only if Paladin
step
talk Argent Quartermaster Lightspark##10857
buy 20 Enriched Manna Biscuit##13724 |q 7643 |future |goto Western Plaguelands 42.84,83.72
|tip You must be Friendy with The Argent Dawn to purchase these.
|tip Quest at Light's Hope Chapel in Eastern Plaguelands to accomplish this.
|only if Paladin
step
Collect 50 Gold |complete _G.GetMoney() >= 500000 |q 7637 |future
|only if Paladin
step
talk Merideth Carlson##2357
|tip Standing inside the stable.
accept Manna-Enriched Horse Feed##7645 |goto Hillsbrad Foothills 52.18,55.50
|only if Paladin
step
talk Merideth Carlson##2357
|tip Standing inside the stable.
turnin Manna-Enriched Horse Feed##7645 |goto Hillsbrad Foothills 52.18,55.50
|only if Paladin
step
collect Manna-Enriched Horse Feed##18775 |q 7643/1
|only if Paladin
step
_NOTE:_
Incoming Dungeon Step
|tip The next couple of steps will be taking you to the Diremaul (West) dungeon.
|tip You will need a group to complete the dungeon as well as the quest.
|tip If you don't have a group, wait until you do before continuing.
Click Here to Continue |confirm |q 7643
|only if Paladin and hardcore
step
Run up the ramp |goto Feralas/0 59.13,44.67 < 20 |only if walking
Follow the path |goto Feralas/0 59.52,39.51 < 15 |only if walking
Continue following the path |goto Feralas/0 61.72,38.78 < 15 |only if walking
Continue following the path |goto Feralas/0 61.15,34.87 < 7 |only if walking
click Door |goto Feralas/0 60.32,30.16 < 10 |walk
|tip You need a Crescent Key to unlock this door.
|tip This drops from Pusillin in the "Dire Maul - East" dungeon.
Enter the Dire Maul - West Dungeon with Your Group |goto Dire Maul/0 0.00,0.00 < 500 |c |q 7643
step
Inside the Diremaul - West Dungeon:
kill Tendris Warpwood##11489
talk Ancient Equine Spirit##14566
|tip It appears after you kill Tendris Warpwood.
turnin Ancient Equine Spirit##7643
accept Blessed Arcanite Barding##7644
|only if Paladin
step
talk Lord Grayson Shadowbreaker##928
|tip Inside the building.
turnin Blessed Arcanite Barding##7644 |goto Stormwind City 37.14,33.27
accept The Divination Scryer##7646 |goto Stormwind City 37.14,33.27
|only if Paladin
step
collect 1 Azerothian Diamond##12800 |q 7646/1
|tip These are gathered with the mining profession.
|tip Refer to the Thorium farming guide to gather them.
|tip You can also purchase it from the auction house. |only if not selfmade
|only if Paladin
step
collect 1 Pristine Black Diamond##18335 |q 7646/2
|tip These are a random world drop.
|tip High level instance enemies have a chance to drop them.
|tip You can also purchase them from the auction house. |only if not selfmade
|only if Paladin
step
talk Lord Grayson Shadowbreaker##928
|tip Inside the building.
turnin The Divination Scryer##7646 |goto Stormwind City 37.14,33.27
accept Judgment and Redemption##7647 |goto Stormwind City 37.14,33.27
|only if Paladin
step
use Lord Grayson's Satchel##18804
collect Divination Scryer##18746
collect Blessed Arcanite Barding##18792 |q 7647/2
|only if Paladin
step
_NOTE:_
Incoming Dungeon Step
|tip The next couple of steps will be taking you to the Scholomance dungeon.
|tip You will need a group to complete the dungeon as well as the quest.
|tip If you don't have a group, wait until you do before continuing.
Click Here to Continue |confirm |q 7647
|only if Paladin and hardcore
step
Enter the Scholomance Dungeon with Your Group |goto Scholomance/0 0.00,0.00 < 500 |c
|tip This requires the Skeleton Key from the quest "The Key to Scholomance".
|only if Paladin
step
Inside the Scholomance Dungeon:
use the Divination Scryer##18746
|tip Use it in the room with the boss Rattlegore after you have cleared it.
Kill enemies around this area
|tip They will spawn in waves.
|tip Make sure your group is prepared before using the Divination Scryer.
|tip If you wipe you will need to abandon and restart the quest.
kill Death Knight Darkreaver##14516
collect Charger's Lost Soul##18749 |q 7647/1
|only if Paladin
step
Inside the Scholomance Dungeon:
use the Charger's Lost Soul##18749
talk Darkreaver's Fallen Charger##14568
turnin Judgment and Redemption##7647
|only if Paladin
]]
)
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Class Quests\\Warlock',
  {
    description = 'This guide will walk you through completing various Warlock Class Quests.',
  },
  [[
step
talk Drusilla La Salle##459
accept The Stolen Tome##1598 |goto Elwynn Forest 49.87,42.65
|only if Human Warlock
step
click Stolen Books##83763
collect Powers of the Void##6785 |q 1598/1 |goto Elwynn Forest 56.71,43.95
|only if Human Warlock
step
talk Drusilla La Salle##459
turnin The Stolen Tome##1598 |goto Elwynn Forest 49.87,42.65
|only if Human Warlock
step
talk Alamar Grimm##460
|tip Upstairs inside the building.
accept Beginnings##1599 |goto Dun Morogh 28.65,66.14
|only if Gnome Warlock
step
Enter the cave |goto Dun Morogh 26.80,79.86 < 15 |walk
Follow the path |goto Dun Morogh 28.00,81.05 < 10 |walk
kill Frostmane Novice##946+
|tip Inside the cave.
|tip There's only a few of them.
collect 3 Feather Charm##6753 |q 1599/1 |goto Dun Morogh 28.73,82.58
You can find more around: |notinsticky
[29.34,81.50]
[30.15,82.34]
[30.49,81.05]
|only if Gnome Warlock
step
Leave the cave |goto Dun Morogh 26.80,79.86 < 15 |c |q 1599
|only if Gnome Warlock
step
talk Alamar Grimm##460
|tip Upstairs inside the building.
turnin Beginnings##1599 |goto Dun Morogh 28.65,66.14
|only if Gnome Warlock
step
ding 10
step
Follow the path up |goto Dun Morogh 47.20,41.70 < 20 |only if walking
Enter Ironforge |goto Dun Morogh 53.47,34.90 < 20 |walk
talk Lago Blackwrench##6120
accept The Slaughtered Lamb##1715 |goto Ironforge 47.63,9.26
|only if Gnome Warlock
step
Follow the path |goto Ironforge 72.81,50.26 < 15 |walk
Enter the Deeprun Tram |goto Ironforge 77.02,51.26
Click Here After Entering Deeprun Tramp |confirm |q 1715
|only if Gnome Warlock
step
_Inside Deeprun Tram:_
Ride the Tram
|tip Ride the Deeprun Tram from Ironforge to Stormwind City.
Click Here After Riding the Tram |confirm |q 1715
|only if Gnome Warlock
step
_Inside Deeprun Tram:_
Enter Stormwind City |goto Stormwind City 62.94,9.36 < 2000 |noway |c |q 1715
|only if Gnome Warlock
step
Enter the building |goto Stormwind City 29.16,74.16 < 10 |walk
Follow the path down |goto Stormwind City 27.42,76.42 < 7 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin The Slaughtered Lamb##1715 |goto Stormwind City 25.26,78.56
accept Surena Caledon##1688 |goto Stormwind City 25.26,78.56
|only if Gnome Warlock
step
_NOTE:_
Incoming Difficult Quest
|tip The area where the next quest NPC is has a lot of potenial adds.
|tip Additionally, inside the building along side here are 2 other enemies.
Click Here to Continue |confirm |q 1688 |future
|only if (Gnome Warlock) and hardcore
step
Leave the building |goto Stormwind City 29.15,74.18 < 10 |walk
Leave Stormwind City |goto Stormwind City 71.02,89.03 < 30 |only if walking
Follow the road |goto Elwynn Forest 42.68,67.14 < 30 |only if walking
Follow the path |goto Elwynn Forest 64.57,74.00 < 30 |only if walking
Enter the building |goto Elwynn Forest 70.93,80.43 < 10 |walk
kill Surena Caledon##881
|tip Inside the building.
|tip There are other enemies inside the building that will pull with her. |only if hardcore
|tip If you clear the outer area, you might be able to utilize fear. |only if hardcore
|tip You may need help with this. |only if hardcore
collect Surena's Choker##6810 |q 1688/1 |goto Elwynn Forest 71.02,80.78
|only if Gnome Warlock
step
Follow the road |goto Elwynn Forest 65.65,74.10 < 30 |only if walking
Continue following the road |goto Elwynn Forest 42.11,64.65 < 30 |only if walking
Enter Stormwind City |goto Elwynn Forest 32.09,49.38 < 30 |only if walking
Enter the building |goto Stormwind City 29.15,74.18 < 10 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin Surena Caledon##1688 |goto Stormwind City 25.26,78.56
accept The Binding##1689 |goto Stormwind City 25.26,78.56
|only if Gnome Warlock
step
Follow the path down |goto Stormwind City 25.05,79.31 < 5 |walk
Run down the stairs |goto Stormwind City 24.28,78.62 < 7 |c |q 1689
|only if Gnome Warlock
step
Run down the stairs |goto Stormwind City 26.15,79.33 < 7 |walk
use the Bloodstone Choker##6928
|tip Use it while standing on the pink symbol on the ground.
|tip Downstairs inside the building, inside the crypt.
kill Summoned Voidwalker##5676 |q 1689/1 |goto Stormwind City 25.11,77.46
|tip Don't forget to summon your imp. |only if hardcore
|only if Gnome Warlock
step
Follow the path up |goto Stormwind City 26.03,79.83 < 7 |walk
Run up the stairs |goto Stormwind City 23.31,79.68 < 7 |c |q 1689
|only if Gnome Warlock
step
talk Gakin the Darkbinder##6122
|tip Upstairs inside the building, in the basement above the crypt.
turnin The Binding##1689 |goto Stormwind City 25.25,78.53
|only if Gnome Warlock
step
Enter the building |goto Elwynn Forest 38.9,68.4 < 10 |walk
talk Remen Marcot##6121
|tip Downstairs inside the building.
accept Gakin's Summons##1685 |goto Elwynn Forest 44.49,66.27
|only if (Human Warlock) and not haveq(1688) and not completedq(1688)
step
Enter the building |goto Stormwind City 29.15,74.18 < 10 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin Gakin's Summons##1685 |goto Stormwind City 25.26,78.56
accept Surena Caledon##1688 |goto Stormwind City 25.26,78.56
|only Human Warlock
step
_NOTE:_
Incoming Difficult Quest
|tip The area where the next quest NPC is has a lot of potenial adds.
|tip Additionally, inside the building along side here are 2 other enemies.
Click Here to Continue |confirm |q 1688 |future
|only if (Human Warlock) and hardcore
step
Leave the building |goto Stormwind City 29.15,74.18 < 10 |walk
Leave Stormwind City |goto Stormwind City 71.02,89.03 < 30 |only if walking
Follow the road |goto Elwynn Forest 42.68,67.14 < 30 |only if walking
Follow the path |goto Elwynn Forest 64.57,74.00 < 30 |only if walking
Enter the building |goto Elwynn Forest 70.93,80.43 < 10 |walk
kill Surena Caledon##881
|tip Inside the building.
|tip There are other enemies inside the building that will pull with her. |only if hardcore
|tip If you clear the outer area, you might be able to utilize fear.|only if hardcore
|tip You may need help with this. |only if hardcore
collect Surena's Choker##6810 |q 1688/1 |goto Elwynn Forest 71.02,80.78
|only if Human Warlock
step
Follow the road |goto Elwynn Forest 65.65,74.10 < 30 |only if walking
Continue following the road |goto Elwynn Forest 42.11,64.65 < 30 |only if walking
Enter Stormwind City |goto Elwynn Forest 32.09,49.38 < 30 |only if walking
Enter the building |goto Stormwind City 29.15,74.18 < 10 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin Surena Caledon##1688 |goto Stormwind City 25.26,78.56
accept The Binding##1689 |goto Stormwind City 25.26,78.56
|only Human Warlock
step
Follow the path down |goto Stormwind City 25.05,79.31 < 7 |walk
Run down the stairs |goto Stormwind City 24.28,78.62 < 7 |walk
Run down the stairs |goto Stormwind City 26.15,79.33 < 7 |walk
use the Bloodstone Choker##6928
|tip Use it while standing on the pink symbol on the ground.
|tip Downstairs inside the building, inside the crypt.
kill Summoned Voidwalker##5676 |q 1689 |goto Stormwind City 25.11,77.46
|tip Don't forget to summon your imp. |only if hardcore
|only if Human Warlock
step
Follow the path up |goto Stormwind City 26.03,79.83 < 7 |walk
Run up the stairs |goto Stormwind City 23.31,79.68 < 7 |walk
talk Gakin the Darkbinder##6122
|tip Upstairs inside the building, in the basement above the crypt.
turnin The Binding##1689 |goto Stormwind City 25.25,78.53
|only if Human Warlock
step
ding 20
step
talk Lago Blackwrench##6120
accept Gakin's Summons##1717 |goto Ironforge 47.62,9.26
|only if Warlock and not haveq(1716) and not completedq(1716)
step
Enter the building |goto Stormwind City 29.14,74.17 < 7 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin Gakin's Summons##1717 |goto Stormwind City 25.26,78.56
accept Devourer of Souls##1716 |goto Stormwind City 25.26,78.56
|only if Warlock
step
Leave the building |goto Stormwind City 29.14,74.17 < 7 |walk
Follow the road |goto Darkshore 39.98,47.69 < 30 |only if walking
Enter Ashenvale |goto Darkshore 43.05,93.50 < 30 |only if walking
Follow the road |goto Ashenvale 29.63,17.12 < 30 |only if walking
talk Daelyshia##4267
fpath Astranaar |goto Ashenvale 34.41,47.99
|only if Warlock
step
Follow the road |goto Ashenvale 38.91,57.93 < 30 |only if walking
Follow the road |goto Ashenvale 67.13,71.87 < 30 |only if walking
Enter the Barrens |goto The Barrens 48.99,5.39 < 20 |only if walking
Follow the road |goto The Barrens 48.55,13.02 < 30 |only if walking
Avoid the Crossroads |goto The Barrens 53.91,30.00 < 30 |only if walking
Follow the road |goto The Barrens 50.43,37.77 < 30 |only if walking
talk Takar the Seer##6244
turnin Devourer of Souls##1716 |goto The Barrens 49.31,57.10
accept Heartswood##1738 |goto The Barrens 49.31,57.10
|only if Warlock
step
Follow the road |goto The Barrens 51.03,50.04 < 30 |only if walking
Avoid the Crossroads |goto The Barrens 53.68,29.52 < 30 |only if walking
Follow the road |goto The Barrens 51.18,15.34 < 30 |only if walking
Enter Ashenvale |goto The Barrens 48.98,5.37 < 20 |only if walking
Follow the road |goto Ashenvale 68.53,84.01 < 30 |only if walking
Continue following the road |goto Ashenvale 66.87,71.29 < 30 |only if walking
Follow the path |goto Ashenvale 26.14,35.41 < 30 |only if walking
click Heartswood##93192
collect Heartswood##6912 |q 1738/1 |goto Ashenvale 31.49,31.45
|only if Warlock
step
Follow the road |goto Ashenvale 25.58,36.45 < 30 |only if walking
Enter the building |goto Stormwind City 29.14,74.17 < 7 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin Heartswood##1738 |goto Stormwind City 25.26,78.56
accept The Binding##1739 |goto Stormwind City 25.26,78.56
|only if Warlock
step
Follow the path down |goto Stormwind City 24.96,79.42 < 7 |walk
Run down the stairs |goto Stormwind City 24.30,78.63 < 7 |walk
Run down the stairs |goto Stormwind City 26.16,79.32 < 7 |walk
use the Heartswood Core##6913
|tip Use it while standing on the pink symbol on the ground.
|tip Downstairs inside the building, inside the crypt.
kill Summoned Succubus##5677 |q 1739/1 |goto Stormwind City 25.11,77.46
|only if Warlock
step
Follow the path up |goto Stormwind City 26.03,79.83 < 7 |walk
Run up the stairs |goto Stormwind City 23.31,79.68 < 7 |walk
talk Gakin the Darkbinder##6122
|tip Upstairs inside the building, in the basement above the crypt.
turnin The Binding##1739 |goto Stormwind City 25.25,78.56
|only if Warlock
step
ding 30
step
Enter the building |goto Stormwind City 29.10,74.17 < 8 |walk
talk Gakin the Darkbinder##6122
|tip Inside the building.
accept Seeking Strahad##1798 |goto Stormwind City 25.25,78.54
|only if Warlock
step
Follow the path up |goto The Barrens 61.93,36.72 < 15
talk Strahad Farsan##6251
turnin Seeking Strahad##1798 |goto The Barrens 62.63,35.50
accept Tome of the Cabal##1758 |goto The Barrens 62.63,35.50
|only if Warlock
step
talk Krom Stoutarm##6294
|tip Inside the building.
turnin Tome of the Cabal##1758 |goto Ironforge 74.21,9.42
accept Tome of the Cabal##1802 |goto Ironforge 74.21,9.42
|only if Warlock
step
Follow the path down |goto Hillsbrad Foothills 36.94,65.37 < 30 |only if walking
click Tome of the Cabal##92013
|tip It looks like a blue book on the ground next to some crates.
|tip Try to pull the murlocs away one at a time when possible. |only if hardcore
collect Moldy Tome##6931 |q 1802/1 |goto Hillsbrad Foothills 27.78,72.78
|only if Warlock
step
Enter the cave |goto Thousand Needles 44.09,37.29 < 10 |walk
click Damaged Chest##92423
collect Tattered Manuscript##6997 |q 1802/2 |goto Thousand Needles 43.43,32.69
|only if Warlock
step
talk Krom Stoutarm##6294
|tip Inside the building.
turnin Tome of the Cabal##1802 |goto Ironforge 74.21,9.42
accept Tome of the Cabal##1804 |goto Ironforge 74.21,9.42
|only if Warlock
step
Follow the path up |goto Wetlands 42.83,41.04
Kill Dragonmaw enemies around this area
collect 3 Rod of Channeling##6930 |q 1804/1 |goto Wetlands 45.09,43.08
|tip They drop from Dragonmaw Bonewarders and Shadowwarders.
You can find more around here [49.48,48.47]
|only if Warlock
step
Follow the path up |goto The Barrens 61.93,36.72 < 15
talk Strahad Farsan##6251
turnin Tome of the Cabal##1804 |goto The Barrens 62.63,35.50
accept The Binding##1471 |goto The Barrens 62.63,35.50
|only if Warlock
step
use the Tome of the Cabal##6999
|tip Use it inside the building.
kill Summoned Felhunter##6268 |q 1471/1 |goto The Barrens 62.60,35.28
|only if Warlock
step
talk Strahad Farsan##6251
turnin The Binding##1471 |goto The Barrens 62.63,35.50
|only if Warlock
step
ding 40
step
Enter the building |goto Stormwind City 29.07,74.24 < 8 |walk
talk Demisette Cloyce##461
|tip Inside the building.
accept Summon Felsteed##4487 |goto Stormwind City 25.30,78.23 |or
accept Summon Felsteed##4488 |goto Stormwind City 25.30,78.23 |or
|only if Warlock
step
Follow the path up |goto The Barrens 61.93,36.72 < 15
talk Strahad Farsan##6251
turnin Summon Felsteed##4487 |goto The Barrens 62.63,35.50 |or
turnin Summon Felsteed##4488 |goto The Barrens 62.63,35.50 |or
accept Summon Felsteed##4490 |goto The Barrens 62.63,35.50
|only if Warlock
step
talk Strahad Farsan##6251
turnin Summon Felsteed##4490 |goto The Barrens 62.63,35.50
|only if Warlock
step
ding 53
|only if not hardcore
step
ding 55
|only if hardcore
step
_NOTE:_
Silithus Dailies Available
|tip Silithus dailies are now available and offer a good chunk of daily XP.
|tip You'll need to travel to Silithus and find a group willing to take a level 55 player.
step
collect 1 Fel Cloth##14256 |q 8420 |future
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House. |only if not selfmade
|only if Warlock
step
talk Niby the Almighty##14469
accept What Niby Commands##7601 |goto Felwood 41.38,44.86
|only if Warlock
step
talk Impsy##14470
turnin What Niby Commands##7601 |goto Felwood 41.36,45.02
accept Flawless Fel Essence##7602 |goto Felwood 41.36,45.02
accept Hot and Itchy##8420 |goto Felwood 41.36,45.02
'|accept The Wrong Stuff##8421 |or
|only if Warlock
step
talk Impsy##14470
turnin Hot and Itchy##8420 |goto Felwood 41.36,45.02 |only if haveq(8420) or completedq(8420)
accept The Wrong Stuff##8421 |goto Felwood 41.36,45.02
|only if Warlock
step
kill Tainted Ooze##7092+
collect 4 Bloodvenom Essence##20614 |q 8421/2 |goto Felwood 40.92,46.83
You can find more around here [41.93,49.75]
|only if Warlock
step
Kill enemies around this area
collect 10 Rotting Wood##20613 |q 8421/1 |goto Felwood 46.89,24.16
You can find more around here [52.81,21.50]
|only if Warlock
step
talk Impsy##14470
turnin The Wrong Stuff##8421 |goto Felwood 41.36,45.02
accept Trolls of a Feather##8422 |goto Felwood 41.36,45.02
|only if Warlock
step
Enter the building |goto Felwood 35.39,58.54 < 8 |walk
kill Jaedenar Legionnaire##9862
|tip They are found throughout the Shadow Hold.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Flawless Fel Essence (Jaedenar)##18622 |q 7602/2 |goto Felwood 36.25,55.94
|only if Warlock
step
Kill Legashi enemies around this area
collect Flawless Fel Essence (Azshara)##18624 |q 7602/1 |goto Azshara 52.03,18.65
You can find more around here
[61.22,24.87]
[66.09,16.86]
|only if Warlock
step
kill Felguard Sentry##6011
collect Flawless Fel Essence (Dark Portal)##18623 |q 7602/3 |goto Blasted Lands 61.32,54.18
You can find more around here [54.03,54.60]
|only if Warlock
step
_NOTE:_
Incoming Dungeon Step
|tip The next couple of steps will be taking you to the Sunken Temple dungeon.
|tip You will need a group to complete the dungeon as well as the quest.
|tip If you don't have a group, wait until you do before continuing.
Click Here to Continue |confirm |q 8236
|only if Warlock and hardcore
step
Run up the stairs |goto Swamp of Sorrows/0 69.36,56.89 < 7 |walk
Enter the building and swim under the water |goto Swamp of Sorrows/0 70.54,49.78 < 7 |walk
Run down the stairs |goto Swamp of Sorrows/0 72.69,42.22 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 75.69,45.78 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 78.62,47.47 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 80.22,49.62 < 7 |walk
Follow the path |goto Swamp of Sorrows/0 81.33,42.38 < 7 |walk
Run down the stairs |goto Swamp of Sorrows/0 78.86,40.74 < 7 |walk
Run down the ramp |goto Swamp of Sorrows/0 76.85,38.82 < 7 |walk
Enter The Temple of Atal'Hakkar Dungeon with Your Group |goto The Temple of Atal'Hakkar/0 0.00,0.00 < 500 |c |q 8232 |future
|only if Warlock
stickystart "Blue_Voodoo_Feathers"
stickystart "Green_Voodoo_Feathers"
step
Inside the Temple of Atal'Hakkar Dungeon:
collect 2 Amber Voodoo Feather##20606 |q 8422/1
|tip These come from Gasher and Zul'Lor.
|only if Warlock
step
label "Blue_Voodoo_Feathers"
Inside the Temple of Atal'Hakkar Dungeon:
collect 2 Blue Voodoo Feather##20607 |q 8422/2
|tip These come from Mijan and Hukku.
|only if Warlock
step
label "Green_Voodoo_Feathers"
Inside the Temple of Atal'Hakkar Dungeon:
collect 2 Green Voodoo Feather##20608 |q 8422/3
|tip These come from Zolo and Loro.
|only if Warlock
step
talk Impsy##14470
turnin Flawless Fel Essence##7602 |goto Felwood 41.36,45.02
turnin Trolls of a Feather##8422 |goto Felwood 41.36,45.02
accept Kroshius' Infernal Core##7603 |goto Felwood 41.36,45.02
|only if Warlock
step
Follow the road |goto Felwood 38.76,41.70 < 25 |only if walking
Continue following the road |goto Felwood 39.01,37.86 < 25 |only if walking
Follow the path |goto Felwood 41.25,36.95 < 25 |only if walking
use the Fel Fire##18626
kill Kroshius##14467
|tip You may need help.
collect Kroshius' Infernal Core##18625 |q 7603/1 |goto Felwood 45.73,34.81
|only if Warlock
step
talk Niby the Almighty##14469
turnin Kroshius' Infernal Core##7603 |goto Felwood 41.38,44.86
|only if Warlock
step
ding 60
step
collect 35 Black Dragonscale##15416 |q 7628 |future
|tip These are gathered with the Skinning profession.
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House. |only if not selfmade
|only if Warlock
step
collect 10 Elixir of Shadow Power##9264 |q 7626 |future
|tip These are with the Alchemy profession.
|tip It takes 3 Ghost Mushrooms and a Crystal Vial to make one.
|tip You can also purchase them from the Auction House. |only if not selfmade
|only if Warlock
step
collect 6 Large Brilliant Shard##14344 |q 7627 |future
|tip If you have the Enchanting profession, use your Disenchant ability on level 51-60 blue weapons and armor.
|tip You can also buy them from the Auction House. |only if not selfmade
|only if Warlock
step
collect 25 Dark Iron Ore##11370 |q 7627 |future
|tip If you have the Mining profession, you can gather these.
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House. |only if not selfmade
|only if Warlock
step
collect 3 Arcanite Bar##12360 |q 7630 |future
|tip These are with the Alchemy profession.
|tip It takes 1 Thorium Bar and 1 Arcane Crystal to make one.
|tip Try to find a Alchemist to create one for you.
|tip You can also purchase them from the Auction House. |only if not selfmade
|only if Warlock
step
Collect 250 Gold |complete _G.GetMoney() >= 2500000 |q 7637 |future
|only if Warlock
step
talk Spackle Thornberry##5520
|tip Downstairs inside the building.
accept Mor'zul Bloodbringer##7562 |goto Stormwind City 25.66,77.66
|only if Warlock
step
Follow the path |goto Burning Steppes 15.46,40.26 < 15 |only if walking
talk Mor'zul Bloodbringer##14436
turnin Mor'zul Bloodbringer##7562 |goto Burning Steppes 12.69,31.64
accept Rage of Blood##7563 |goto Burning Steppes 12.69,31.64
|only if Warlock
step
Enter the cave |goto Winterspring 65.04,18.78 < 10 |walk
Kill Owlbeast enemies around this area
|tip Watch for respawns while in the area. |only if hardcore
collect 30 Raging Beast's Blood##18590 |goto Winterspring 63.65,16.33
|only if Warlock
step
Follow the path |goto Burning Steppes 15.46,40.26 < 15 |only if walking
talk Mor'zul Bloodbringer##14436
turnin Rage of Blood##7563 |goto Burning Steppes 12.69,31.64
accept Wildeyes##7564 |goto Burning Steppes 12.69,31.64
|only if Warlock
step
talk Gorzeeki Wildeyes##14437
turnin Wildeyes##7564 |goto Burning Steppes 12.43,31.63
accept Lord Banehollow##7623 |goto Burning Steppes 12.43,31.63
|only if Warlock
step
talk Mor'zul Bloodbringer##14436
accept Bell of Dethmoora##7626 |goto Burning Steppes 12.69,31.64
accept Wheel of the Black March##7627 |goto Burning Steppes 12.69,31.64
accept Doomsday Candle##7628 |goto Burning Steppes 12.69,31.64
|only if Warlock
step
talk Gorzeeki Wildeyes##14437
turnin Bell of Dethmoora##7626 |goto Burning Steppes 12.43,31.63
turnin Wheel of the Black March##7627 |goto Burning Steppes 12.43,31.63
turnin Doomsday Candle##7628 |goto Burning Steppes 12.43,31.63
accept Arcanite##7630 |goto Burning Steppes 12.43,31.63
|only if Warlock
step
talk Gorzeeki Wildeyes##14437
turnin Arcanite##7630 |goto Burning Steppes 12.43,31.63
|only if Warlock
step
talk Gorzeeki Wildeyes##14437
buy 6 Shadowy Potion##18802 |q 7623 |goto Burning Steppes 12.43,31.63
|only if Warlock
step
use the Shadowy Potion##18802
|tip use it before you enter Shadow Hold.
|tip It will make most enemies inside friendly for 20 minutes.
Enter the building |goto Felwood 35.42,58.61 < 10 |walk
Run down the ramp |goto Felwood 35.47,58.18 < 10 |walk
Run down the ramp |goto Felwood 36.04,56.42 < 10 |walk
Run up the ramp |goto Felwood 36.69,55.99 < 10 |walk
Follow the path down |goto Felwood 36.64,54.91 < 10 |walk
Run down the ramp |goto Felwood 38.19,54.10 < 5 |c |q 7623 |walk
|only if Warlock
step
Follow the path |goto Felwood 37.10,54.04 < 10 |walk
Cross the water |goto Felwood 37.61,52.21 < 10 |walk
Follow the path up |goto Felwood 36.26,52.52 < 10 |walk
Run down the ramp |goto Felwood 37.20,50.82 < 10 |walk
Continue down the ramp |goto Felwood 38.90,49.72 < 10 |c |q 7623 |walk
|only if Warlock
step
Follow the path	|goto Felwood 39.85,49.23 < 10 |walk
Follow the path |goto Felwood 40.04,47.80 < 10 |walk
Follow the path up |goto Felwood 38.56,46.06 < 10 |walk
Follow the path up |goto Felwood 37.43,46.24 < 10 |walk
Cross the bridge |goto Felwood 38.03,46.52 < 10 |walk
Cross the bridge |goto Felwood 37.33,47.22 < 10 |c |q 7623 |walk
|only if Warlock
step
use the Shadowy Potion##18802
|tip You need to have this buff for the next step.
Get the Taint of Shadow Buff |havebuff Taint of Shadow##23179
|only if Warlock
step
talk Lord Banehollow##9516
|tip Inside the cave.
turnin Lord Banehollow##7623 |goto Felwood 35.93,44.41
accept Ulathek the Traitor##7624 |goto Felwood 35.93,44.41
|only if Warlock
step
Cross the bridge |goto Felwood 36.20,46.09 < 10 |walk
Cross the bridge |goto Felwood 37.95,47.27 < 10 |walk
Run down the ramp |goto Felwood 37.94,45.39 < 10 |walk
Follow the path |goto Felwood 37.65,46.62 < 10 |walk
Continue following the path |goto Felwood 39.57,47.05 < 10 |walk
Cross the bridge |goto Felwood 40.06,48.94 < 10 |c |q 7624 |walk
talk Ulathek##14523
Remove the Taint of Shadow buff |nobuff Taint of Shadow##23179 |q 7624 |goto Felwood 39.89,49.17
|only if Warlock
step
Cross the bridge |goto Felwood 40.02,48.99 < 10 |walk
kill Ulathek##14523
collect The Traitor's Heart##18719 |q 7624/1 |goto Felwood 40.77,48.42
|only if Warlock
step
use the Shadowy Potion##18802
Get the Taint of Shadow Buff |havebuff Taint of Shadow##23179 |q 7624
|only if Warlock
step
Cross the bridge |goto Felwood 40.49,48.48 < 10 |walk
Run down the ramp |goto Felwood 40.04,47.71 < 10 |walk
Run up the ramp |goto Felwood 38.49,46.17 < 10 |walk
Follow the path |goto Felwood 38.22,46.82 < 10 |walk
Run up the ramp |goto Felwood 37.35,45.87 < 10 |c |q 7625 |walk
|only if Warlock
step
Cross the bridge |goto Felwood 38.03,46.48 < 10 |walk
Cross the bridge |goto Felwood 37.46,47.35 < 10 |walk
talk Lord Banehollow##9516
|tip Inside the cave.
turnin Ulathek the Traitor##7624 |goto Felwood 35.93,44.41
accept Xorothian Stardust##7625 |goto Felwood 35.93,44.41
|only if Warlock
step
talk Ur'dan##14522
|tip Inside the cave.
buy Xorothian Stardust##18687 |q 7625/1 |goto Felwood 36.17,44.46
|only if Warlock
step
Follow the path |goto Burning Steppes 15.46,40.26 < 15 |only if walking
talk Gorzeeki Wildeyes##14437
turnin Xorothian Stardust##7625 |goto Burning Steppes 12.43,31.63
accept Imp Delivery##7629 |goto Burning Steppes 12.43,31.63
|only if Warlock
step
_NOTE:_
Incoming Dungeon Steps
|tip The next few steps will send you into 2 different dungeons: Scholomance and then Dire Maul - West.
|tip You will need a group for each instance.
Click Here to Continue |confirm |q 7629 |future
|only if Warlock
step
Enter the Scholomance Dungeon with Your Group |goto Scholomance/0 0.00,0.00 < 500 |c
|tip This requires the Skeleton Key from the quest "The Key to Scholomance".
|only if Warlock
step
Inside the Scholomance Dungeon:
use Imp in a Jar##18688
|tip Use it near the Alchemy Station at the start of the room with Ras Frostwhisper.
Watch the dialogue
Create the Parchment |q 7629/1
|only if Warlock
step
Follow the path |goto Burning Steppes 15.46,40.26 < 15 |only if walking
talk Gorzeeki Wildeyes##14437
turnin Imp Delivery##7629 |goto Burning Steppes 12.43,31.63
|only if Warlock
step
talk Gorzeeki Wildeyes##14437
buy J'eevee's Jar##18663 |q 7631 |future |goto Burning Steppes 12.43,31.63
buy Black Lodestone##18629 |q 7631 |future |goto Burning Steppes 12.43,31.63
buy Xorothian glyphs##18670 |q 7631 |future |goto Burning Steppes 12.43,31.63
|only if Warlock
step
talk Mor'zul Bloodbringer##14436
accept Dreadsteed of Xoroth##7631 |goto Burning Steppes 12.69,31.64
|only if Warlock
step
Inside the Dire Maul - West Dungeon:
use J'eevee's Jar##18663
|tip Use it in the area where Immol'thar is.
|tip Clear the room before starting.
Kill enemies around this area
|tip Focus on Dread Guards as they appear.
|tip They will spawn in waves after using J'eevee's Jar.
|tip Recharge the Bell, Wheel and Candle as they run out of charges.
|tip They will tilt when they need to be recharged.
|tip Use the "Black Lodestone" to fix them, which costs a soul shard.
use Xorothian glyphs##18670
kill Xorothian Dreadsteed##14502
|tip At 50% health, Lord Hel'nurath will appear and need to be killed.
talk Dreadsteed Spirit##14504
turnin Dreadsteed of Xoroth##7631
|only if Warlock
]]
)
