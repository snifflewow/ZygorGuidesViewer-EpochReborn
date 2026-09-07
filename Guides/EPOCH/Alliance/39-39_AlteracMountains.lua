local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Alterac Mountains (39-39)',
  {
    next = 'Leveling Guides\\Arathi Highlands (39-40)',
  },
  [[
step
Enter the building |goto Hillsbrad Foothills,50.45,58.55,10 |walk
talk Innkeeper Anderson##2352
.tip Inside the building.
home Southshore |goto Hillsbrad Foothills 51.17,58.93
step
talk Raleigh the Devout##3980
.tip He's upstairs in the inn.
turnin Down the Scarlet Path##1052 |goto Hillsbrad Foothills 51.40,58.60
accept In the Name of the Light##1053 |goto Hillsbrad Foothills 51.46,58.36 |only if guideflag("SMflag")
step
Prepare for Scarlet Monastery
.tip It will be a good time to start Scarlet Monastery soon.
.tip We will do Library, Armory and Cathedral.
.tip You should run it after finishing the quests from this guide, roughly 45 minutes.
.tip Start looking for a group.
|confirm
|only if guideflag("SMflag")
step
use Assassin's Contract##3668
accept Assassin's Contract##522 |goto Hillsbrad Foothills 48.14,59.11
|only if itemcount(3668) == 1
step
Enter the building |goto Hillsbrad Foothills,49.01,59.12,10 |walk
talk Magistrate Henry Maleb##2276
.tip Inside the building.
turnin Further Mysteries##525 |goto Hillsbrad Foothills 48.14,59.11
accept Dark Council##537 |goto Hillsbrad Foothills 48.14,59.11
accept Noble Deaths##512 |goto Hillsbrad Foothills 48.14,59.11
accept Crushridge Bounty##500 |goto Hillsbrad Foothills 48.14,59.11
turnin Assassin's Contract##522 |goto Hillsbrad Foothills 48.14,59.11 |only if itemcount(3668) == 1
step
talk Magistrate Henry Maleb##2276
accept Baron's Demise##523 |goto Hillsbrad Foothills 48.14,59.11
|only if completedq(522)
step
Leave the building |goto Hillsbrad Foothills,49.01,59.12,10 |walk |only if subzone("Southshore Town Hall")
talk Archmage Ansirem Runeweaver##2543
turnin Magical Analysis##602 |goto Alterac Mountains 18.84,78.49
step
Watch the dialogue
talk Archmage Ansirem Runeweaver##2543
accept Ansirem's Key##603 |goto Alterac Mountains 18.84,78.49
stickystart "Collect_Alterac_Signet_Rings"
step
Follow the past up the coast |goto Alterac Mountains,23.21,51.60,70 |only if walking and subzone("Dalaran")
Enter the building |goto Alterac Mountains,39.45,15.38,10 |walk
kill Nagaz##2320
.tip Inside the building.
.tip Be careful, some enemies around this area can be stealthed.	|only if not hardcore
.tip There are several enemies between the door and Nagaz.		|only if hardcore
.tip You will almost always aggro another enemy from inside.		|only if hardcore
.tip Enemies may run away in fear when at low health.			|only if hardcore
.tip Clear enemies outside before pulling from inside.			|only if hardcore
.tip Watch for respawns while you are attempting to clear your way.	|only if hardcore
collect Head of Nagaz##3672 |q 537/2 |goto Alterac Mountains 39.22,14.31
step
click Worn Wooden Chest##1765
.tip Inside the building.
.tip Try not to linger while inside the building.	|only if hardcore
.tip Enemies tend to respawn quickly around here.	|only if hardcore
collect Ensorcelled Parchment##3706 |goto Alterac Mountains 39.18,14.66 |q 26518 |future
step
use the Ensorcelled Parchment##3706
accept The Ensorcelled Parchment##26518
|only if itemcount(3706) > 0
stickystart "Collect_Alterac_Signet_Rings"
stickystart "Kill_Baron_ATM"
step
kill 4 Argus Shadow Mage##2318 |q 537/1 |goto Alterac Mountains 62.31,43.49
.tip Inside the buildings and at the camps around this area.
.tip Be careful to slowly pull enemies one by one, this area can be very dangerous.
.tip These enemies deal a lot of damage.		|only if hardcore
.tip Watch for stealthed enemies.			|only if hardcore
.tip Watch for respawns and patrols around here.	|only if hardcore
You can usually find another one around [57.51,46.13]
step
label "Collect_Alterac_Signet_Rings"
Kill Syndicate enemies around this area
.tip Be careful, some of them can be stealthed.		|notinsticky
.tip These enemies deal a lot of damage.		|only if hardcore |notinsticky
.tip Watch for respawns and patrols around here.	|only if hardcore |notinsticky
collect 7 Alterac Signet Ring##3505 |q 512/1 |goto Alterac Mountains 62.31,43.49
You can find more around [58.20,44.87]
step
label "Kill_Baron_ATM"
kill Baron Vardus##2306
.tip He can spawn at any of the camps in the area
.tip Be careful to slowly pull enemies one by one, this area can be very dangerous. |notinsticky
collect Head of Baron Vardus##3626 |q 523 |goto Alterac Mountains 62.31,43.49
step
use a Nature Protection Potion##6052
.tip You are about to accept a quest soon to kill a level 40 elite enemy.
.tip You will need to use another Nature Protection Potion during the fight, so use one now, and wait until your potion cooldown is finished before accepting the quest in the next step.
.tip The potion lasts 1 hour, so you have plenty of time to get to the quest location in a few steps.
Click Here to Continue |confirm |q 1713 |future
|only if Warrior and itemcount(6052) > 0
step
click Bah'rah's Cauldron
.tip Follow the river north to travel to this location.
.tip Complete the "Essence of the Exile" quest.
collect Essence of the Exile##6851 |q 1712/3 |goto Alterac Mountains 79.32,66.81
|only if Warrior
step
talk Bath'rah the Windwatcher##6176
.tip Inside the building.
turnin Cyclonian##1712 |goto Alterac Mountains 80.50,66.92
accept The Summoning##1713 |goto Alterac Mountains 80.50,66.92 |noautoaccept
.tip Make sure your potion cooldown is finished before accepting this quest.
|only if Warrior
step
Watch the dialogue
.tip Follow Bath'rah the Windwatcher as he walks.
.tip He will summon Cyclonian, a level 40 elite.
kill Cyclonian##6239
.tip Use the other Nature Protection Potion when the effect of the first one ends. |only if itemcount(6052) > 0
.tip If you have trouble, try to find someone to help you.
collect Whirlwind Heart##6894 |q 1713/1 |goto Alterac Mountains 80.60,62.52
|only if Warrior
step
talk Bath'rah the Windwatcher##6176
.tip Inside the building.
turnin The Summoning##1713 |goto Alterac Mountains 80.50,66.92
accept Whirlwind Weapon##1792 |goto Alterac Mountains 80.50,66.92 |instant
|only if Warrior
step
Avoid Tarren Mill and follow the path the Hinterlands |goto Hillsbrad Foothills,84.06,32.80,70 |only if walking and not zone("The Hinterlands")
Follow the path up |goto The Hinterlands,13.50,47.99,20 |only if walking
talk Falstad Wildhammer##5635
turnin To The Hinterlands##1449 |goto The Hinterlands 11.81,46.76
accept Gryphon Master Talonaxe##1450 |goto The Hinterlands 11.81,46.76
step
talk Guthrum Thunderfist##8018
.tip At the top of the path.
fpath Aerie Peak |goto The Hinterlands 11.07,46.15
step
Enter the building |goto The Hinterlands,11.00,45.67,10 |walk
talk Gryphon Master Talonaxe##5636
.tip Inside the building.
turnin Gryphon Master Talonaxe##1450 |goto The Hinterlands 9.76,44.48
accept Rhapsody Shindigger##1451 |goto The Hinterlands 9.76,44.48
step
Follow the path up |goto The Hinterlands,20.81,47.82,20 |only if walking
talk Rhapsody Shindigger##5634
turnin Rhapsody Shindigger##1451 |goto The Hinterlands 26.94,48.59
accept Rhapsody's Kalimdor Kocktail##1452 |goto The Hinterlands 26.94,48.59
step
talk Marshal Redpath##2263
turnin Crushridge Bounty##500 |goto Hillsbrad Foothills 49.48,58.73
step
Enter the building |goto Hillsbrad Foothills,49.01,59.12,10 |walk
talk Magistrate Henry Maleb##2276
.tip Inside the building.
turnin Dark Council##537 |goto Hillsbrad Foothills 48.14,59.11
turnin Noble Deaths##512 |goto Hillsbrad Foothills 48.14,59.11
step
Leave the building |goto Hillsbrad Foothills,49.01,59.12,10 |walk |only if subzone("Southshore Town Hall")
talk Loremaster Dibbs##2277
turnin The Ensorcelled Parchment##26518 |goto Hillsbrad Foothills 50.57,57.09
accept Stormpike's Deciphering##554 |goto Hillsbrad Foothills 50.57,57.09
step
Enter the building |goto Tirisfal Glades/0,82.65,32.88,7 |walk
Enter the Portal |goto Tirisfal Glades/0,85.33,32.27,7 |walk
Enter the Scarlet Monastery - Library Dungeon with Your Group |goto Scarlet Monastery/0,0.00,0.00,500 |c |noway |q 1053
|only if guideflag("SMflag")
step
Inside the Scarlet Monastery Library Dungeon:
kill Houndmaster Loksey##3974 |q 1053/4
.tip He is the first boss of the dungeon.
.tip Follow the path to enter Huntsman's Cloister, then continue south to the small room.
|only if guideflag("SMflag")
step
Inside the Scarlet Monastery Library Dungeon:
click Mythology of the Titans##19284
.tip Continue through Huntsman's Cloister to enter the Gallery of Treasures.
.tip Once through the Gallery of Treasures the map will change back to Scarlet Monastery.
.tip It will be on the ground on the left side of the room.
.tip It looks like a small book on the ground below a window.
collect Mythology of the Titans##5536 |q 1050/1
|only if guideflag("SMflag")
step
Leave the Scarlet Monastery Library Dungeon
Click Here to Continue |confirm |q 1050
|only if guideflag("SMflag")
step
click Armory Door |goto Tirisfal Glades/0,85.41,31.59,7 |walk
.tip You will need The Scarlet Key from the chest behind Arcanist Doan in the Library to open this.
.tip A rogue with 175 Lockpicking skill can pick it and a Truesilver Key opens it too.
.tip Engineers can also blast the door open.
Enter the Portal |goto Tirisfal Glades/0,85.67,31.76,7 |walk
Enter the Scarlet Monastery - Armory Dungeon with Your Group |goto Scarlet Monastery/0,0.00,0.00,500 |c |noway |q 1053
|only if guideflag("SMflag")
step
Inside the Scarlet Monastery Armory Dungeon:
kill Herod##3975 |q 1053/3
.tip He is the only boss of the dungeon, found all the way at the end.
|only if guideflag("SMflag")
step
Leave the Scarlet Monastery Armory Dungeon
Click Here to Continue |confirm |q 1053
|only if guideflag("SMflag")
step
click Cathedral Door |goto Tirisfal Glades/0,85.21,30.86,7 |walk
.tip You will need The Scarlet Key from the chest behind Arcanist Doan in the Library to open this.
.tip A rogue with 175 Lockpicking skill can pick it and a Truesilver Key opens it too.
.tip Engineers can also blast the door open.
Enter the Portal |goto Tirisfal Glades/0,85.32,30.48,7 |walk
Enter the Scarlet Monastery - Cathedral Dungeon with Your Group |goto Scarlet Monastery/0,0.00,0.00,500 |c |noway |q 1053
|only if guideflag("SMflag")
step
Inside the Scarlet Monastery Cathedral Dungeon:
kill Scarlet Commander Mograine##3976 |q 1053/2
.tip He is the last boss of the dungeon, found all the way at the end.
|only if guideflag("SMflag")
step
Inside the Scarlet Monastery Cathedral Dungeon:
kill High Inquisitor Whitemane##3977 |q 1053/1
.tip She is the last boss of the dungeon, found all the way at the end.
|only if guideflag("SMflag")
step
Leave the Scarlet Monastery Cathedral Dungeon
Click Here to Continue |confirm |q 1053
|only if guideflag("SMflag")
step
Enter the building |goto Hillsbrad Foothills,50.47,58.56,6 |walk
talk Raleigh the Devout##3980
.tip Upstairs inside the building.
turnin In the Name of the Light##1053 |goto Hillsbrad Foothills 51.46,58.36
|only if guideflag("SMflag")
]]
)
