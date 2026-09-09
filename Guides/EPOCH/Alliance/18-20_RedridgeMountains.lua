local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Redridge Mountains (18-20)',
  {
    next = 'Leveling Guides\\Darkshore (20-22)',
  },
  [[
step
Head to the flight master |goto Redridge Mountains 30.6,59.6
talk Ariena Stormfeather##931
fpath Lakeshire |goto Redridge Mountains 30.59,59.41
step
talk Marshal Marris##382
accept Blackrock Menace##20 |goto Redridge Mountains 33.51,48.97
|only if not hardcore
step
talk Foreman Oslow##341
accept The Lost Tools##125 |goto Redridge Mountains 32.14,48.64
step
talk Verner Osgood##415
accept The Price of Shoes##118 |goto Redridge Mountains 30.98,47.28
step
Enter the building |goto Redridge Mountains,29.50,46.12,10 |walk
talk Magistrate Solomon##344
.tip Inside the building.
accept Messenger to Stormwind##120 |goto Redridge Mountains 29.99,44.45
step
talk Shawn##8965
accept Hilary's Necklace##3741 |goto Redridge Mountains 29.32,53.63
step
talk Dockmaster Baren##381
accept Selling Fish##127 |goto Redridge Mountains 27.72,47.38
step
Enter the building |goto Redridge Mountains,26.61,46.37,10 |walk
talk Darcy##379
.tip She walks around this area inside the building.
accept A Free Lunch##129 |goto Redridge Mountains 26.75,44.35
step
Leave the Inn |goto Redridge Mountains,26.62,46.39,10 |walk |only if subzone("Lakeshire Inn")
Enter the building |goto Redridge Mountains,22.80,44.56,10 |walk
talk Chef Breanna##343
.tip Inside the building.
accept Redridge Goulash##92 |goto Redridge Mountains 22.68,43.84
step
talk Buffalo Will##45825
accept One Of Each##26846 |goto Redridge Mountains 23.6,41.4
step
talk Lucius##6966
turnin Redridge Rendezvous##2281 |goto Redridge Mountains 28.06,52.04
accept Alther's Mill##2282 |goto Redridge Mountains 28.06,52.04
|only if Rogue
step
click Glinting Mud##154357
.tip It looks like a brown pile of dirt on the ground underwater.
.tip It spawns in random locations in the water, so you may need to search around.
collect Hilary's Necklace##10958 |q 3741/1 |goto Redridge Mountains 19.17,51.76
Also check around [Redridge Mountains 38.03,54.49]
stickystart "Collect_Spotted_Sunfish"
step
click Sunken Chest##32
.tip Underwater.
.tip Don't linger underwater for any reason. |only if hardcore
.tip If you get into combat, swim to the surface and kill the enemy, then try again. |only if hardcore
collect Oslow's Toolbox##1309 |q 125/1 |goto Redridge Mountains 41.53,54.67
stickystop "Collect_Spotted_Sunfish"
stickystart "Collect_Great_Gortusk_Snouts"
stickystart "Collect_Crisp_Spider_Meat"
step
talk Guard Parker##464
.tip He walks around this area.
turnin A Free Lunch##129 |goto Redridge Mountains 15.27,71.45
accept Visit the Herbalist##130 |goto Redridge Mountains 15.27,71.45
accept Encroaching Gnolls##244 |goto Redridge Mountains 15.27,71.46
step
label "Collect_Crisp_Spider_Meat"
kill Tarantula##442+
collect 5 Crisp Spider Meat##1081 |q 92/3 |goto Redridge Mountains 20.28,68.29
.tip Be careful not to accidentally sell these to a vendor.
You can find more around [14.40,77.92]
step
talk Deputy Feldon##1070
turnin Encroaching Gnolls##244 |goto Redridge Mountains 30.74,60.00
accept Assessing the Threat##246 |goto Redridge Mountains 30.74,60.00
stickystop "Collect_Great_Gortusk_Snouts"
step
talk Hilary##8962
step
Leave the building |goto Redridge Mountains,26.60,46.38,10 |walk |only if subzone("Lakeshire Inn")
Enter Alther's Mill |goto Redridge Mountains,45.84,37.31,70 |only if walking and not subzone("Alther's Mill")
click Practice Lockbox##178244+
.tip They look like small grey metal chests on the ground around this area.
.tip Inside the building.
Reach Skill 75 in Lockpicking |complete skill("Lockpicking") >=75 |goto Redridge Mountains 51.98,45.22 |q 2282
|only if Rogue
step
click Lucius's Lockbox
.tip Inside the building.
collect Token of Thievery##7871 |q 2282/1 |goto Redridge Mountains 52.04,44.69
|only if Rogue
step
talk Lucius##6966
turnin Alther's Mill##2282 |goto Redridge Mountains 28.06,52.04
|only if Rogue
step
label "Collect_Great_Gortusk_Snouts"
Leave the building |goto Redridge Mountains,26.60,46.38,10 |walk |only if subzone("Lakeshire Inn")
kill Great Goretusk##547+
.tip They look like boars.
.tip While in the western area, be careful to avoid Bellygrub. |notinsticky
.tip It's a level 24 boar that walks around the area. |notinsticky
collect 5 Great Goretusk Snout##2296 |q 92/1 |goto Redridge Mountains 15.82,52.97
.tip Be careful not to accidentally sell these to a vendor.
You can find more around: |notinsticky
[Redridge Mountains 25.89,59.27]
[Redridge Mountains 29.57,75.26]
[Redridge Mountains 35.34,71.20]
stickystart "Kill_Redridge_Mongrels"
step
kill 6 Redridge Poacher##424 |q 246/2 |goto Redridge Mountains 31.47,81.01
.tip Watch for patrols and respawns while in the area. |only if hardcore
.tip Enemies near the camps tend to pull in groups. |only if hardcore
You can find more around [43.02,71.64]
step
label "Kill_Redridge_Mongrels"
kill 10 Redridge Mongrel##423 |q 246/1 |goto Redridge Mountains 31.47,81.01
.tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
.tip Enemies near the camps tend to pull in groups. |only if hardcore |notinsticky
You can find more around [43.02,71.64]
step
Kill enemies around this area
.tip You are about to have to kill a lot of level 21 enemies. |only if not hardcore
.tip Being a level higher will help. |only if not hardcore
.tip Grinding a bit here will also reduce the amount you have to grind later.
.tip Watch for patrols and respawns while in the area. |only if hardcore
.tip Enemies near the camps tend to pull in groups. |only if hardcore
ding 19 |goto Redridge Mountains 31.47,81.01
You can find more around [43.02,71.64]
stickystart "Collect_Murloc_Fins"
step
label "Collect_Spotted_Sunfish"
Kill Murloc enemies around this area
.tip You can find more in the water nearby.
.tip Murloc Minor Tidecallers may heal themselves or allies when health is low. |only if hardcore
.tip The murlocs may run away in fear when at low health, so try to pull them away from the others to kill. |only if hardcore |notinsticky
.tip These enemies tend to pull in groups. |only if hardcore
collect 10 Spotted Sunfish##1467 |q 127/1 |goto Redridge Mountains 49.00,72.02
You can find more around: |notinsticky
[53.00,55.4]
[49.00,72.02]
[58.00,59.02]
step
label "Collect_Murloc_Fins"
Kill Murloc enemies around this area
collect 8 Murloc Fin##1468 |goto Redridge Mountains 49.00,72.02 |q 150 |future
.tip Murloc Minor Tidecallers may heal themselves or allies when health is low. |only if hardcore |notinsticky
.tip The murlocs may run away in fear when at low health, so try to pull them away from the others to kill. |only if hardcore |notinsticky
.tip These enemies tend to pull in groups. |only if hardcore |notinsticky
.tip Be careful not to accidentally sell these to a vendor.
You can find more around: |notinsticky
[53.00,55.4]
[49.00,72.02]
[58.00,59.02]
step
label "kill_murloc_scout"
kill Murloc Tidecaller##545 |goto Redridge Mountains 53.00,55.4 |q 26846/3 
kill Murloc scout##578 |goto Redridge Mountains 53.00,55.4 |q 26846/5 
step
kill Dire Condor##428+
.tip They look like red birds.
.tip They share spawn points with the Black Dragon Whelps, so kill those too, if you can't find any condors.
collect 5 Tough Condor Meat##1080 |q 92/2 |goto Redridge Mountains 58.04,75.72
You can find more around [47.23,76.89]
stickystart "orc_axes"
step
talk Captured Servant of Azora##3069 |goto 74.5,79.5
accept Intel on Morganth##26851
step
label "orc_axes"
Kill Blackrock enemies around this area
.tip They look like orcs.
collect 10 Battleworn Axe##3014 |q 20/1 |goto Redridge Mountains 71.90,79.39
You can find more around [76.41,74.07]
|only if not hardcore
step
kill Murloc Nightcrawler##544 |goto Redridge Mountains 53.00,55.4 |q 26846/4 
step
Kill enemies around this area
.tip We are returning to Stormwind soon
.tip You really want to be level 20 to train new spells
.tip Enemies near the camps tend to pull in groups. |only if hardcore
ding 19,16870  |goto Redridge Mountains 31.47,81.01
You can find more around [43.02,71.64]
|only if hardcore
step
talk Deputy Feldon##1070
turnin Assessing the Threat##246 |goto Redridge Mountains 30.73,60.00
step
talk Marshal Marris##382
turnin Blackrock Menace##20 |goto Redridge Mountains 33.51,48.97
|only if not hardcore
step
talk Foreman Oslow##341
turnin The Lost Tools##125 |goto Redridge Mountains 32.14,48.64
accept The Everstill Bridge##89 |goto Redridge Mountains 32.14,48.64
step
turnin Hilary's Necklace##3741 |goto Redridge Mountains 29.24,53.63
step
talk Dockmaster Baren##381
turnin Selling Fish##127 |goto Redridge Mountains 27.72,47.38
accept Murloc Poachers##150 |goto Redridge Mountains 27.72,47.38
turnin Murloc Poachers##150 |goto Redridge Mountains 27.72,47.38
step
talk Lindsay Ashlock##791
.tip Buy enough arrows to fill your ammo bag, plus 4-6 extra stacks.
.tip You have a pretty long grind coming up soon.
Visit the Vendor |vendor Lindsay Ashlock##791 |goto Redridge Mountains 28.77,47.33 |q 89
|only if Hunter
step
talk Martie Jainrose##342
turnin Visit the Herbalist##130 |goto Redridge Mountains 21.86,46.33
accept Delivering Daffodils##131 |goto Redridge Mountains 21.86,46.33
step
talk Chef Breanna##343
.tip Inside the building.
turnin Redridge Goulash##92 |goto Redridge Mountains 22.68,43.83
step
talk Buffalo Will##45825
turnin One Of Each##26846 |goto Redridge Mountains 23.6,41.4
accept Ardo's Dirtpaw##26847
step
Enter the building |goto Redridge Mountains,26.60,46.38,10 |walk
talk Darcy##379
.tip She walks around this area inside the building.
turnin Delivering Daffodils##131 |goto Redridge Mountains 26.75,44.34
step
Enter the building |goto Stormwind City,56.65,57.71,10 |walk
talk Marda Weller##1287
.tip Inside the building.
buy Maul##924 |n
.tip If you can afford it.
.tip You will use it when you reach level 21.
.tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Warrior and itemcount(924) == 0
step
Enter the building |goto Stormwind City,56.65,57.71,10 |walk
talk Marda Weller##1287
.tip Inside the building.
buy Maul##924 |n
.tip If you can afford it.
.tip You will use it when you reach level 21.
.tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Paladin and itemcount(924) == 0
step
Enter the building |goto Stormwind City,43.02,34.43,10 |walk
talk Duthorian Rall##6171
.tip Inside the building.
accept The Tome of Valor##1793 |goto Stormwind City 39.81,29.80 |instant
|only if Paladin
step
use the Tome of Valor##6776
accept The Tome of Valor##1649
|only if Paladin
step
talk Duthorian Rall##6171
.tip Inside the building.
turnin The Tome of Valor##1649 |goto Stormwind City 39.81,29.80
accept The Tome of Valor##1650 |goto Stormwind City 39.81,29.80
|only if Paladin
step
Enter the building |goto Stormwind City,56.65,57.71,10 |walk
talk Marda Weller##1287
.tip Inside the building.
buy Longsword##923 |n
.tip If you can afford it.
.tip You will use it in your Main Hand when you reach level 21.
.tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Rogue and itemcount(923) == 0
step
talk Marda Weller##1287
.tip Inside the building.
buy Kris##2209 |n
.tip If you can afford it.
.tip Use it in your Off Hand.
.tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Rogue and itemcount(2209) == 0
step
Enter the building |goto Stormwind City,42.67,67.02,10 |walk
talk Ardwyn Cailen##1312
.tip Inside the building.
buy Dusk Wand##5211 |n
.tip If you can afford it.
.tip If you have better, skip this step.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto Stormwind City 42.84,65.17 |q 4740 |future
|only if Priest and itemcount(5211) == 0
step
Enter the building |goto Stormwind City,42.67,67.02,10 |walk
talk Ardwyn Cailen##1312
.tip Inside the building.
buy Dusk Wand##5211 |n
.tip If you can afford it.
.tip If you have better, skip this step.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto Stormwind City 42.84,65.17 |q 4740 |future
|only if Warlock and itemcount(5211) == 0
step
Enter the building |goto Stormwind City/0,57.03,64.51,7 |walk
talk Kyra Boucher##1275
.tip Inside the building.
.tip If you can afford it.
.tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Kyra Boucher##1275 |goto Stormwind City/0 56.18,65.22 |q 4740 |future
|only if Mage
step
Enter the building |goto Stormwind City,42.67,67.02,10 |walk
talk Ardwyn Cailen##1312
.tip Inside the building.
buy Dusk Wand##5211 |n
.tip If you can afford it.
.tip If you have better, skip this step.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto Stormwind City 42.84,65.17 |q 4740 |future
|only if Mage and itemcount(5211) == 0
step
Run up the ramp and enter the building |goto Stormwind City,39.33,81.46,10 |only if walking
talk Larimaine Purdue##2485
.tip Upstairs inside the tower.
learnspell Teleport: Stormwind##3561 |goto Stormwind City 39.84,79.45
|only if Mage
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
You should be lvl 20 now. Travel to Stormwind to learn catform |only if Druid
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 4740 |future
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 4740 |future
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock |q 4740 |future
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 4740 |future
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue |q 4740 |future
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 4740 |future
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 4740 |future
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 4740 |future
.tip Inside the tower. |only if Mage
.tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
.tip He patrols inside. |only if Priest
.tip In the basement. |only if Warlock
.tip Train your spells.
step
Enter the building |goto Stormwind City,29.14,74.17,10 |walk
talk Gakin the Darkbinder##6122
.tip Downstairs inside the building.
accept Devourer of Souls##1716 |goto Stormwind City 25.26,78.56
|only if Warlock
step
talk Spackle Thornberry##5520
.tip Downstairs inside the building.
.tip If you can afford them.
.tip Buy all of the Grimoires for spells that are upgrades for the spells you use with your pet.
.tip After buying them, make sure to use them in your bags to learn the spells.
Visit the Vendor |vendor Spackle Thornberry##5520 |goto Stormwind City 25.66,77.66 |q 4740 |future
|only if Warlock
step
talk Argos Nightwhisper##4984
ding 20,50
accept The Corruption Abroad##3765 |goto Stormwind City 21.41,55.79
.tip This quest won't be available if you've accepted or completed Researching the Corruption.
.tip Abandon this quest if you have it.
.tip Train your class spells while in town.
step
talk General Marcus Jonathan##466
turnin Messenger to Stormwind##120 |goto Stormwind City 69.2,82.8
accept Messenger to Stormwind##121 
step
Enter the building |goto Elwynn Forest,42.4,69.5,10 |walk
talk Smith Argus##514
.tip Inside the building.
turnin The Price of Shoes##118 |goto Elwynn Forest 41.70,65.55
accept Return to Verner##119 |goto Elwynn Forest 41.70,65.55
step
Head towards Redridge
enter the Tower of Azora and head to the top floor |goto Elwynn Forest 65,69.8
talk Theocritus##313
turnin Intel on Morganth##26851
Continue to Redridge
step
talk Verner Osgood##415
turnin Return to Verner##119 |goto Redridge Mountains 30.98,47.27
accept Underbelly Scales##122 |goto Redridge Mountains 30.98,47.27
accept A Baying of Gnolls##124 |goto Redridge Mountains 30.98,47.27
step
kill Black Dragon Whelp##441+
.tip They look like small flying dragons.
.tip Watch for Redridge patrols while looking for the whelplings. |only if hardcore
collect 6 Underbelly Whelp Scale##1221 |q 122/1 |goto Redridge Mountains 35.34,71.20
You can find more around: |notinsticky
[29.57,75.26]
[47.12,76.91]
stickystart "Collect_Iron_Rivets"
stickystart "Collect_Iron_pikes"
stickystart "Kill_Redridge_Brutes"
stickystart "Kill_Redridge_Mystics"
step
Head to the cave |goto 21.1,32.9
Enter the cave |goto 20.8,28.3
Head left
kill Ardo Dirtpaw##711 |q 26847/1
.tip he has 3 adds that can be kited by jumping down to reset after they chase
.tip you can skip this quest if you are unable to solo or find a group
step
Follow the path up |goto Redridge Mountains,34.92,40.80,30 |only if walking
Kill Redridge enemies around this area
.tip They look like gnolls.
.tip Redridge Alphas will not drop the quest item.
.tip Watch for patrols and respawns while here. |only if hardcore
.tip Enemies tend to pull in groups when near campfires. |only if hardcore
label "Collect_Iron_pikes"
collect 5 Iron Pike##2856 |q 89/1 |goto Redridge Mountains 38.80,32.27
You can find more around [23.02,36.55]
step
label "Collect_Iron_Rivets"
Kill Redridge enemies around this area |notinsticky
.tip They look like gnolls. |notinsticky
.tip Redridge Alphas will not drop the quest item. |notinsticky
.tip Watch for patrols and respawns while here. |only if hardcore |notinsticky
.tip Enemies tend to pull in groups when near campfires. |only if hardcore |notinsticky
collect 5 Iron Rivet##1013 |q 89/2 |goto Redridge Mountains 38.80,32.27
You can find more around [23.02,36.55]
step
label "Kill_Redridge_Brutes"
kill 10 Redridge Brute##426 |q 124/1 |goto Redridge Mountains 38.80,32.27
.tip They look like gnolls. |notinsticky
.tip Watch for patrols and respawns while here. |only if hardcore |notinsticky
.tip Enemies tend to pull in groups when near campfires. |only if hardcore |notinsticky
You can find more around [23.02,36.55]
step
label "Kill_Redridge_Mystics"
kill 8 Redridge Mystic##430 |q 124/2 |goto Redridge Mountains 38.80,32.27
.tip They look like gnolls. |notinsticky
.tip Watch for patrols and respawns while here. |only if hardcore |notinsticky
.tip Enemies tend to pull in groups when near campfires. |only if hardcore |notinsticky
You can find more around [23.02,36.55]
step
jump down to the house |goto 23.6,41.5
talk Buffalo Will##45825
turnin Ardo's Dirtpaw##26847
step
talk Foreman Oslow##341
turnin The Everstill Bridge##89 |goto Redridge Mountains 32.14,48.64
step
talk Verner Osgood##415
turnin Underbelly Scales##122 |goto Redridge Mountains 30.97,47.27
turnin A Baying of Gnolls##124 |goto Redridge Mountains 30.97,47.27
step
Enter the building |goto Redridge Mountains,29.50,46.12,10 |walk
talk Magistrate Solomon##344
.tip Inside the building.
turnin Messenger to Stormwind##121 |goto Redridge Mountains 29.99,44.45
step
Enter the building |goto Stormwind City,56.65,57.71,10 |walk
talk Marda Weller##1287
.tip Inside the building.
buy Maul##924 |n
.tip If you can afford it.
.tip You will use it when you reach level 21.
.tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Warrior and itemcount(924) == 0
step
Enter the building |goto Stormwind City,56.65,57.71,10 |walk
talk Marda Weller##1287
.tip Inside the building.
buy Maul##924 |n
.tip If you can afford it.
.tip You will use it when you reach level 21.
.tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Paladin and itemcount(924) == 0
step
Enter the building |goto Stormwind City,43.02,34.43,10 |walk
talk Duthorian Rall##6171
.tip Inside the building.
accept The Tome of Valor##1793 |goto Stormwind City 39.81,29.80 |instant
|only if Paladin
step
use the Tome of Valor##6776
accept The Tome of Valor##1649 |goto Stormwind City 39.81,29.80
|only if Paladin
step
talk Duthorian Rall##6171
.tip Inside the building.
turnin The Tome of Valor##1649 |goto Stormwind City 39.81,29.80
accept The Tome of Valor##1650 |goto Stormwind City 39.81,29.80
|only if Paladin
step
Enter the building |goto Stormwind City,56.65,57.71,10 |walk
talk Marda Weller##1287
.tip Inside the building.
buy Longsword##923 |n
.tip If you can afford it.
.tip You will use it in your Main Hand when you reach level 21.
.tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Rogue and itemcount(923) == 0
step
talk Marda Weller##1287
.tip Inside the building.
buy Kris##2209 |n
.tip If you can afford it.
.tip Use it in your Off Hand.
.tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 4740 |future
|only if Rogue and itemcount(2209) == 0
step
Enter the building |goto Stormwind City,42.67,67.02,10 |walk
talk Ardwyn Cailen##1312
.tip Inside the building.
buy Dusk Wand##5211 |n
.tip If you can afford it.
.tip If you have better, skip this step.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto Stormwind City 42.84,65.17 |q 4740 |future
|only if Priest and itemcount(5211) == 0
step
Enter the building |goto Stormwind City,42.67,67.02,10 |walk
talk Ardwyn Cailen##1312
.tip Inside the building.
buy Dusk Wand##5211 |n
.tip If you can afford it.
.tip If you have better, skip this step.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto Stormwind City 42.84,65.17 |q 4740 |future
|only if Warlock and itemcount(5211) == 0
step
Enter the building |goto Stormwind City,42.67,67.02,10 |walk
talk Ardwyn Cailen##1312
.tip Inside the building.
buy Dusk Wand##5211 |n
.tip If you can afford it.
.tip If you have better, skip this step.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto Stormwind City 42.84,65.17 |q 4740 |future
|only if Mage and itemcount(5211) == 0
step
Run up the ramp and enter the building |goto Stormwind City,39.33,81.46,10 |only if walking
talk Larimaine Purdue##2485
.tip Upstairs inside the tower.
learnspell Teleport: Stormwind##3561 |goto Stormwind City 39.84,79.45
|only if Mage
step
Enter the building |goto Stormwind City,29.14,74.17,10 |walk
talk Gakin the Darkbinder##6122
.tip Downstairs inside the building.
accept Devourer of Souls##1716 |goto Stormwind City 25.26,78.56
|only if Warlock
step
talk Spackle Thornberry##5520
.tip Downstairs inside the building.
.tip If you can afford them.
.tip Buy all of the Grimoires for spells that are upgrades for the spells you use with your pet.
.tip After buying them, make sure to use them in your bags to learn the spells.
Visit the Vendor |vendor Spackle Thornberry##5520 |goto Stormwind City 25.66,77.66 |q 4740 |future
|only if Warlock
]]
)
