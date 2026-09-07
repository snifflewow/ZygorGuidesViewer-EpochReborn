local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  "Leveling Guides\\Un'Goro Crater (54-55)",
  {
    next = 'Leveling Guides\\Felwood Part 2 (55-55)',
  },
  [[
step
talk Fuzruckle##3496
.tip Collect these items from the bank.
collect Un'Goro Soil##11018 |goto The Barrens 62.64,37.42 |q 3764 |future
.tip As many as you have.
collect Torwa's Pouch##11568 |goto The Barrens 62.64,37.42 |q 4292
collect Mithril Casing##10561 |goto The Barrens 62.64,37.42 |q 4244 |future
step
talk Tran'rek##7876
accept Super Sticky##4504 |goto Tanaris 51.57,26.76
step
talk Alchemist Pestlezugg##5594
.tip Inside the building.
turnin March of the Silithid##4493 |goto Tanaris 50.89,26.96
accept Bungle in the Jungle##4496 |goto Tanaris 50.89,26.96
step
talk Williden Marshal##9270
accept Expedition Salvation##3881 |goto Un'Goro Crater 43.95,7.14
step
talk Hol'anyee Marshal##9271
accept Alien Ecology##3883 |goto Un'Goro Crater 43.89,7.24
step
talk Spark Nilminer##9272
accept Roll the Bones##3882 |goto Un'Goro Crater 43.50,7.42
step
Enter the cave |goto Un'Goro Crater,43.47,6.79,15 |walk
talk J.D. Collie##9117
.tip Inside the cave.
accept The Northern Pylon##4285 |goto Un'Goro Crater 41.92,2.70
step
Leave the cave |goto Un'Goro Crater,43.47,6.79,15 |walk |only if subzone("Marshal's Refuge") and _G.IsIndoors()
click Beware of Pterrordax##174682
.tip It's a wanted board.
accept Beware of Pterrordax##4501 |goto Un'Goro Crater 43.55,8.42
step
talk Shizzle##9998
accept Shizzle's Flyer##4503 |goto Un'Goro Crater 44.24,11.59
step
talk Karna Remtravel##9618
accept Chasing A-Me 01##4243 |goto Un'Goro Crater 46.38,13.45
stickystart "Collect_UnGoro_Soil"
stickystart "Collect_Webbed_Pterrordax_Scales"
step
Run around the huge tree and follow the path up |goto Un'Goro Crater,54.83,13.49,40 |only if walking
click Northern Crystal Pylon##164955
Choose _"I want to examine this pylon."_
Discover and Examine the Northern Crystal Pylon |q 4285/1 |goto Un'Goro Crater 56.48,12.45
step
kill Pterrordax##9166+
.tip Kill all of them around this area.
.tip You will kill more of these later, so you don't need to complete the quest now.
Clike Here to Continue |confirm |goto Un'Goro Crater 56.71,9.55 |q 4501
stickystop "Collect_Webbed_Pterrordax_Scales"
step
Kill Tar enemies around this area
collect 12 Super Sticky Tar##11834 |q 4504/1 |goto Un'Goro Crater 59.96,30.56
You can find more around: |notinsticky
[59.75,24.49]
[63.54,23.41]
stickystart "Collect_UnGoro_Thunderer_Pelts"
stickystart "Collect_UnGoro_Stomper_Pelts"
step
kill Un'Goro Gorilla##6514+
.tip Inside and outside the cave.
.tip The gorillas share spawn points.
.tip They will call for help at low health, which will cause nearby gorillas to come to their aid.	|only if hardcore
.tip If you can't find any more of these, kill the other types of gorillas to get them to spawn.
collect 2 Un'Goro Gorilla Pelt##11478 |q 4289/1 |goto Un'Goro Crater 64.02,16.32
step
label "Collect_UnGoro_Stomper_Pelts"
kill Un'Goro Stomper##6513+
.tip Inside and outside the cave. |notinsticky
.tip The gorillas share spawn points. |notinsticky
.tip Watch for patrols and respawns while in the area.	|only if hardcore |notinsticky
.tip If you can't find any more of these, kill the other types of gorillas to get them to spawn. |notinsticky
collect 2 Un'Goro Stomper Pelt##11479 |q 4289/2 |goto Un'Goro Crater 64.02,16.32
step
label "Collect_UnGoro_Thunderer_Pelts"
kill Un'Goro Thunderer##6516+
.tip Inside and outside the cave. |notinsticky
.tip The gorillas share spawn points. |notinsticky
.tip Be mindful of your surroundings while fighting the Gorillas. |only if hardcore |notinsticky
.tip They can call for help, which will aggro gorillas that are a decent bit away from you. |only if hardcore |notinsticky
.tip If you can't find any more of these, kill the other types of gorillas to get them to spawn. |notinsticky
collect 2 Un'Goro Thunderer Pelt##11480 |q 4289/3 |goto Un'Goro Crater 64.02,16.32
step
Enter the cave |goto Un'Goro Crater,63.88,16.44,15 |walk |only if not _G.IsIndoors()
Follow the path inside the cave |goto Un'Goro Crater,65.87,16.75,10 |walk
talk A-Me 01##9623
.tip Inside the cave.
.tip She gives an escort quest.
.tip If she's not here, someone may be escorting her.
.tip Wait until she respawns.
.tip If you have to wait, clear enemies between this spot and the cave entrance while waiting. |only if hardcore
turnin Chasing A-Me 01##4243 |goto Un'Goro Crater 67.65,16.76
accept Chasing A-Me 01##4244 |goto Un'Goro Crater 67.65,16.76 |only if (itemcount(10561) > 0) or (haveq(4244) or completedq(4244))
step
NOTE:
Grind to Catch Up XP
.tip You don't have the Mithril Casing item, so you're unable to complete 2 quests from A-Me 01.
.tip Grind 12,000 xp on the apes inside and outside this cave to make up for the lost xp.
Click Here to Continue After Grinding |confirm |q 4491 |future
|only if (itemcount(10561) == 0) and (completedq(4243) and not (haveq(4244) or completedq(4244)))
step
talk A-Me 01##9623
.tip Inside the cave.
.tip This is an escort quest.
.tip If she's not here, someone may be escorting her.
.tip Wait until she respawns.
.tip If you are waiting, clear enemies between this spot and the cave entrance while waiting.	|only if hardcore
turnin Chasing A-Me 01##4244 |goto Un'Goro Crater 67.65,16.76
.tip If you don't have the Mithril Casing to complete this quest, abandon the quest and grind 12,000 xp on the apes.  |only if (itemcount(10561) == 0) and not completedq(4244)
.tip This will make up for skipping this quest, and the escort quest followup. |only if (itemcount(10561) == 0) and not completedq(4244)
accept Chasing A-Me 01##4245 |goto Un'Goro Crater 67.65,16.76 |noautoaccept
|only if haveq(4244) or completedq(4244)
step
Watch the dialogue
.tip Follow A-Me 01 and protect her as she walks.
.tip She eventually walks to this location.
Protect A-Me 01 Until You Reach Karna Remtravel |q 4245/1 |goto Un'Goro Crater 46.32,13.68
|only if haveq(4245) or completedq(4245)
step
talk Karna Remtravel##9618
turnin Chasing A-Me 01##4245 |goto Un'Goro Crater 46.38,13.45
|only if haveq(4245) or completedq(4245)
step
Enter the cave |goto Un'Goro Crater,43.47,6.79,15 |walk
talk J.D. Collie##9117
.tip Inside the cave.
turnin The Northern Pylon##4285 |goto Un'Goro Crater 41.92,2.70
accept The Eastern Pylon##4287 |goto Un'Goro Crater 41.92,2.70
accept The Western Pylon##4288 |goto Un'Goro Crater 41.92,2.70
stickystart "Collect_Dinosaur_Bones"
stickystart "Collect_Webbed_Diemetradon_Scales"
step
Leave the cave |goto Un'Goro Crater,43.47,6.79,15 |walk |only if subzone("Marshal's Refuge") and _G.IsIndoors()
click Crate of Foodstuffs##249
collect Crate of Foodstuffs##11113 |q 3881/1 |goto Un'Goro Crater 68.51,36.54
step
Follow the path up |goto Un'Goro Crater,76.66,48.69,20 |only if walking
click Eastern Crystal Pylon##164957
Choose _"I want to examine this pylon."_
Discover and Examine the Eastern Crystal Pylon |q 4287/1 |goto Un'Goro Crater 77.24,49.97
step
use Torwa's Pouch##11568
collect Preserved Threshadon Meat##11569 |q 4292
collect Preserved Pheromone Mixture##11570 |q 4292
step
use the Preserved Threshadon Meat##11569
.tip Use this first.
use the Preserved Pheromone Mixture##11570
.tip Use this second.
kill Lar'korwi##9684
.tip Be sure to heal up before engaging.
.tip He's level 56, but you should be able to kill him at this level.
.tip If you have trouble, try to find someone to help you.
.tip You can do this quest when we return to Un'Goro later if you're worried |only if hardcore
collect Lar'korwi's Head##11510 |q 4292/1 |goto Un'Goro Crater 79.92,49.90
step
talk Torwa Pathfinder##9619
turnin The Apes of Un'Goro##4289 |goto Un'Goro Crater 71.64,75.97
turnin The Bait for Lar'korwi##4292 |goto Un'Goro Crater 71.63,75.96
accept The Mighty U'cha##4301 |goto Un'Goro Crater 71.64,75.97
stickystart "Collect_Webbed_Pterrordax_Scales"
step
Follow the path up |goto Un'Goro Crater,58.01,85.25,20 |only if walking
kill 10 Pterrordax##9166 |q 4501/1 |goto Un'Goro Crater 56.23,90.09
You can find more: |notinsticky
Up the path that starts at [51.26,86.64]
Up the path that starts at [45.88,86.65]
stickystop "Collect_Dinosaur_Bones"
stickystop "Collect_Webbed_Pterrordax_Scales"
stickystart "Collect_Gorishi_Scent_Gland"
step
Enter the cave |goto Un'Goro Crater,49.95,81.70,10 |walk
Follow the path down |goto Un'Goro Crater,49.48,83.08,7 |walk
use the Unused Scraping Vial##11132
.tip Inside the cave.
.tip This cave is dangerous. |only if hardcore
.tip Be mindful of patrolling enemies while you travel through. |only if hardcore
collect Hive Wall Sample##11131 |q 3883/1 |goto Un'Goro Crater 48.74,85.21
step
Leave the cave |goto Un'Goro Crater,49.94,81.65,10 |c |q 4496
|only if subzone("The Slithering Scar") and _G.IsIndoors()
step
label "Collect_Gorishi_Scent_Gland"
Kill Gorishi enemies around this area
.tip You can find more inside the insect cave in the ground nearby. |only if not hardcore
.tip There are more inside the cave, but it is safer outside. |only if hardcore
collect Gorishi Scent Gland##11837 |q 4496/1 |goto Un'Goro Crater 50.66,77.01
step
Leave the cave |goto Un'Goro Crater,49.94,81.65,10 |only if subzone("The Slithering Scar") and _G.IsIndoors()
click Research Equipment##161521
collect Research Equipment##11112 |q 3881/2 |goto Un'Goro Crater 38.47,66.11
stickystart "Collect_Dinosaur_Bones"
stickystart "Kill_Frenzied_Pterrordax"
step
talk Krakle##10302
accept Finding the Source##974 |goto Un'Goro Crater 30.93,50.43
stickystart "Collect_Webbed_Pterrordax_Scales"
step
Follow the path up |goto Un'Goro Crater,24.20,61.28,20 |only if walking
click Western Crystal Pylon##164956
Choose _"I want to examine this pylon."_
Discover and Examine the Western Crystal Pylon |q 4288/1 |goto Un'Goro Crater 23.79,59.19
step
label "Kill_Frenzied_Pterrordax"
kill 15 Frenzied Pterrordax##9167 |q 4501/2 |goto Un'Goro Crater 21.75,59.39
You can find more around: |notinsticky
[23.26,49.89]
[22.81,41.53]
[23.36,41.24]
[39.05,47.06]
[28.28,33.06]
[34.49,37.63]
[31.25,44.33]
step
label "Collect_Webbed_Pterrordax_Scales"
Kill Pterrordax enemies around this area
.tip They look like pterodactyls.
collect 8 Webbed Pterrordax Scale##11831 |q 4503/2 |goto Un'Goro Crater 24.15,38.86
You can find more around: |notinsticky
[39.05,47.06]
[28.28,33.06]
[34.49,37.63]
[31.25,44.33]
step
label "Collect_Webbed_Diemetradon_Scales"
Kill Diemetradon enemies around this area
.tip Be careful, Elder Dimetradon can kick. |only if Paladin or Mage or Priest or Warlock
collect 8 Webbed Diemetradon Scale##11830 |q 4503/1 |goto Un'Goro Crater 59.18,53.99
You can find more around: |notinsticky
[56.74,63.47]
[49.24,61.78]
[50.79,67.25]
[45.26,68.91]
[41.52,56.95]
step
label "Collect_Dinosaur_Bones"
Kill Diemetradon enemies around this area
collect 8 Dinosaur Bone##11114 |q 3882/1 |goto Un'Goro Crater 59.18,53.99
These can be looted from bones on the ground around: |notinsticky
[32.70, 73.50]
[31.50, 68.90]
step
label "Collect_UnGoro_Soil"
click Un'Goro Dirt Pile##157936+
.tip They look like piles of dark brown dirt on the ground around this area.
.tip You can find them all over the entire zone.
Kill enemies around this area
.tip Any enemy in Un'Goro Crater can drop the quest item.
collect 25 Un'Goro Soil##11018 |q 3764 |future
.tip Be careful not to accidentally sell these to a vendor.
step
talk Shizzle##9998
turnin Shizzle's Flyer##4503 |goto Un'Goro Crater 44.23,11.59
step
talk Spraggle Frock##9997
turnin Beware of Pterrordax##4501 |goto Un'Goro Crater 43.62,8.50
accept Lost!##4492 |goto Un'Goro Crater 43.62,8.50
step
talk Spark Nilminer##9272
turnin Roll the Bones##3882 |goto Un'Goro Crater 43.50,7.43
step
talk Hol'anyee Marshal##9271
turnin Alien Ecology##3883 |goto Un'Goro Crater 43.89,7.24
step
talk Williden Marshal##9270
turnin Expedition Salvation##3881 |goto Un'Goro Crater 43.95,7.14
step
Enter the cave |goto Un'Goro Crater,43.47,6.79,15 |walk
talk J.D. Collie##9117
.tip Inside the cave.
turnin The Eastern Pylon##4287 |goto Un'Goro Crater 41.92,2.70
turnin The Western Pylon##4288 |goto Un'Goro Crater 41.92,2.70
accept Making Sense of It##4321 |goto Un'Goro Crater 41.92,2.70
step
talk J.D. Collie##9117
.tip Inside the cave.
turnin Making Sense of It##4321 |goto Un'Goro Crater 41.92,2.70
step
Destroy This Item:
.tip It is no longer needed.
trash Crystal Pylon User's Manual##11482 |goto Un'Goro Crater 43.47,6.79
stickystart "Collect_UnGoro_Ash"
step
Leave the cave |goto Un'Goro Crater,43.47,6.79,15 |walk |only if subzone("Marshal's Refuge") and _G.IsIndoors()
Follow the path up |goto Un'Goro Crater,52.84,42.05,20 |only if walking
Follow the path up |goto Un'Goro Crater,52.33,45.52,10 |only if walking
Continue up the path |goto Un'Goro Crater,51.18,47.35,10 |only if walking
use Krakle's Thermometer##12472
.tip At the top of the mountain.
Find the Hottest Area of Fire Plume Ridge |q 974/1 |goto Un'Goro Crater 49.70,45.74
step
label "Collect_UnGoro_Ash"
Kill enemies around this area
.tip They look like fire elementals on and around this volcano mountain.
.tip Avoid the elite enemy in the cave at the top of the mountain.
collect 9 Un'Goro Ash##11829 |q 4502/1 |goto Un'Goro Crater 50.98,47.18
step
Enter the cave |goto Un'Goro Crater,52.44,51.07,15 |walk
talk Ringo##9999
.tip Inside the cave.
.tip This is an escort quest.
.tip If he's not here, someone may be escorting him.
.tip Wait until he respawns.
turnin Lost!##4492 |goto Un'Goro Crater 51.90,49.85
accept A Little Help From My Friends##4491 |goto Un'Goro Crater 51.90,49.85 |noautoaccept
step
Leave the cave |goto Un'Goro Crater,52.50,51.16,15 |walk
Follow the path down |goto Un'Goro Crater,54.19,50.77,15 |only if walking
Follow the path |goto Un'Goro Crater,56.72,43.18,50 |only if walking
Follow the path up |goto Un'Goro Crater,46.04,13.45,20 |only if walking
Watch the dialogue
.tip Ringo will follow you, protect him as you walk.
.tip He will faint multiple times as he walks, so make sure he is with you at all times.
.tip You will see a message in your chat when he faints.
use Spraggle's Canteen##11804
.tip Use it on Ringo to revive him when he faints.
Escort Ringo to Spraggle Frock at Marshal's Refuge |q 4491/1 |goto Un'Goro Crater 43.62,8.51
step
Watch the dialogue
talk Spraggle Frock##9997
turnin A Little Help From My Friends##4491 |goto Un'Goro Crater 43.62,8.51
step
Destroy This Item:
.tip It is no longer needed.
trash Spraggle's Canteen##11804	|goto Un'Goro Crater 63.94,16.39
step
Enter the cave |goto Un'Goro Crater,63.94,16.39,15 |walk
Follow the path |goto Un'Goro Crater,65.98,15.65,10 |walk
Continue following the path |goto Un'Goro Crater,69.08,17.63,10 |walk
Continue following the path |goto Un'Goro Crater,69.41,16.57,10 |walk
Continue following the path |goto Un'Goro Crater,68.61,13.57,10 |walk
.tip Un'goro Gorilla will call for support when at low health, aggroing nearby allies onto you.	|only if hardcore
.tip Watch for patrols and respawn while in the area.	|only if hardcore
kill U'cha##9622
.tip Upstairs inside the cave.
collect U'cha's Pelt##11476 |q 4301/1 |goto Un'Goro Crater 68.15,12.58
step
Leave the cave |goto Un'Goro Crater,63.88,16.43,15 |walk |only if subzone("Fungal Rock") and _G.IsIndoors()
talk Torwa Pathfinder##9619
turnin The Mighty U'cha##4301 |goto Un'Goro Crater 71.63,75.96
step
talk Krakle##10302
turnin Finding the Source##974 |goto Un'Goro Crater 30.93,50.44
accept The New Springs##980 |goto Un'Goro Crater 30.93,50.44
step
Kill enemies around this area
.tip Getting this far into level 54 will allow you to reach level 55 when turning in quests soon.
.tip You should already be pretty close to reaching level 55.
ding 54,163500 |goto Un'Goro Crater 46.34,17.42
step
talk Tran'rek##7876
turnin Super Sticky##4504 |goto Tanaris 51.57,26.76
step
talk Alchemist Pestlezugg##5594
.tip Inside the building.
turnin Bungle in the Jungle##4496 |goto Tanaris 50.89,26.96
step
Enter the building |goto Tanaris,52.21,28.57,10 |walk
talk Gimblethorn##7799
.tip Inside the building.
collect Eridan's Vial##11682 |goto Tanaris 52.30,28.91 |q 4441
collect 10 Moontouched Feather##12383 |goto Tanaris 52.30,28.91 |q 978
collect Purified Moonwell Water##12906 |goto Tanaris 52.30,28.91 |q 5159
collect 3 Videre Elixir##11243 |goto Tanaris 52.30,28.91 |q 3909
step
Enter the building |goto The Barrens,62.52,38.57,10 |walk
talk Liv Rizzlefix##8496
.tip Inside the building.
turnin Volcanic Activity##4502 |goto The Barrens 62.45,38.73
step
talk Erelas Ambersky##7916
.tip Inside the building.
turnin Moontouched Wildkin##978 |goto Teldrassil 55.50,92.04
accept Find Ranshalla##979 |goto Teldrassil 55.50,92.04
step
talk Daryn Lightwind##7907
.tip Upstairs inside the building.
accept Starfall##5250 |goto Teldrassil 55.41,92.23
step
map Darnassus
path	follow strict; loop on; ants curved; dist 20; markers none
path	36.00,41.30		38.50,47.91		40.25,73.62		49.94,80.49
path	54.88,74.47		57.42,82.41		67.68,57.45		62.02,52.75
path	61.79,40.59		43.80,41.10		36.79,14.21		39.17,20.89
path	49.77,18.95		52.37,18.62		54.33,10.03		57.70,7.66
path	65.06,16.66		60.60,22.94		61.80,32.53		61.54,40.48
Enter the building |goto Darnassus,39.04,76.76,15 |walk
use Eridan's Vial##11682
.tip Inside the building.
collect Vial of Blessed Water##5646 |q 4441/1 |goto Darnassus 39.51,83.92
step
Leave the building |goto Darnassus,39.04,76.76,15 |walk |only if subzone("Temple of the Moon")
Enter the building |goto Darnassus,35.52,10.70,10 |walk
talk Arch Druid Fandral Staghelm##3516
.tip He walks around inside the building, at the top.
accept Un'Goro Soil##3764 |goto Darnassus 34.82,9.25
step
talk Jenal##9047
.tip On the ground, outside the building.
turnin Un'Goro Soil##3764 |goto Darnassus 31.49,8.23
step
Destroy or Sell These Items:
.tip They are no longer needed.
trash Un'Goro Soil##11018 |goto Darnassus 35.52,10.70
step
Enter the building |goto Darnassus,35.52,10.70,10 |walk
talk Mathrengyl Bearwalker##4217
.tip Upstairs inside the building, on the middle floor.
accept Rabine Saturna##6762 |goto Darnassus 35.38,8.40
step
talk Arch Druid Fandral Staghelm##3516
.tip He walks around inside the building, at the top.
accept Morrowgrain Research##3781 |goto Darnassus 34.80,9.25
step
talk Mathrengyl Bearwalker##4217
.tip Inside the tower, on the middle level.
turnin Morrowgrain Research##3781 |goto Darnassus 35.37,8.40
step
talk Jocaste##4146 |only if Hunter
talk Syurna##4163 |only if Rogue
talk Sildanair##4089 |only if Warrior
talk Denatharion##4218 |only if Druid
talk Jandria##4091 |only if Priest
trainer Jocaste##4146 |goto Darnassus/0 40.40,8.58 |only if Hunter |q 5159
trainer Sildanair##4089 |goto Darnassus/0 61.78,42.28 |only if Warrior |q 5159
trainer Syurna##4163 |goto Darnassus/0 36.97,21.86 |only if Rogue |q 5159
trainer Denatharion##4218  |goto Darnassus/0 34.74,7.43 |only if Druid |q 5159
trainer Jandria##4091 |goto Darnassus/0 37.91,82.80 |only if Priest |q 5159
.tip In the basement of the tree. |only if Rogue
.tip Train your spells.
step
talk Cyroen##4220
.tip Inside the building, on the bottom floor.
.tip If you can afford it.
.tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Cyroen##4220 |goto Darnassus 33.85,9.51 |q 5159
|only if Mage
step
talk Auctioneer Golothas##8723
.tip Inside the building.
.tip Buy these items from the auction house or collect them from your bank.
.tip You will turn them in for a lot of experience.
.tip If you have any in your bank, get them out before you buy more.
.tip If you can't get them, it's okay, but you may have to grind a bit later to make up for it.
collect 60 Wool Cloth##2592 |goto Darnassus 56.24,54.04 |q 7792 |future
collect 60 Silk Cloth##4306 |goto Darnassus 56.24,54.04 |q 7798 |future
collect 60 Mageweave Cloth##4338 |goto Darnassus 56.24,54.04 |q 7799 |future
collect 60 Runecloth##14047 |goto Darnassus 56.24,54.04 |q 7800 |future
|only if not selfmade
step
Run up the ramp |goto Darnassus,61.25,23.25,10 |only if walking
talk Raedon Duskstriker##14725
accept A Donation of Wool##7792 |goto Darnassus 64.02,23.00 |instant
|only if itemcount(2592) >= 60
step
talk Raedon Duskstriker##14725
accept A Donation of Silk##7798 |goto Darnassus 64.02,23.00 |instant
|only if itemcount(4306) >= 60
step
talk Raedon Duskstriker##14725
accept A Donation of Mageweave##7799 |goto Darnassus 64.02,23.00 |instant
|only if itemcount(4338) >= 60
step
talk Raedon Duskstriker##14725
accept A Donation of Runecloth##7800 |goto Darnassus 64.02,23.00 |instant
|only if itemcount(14047) >= 60
step
talk Kyrai##3561
.tip Upstairs inside the building.
.tip Stock up on poisons.
.tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Kyrai##3561 |goto Darnassus 32.55,19.74 |q 5159
|only if Rogue
]]
)
