local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Ashenvale (29-30)',
  {
    image = ZGV.IMAGESDIR .. 'Ashenvale',
    condition_suggested = function()
      return level >= 29 and level <= 30 and not completedq(1039)
    end,
    next = 'Leveling Guides\\Wetlands (30-31)',
    hardcore = true,
  },
  [[
step
talk Shindrell Swiftfire##3845
accept Kayneth Stillwind##4581 |goto Ashenvale 34.67,48.84
step
talk Fahran Silentblade##3969
|tip Inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Fahran Silentblade##3969 |goto Ashenvale 36.49,49.46 |q 1024 |future
|only if Rogue
step
talk Raene Wolfrunner##3691
|tip Inside the building.
accept Raene's Cleansing##1024 |goto Ashenvale 36.62,49.58
|tip This quest is grey, but the many followups will be yellow/green, and give a lot of xp.
step
talk Sentinel Melyria Frostshadow##3880
accept The Howling Vale##1022 |goto Ashenvale 22.23,52.98
step
talk Illiyana##3901
accept Vile Satyr! Dryads in Danger!##1021 |goto Ashenvale 21.73,53.35
step
Enter the building |goto Ashenvale 37.19,51.86 < 10 |walk
talk Pelturas Whitemoon##3894
|tip Inside the building.
accept Fallen Sky Lake##1035 |goto Ashenvale 37.37,51.79
|tip This requires a questline that is completed in the Ashenvale (22-23) guide.
step
Follow the road to this path |goto Ashenvale 50.22,56.23 < 40 |only if walking
Continue following the path |goto Ashenvale 51.80,45.73 < 30 |only if walking
talk Shael'dryn##3916
|tip She walks around this area.
turnin Raene's Cleansing##1024 |goto Ashenvale 53.54,46.29
accept Raene's Cleansing##1026 |goto Ashenvale 53.54,46.29
step
Follow the path around the mountain |goto Ashenvale 50.61,46.04 < 50 |only if walking and not subzone("Nightsong Woods")
Follow the path through the forest |goto Ashenvale 53.06,54.53 < 40 |only if walking and not subzone("Nightsong Woods")
Continue following the path through the forest |goto Ashenvale 58.01,56.00 < 40 |only if walking and not subzone("Nightsong Woods")
Kill Ancient enemies around this area
|tip They look like walking trees.
collect Wooden Key##5475 |goto Ashenvale 61.60,43.79 |q 1026
You can find more around: |notinsticky
[58.22,41.41]
[60.11,38.71]
[57.67,32.39]
[54.97,34.00]
step
Follow the path up |goto Ashenvale 54.56,34.55 < 20 |only if walking
click Worn Chest##19022
collect Iron Shaft##5464 |q 1026/1 |goto Ashenvale 54.41,35.39
step
Follow the path up |goto Ashenvale 54.17,32.34 < 20 |only if walking and not subzone("The Howling Vale")
Run through the tunnel to enter the Howling Vale |goto Ashenvale 52.92,37.64 < 15 |only if walking and not subzone("The Howling Vale")
|tip Watch for patrols and respawns while in the area. |only if hardcore
click Tome of Mel'Thandris##19027
View the Tome of Mel'Thandris |q 1022/1 |goto Ashenvale 50.49,39.13
step
Run through the tunnel to leave the Howling Vale |goto Ashenvale 51.33,38.20 < 15 |only if walking and subzone("The Howling Vale")
Follow the path up |goto Ashenvale 63.56,43.87 < 30 |only if walking and not subzone("Xavian")
Follow the path through the forest |goto Ashenvale 67.32,49.70 < 40 |only if walking and not subzone("Xavian")
talk Anilia##3920
turnin Vile Satyr! Dryads in Danger!##1021 |goto Ashenvale 78.32,44.82
accept The Branch of Cenarius##1031 |goto Ashenvale 78.32,44.82
step
kill Geltharis##4619
|tip He is level 32, so be careful.  If you don't feel comfortable, or don't have someone to help you, skip the quest and grind more later to make up for it. |only if hardcore
|tip If you skip it, abandon the quest "The Brand of Cenarius".
|tip Xavian Hellcallers are ranged attackers that deal heavy damage and may aggro from quite a range. |only if hardcore
|tip Enemies tend to be close together in this area. |only if hardcore
collect Branch of Cenarius##5461 |q 1031/1 |goto Ashenvale 78.00,42.42
step
talk Kayneth Stillwind##3848
turnin Kayneth Stillwind##4581 |goto Ashenvale 85.24,44.71
accept Forsaken Diseases##1011 |goto Ashenvale 85.24,44.71
step
talk Sentinel Melyria Frostshadow##3880
turnin The Howling Vale##1022 |goto Ashenvale 22.23,52.98
accept Velinde Starsong##1037 |goto Ashenvale 22.23,52.98
step
talk Illiyana##3901
turnin The Branch of Cenarius##1031 |goto Ashenvale 21.73,53.35
accept Satyr Slaying!##1032 |goto Ashenvale 21.73,53.35
step
Follow the road to this path |goto Ashenvale 50.22,56.23 < 40 |only if walking
Continue following the path |goto Ashenvale 51.80,45.73 < 30 |only if walking
talk Shael'dryn##3916
|tip She walks around this area.
turnin Raene's Cleansing##1026 |goto Ashenvale 53.54,46.29
accept Raene's Cleansing##1027 |goto Ashenvale 53.54,46.29
step
Follow the path back to the road |goto Ashenvale 50.61,46.04 < 50 |only if walking and not subzone("Nightsong Woods")
kill Shadethicket Oracle##3931
collect Fallen Moonstone##5508 |q 1035/1 |goto Ashenvale 66.68,82.19
step
kill Rotting Slime##3928+
click Rusty Chest+
|tip They sometimes appear on the ground after you kill the Rotting Slimes.
collect Iron Pommel##5519 |q 1027/1 |goto Ashenvale 70.95,74.87
You can find more around: |notinsticky
[74.24,76.26]
[73.50,73.46]
[74.39,69.78]
step
click Bottle of Disease
|tip This camp is surrounded by stealthed enemies.
|tip Kill them before running into the camp.
|tip There are stealthed alliance guards in the area as well.
|tip If you find one, you can drag enemies to them and they will help you fight.
collect Bottle of Disease##5440 |q 1011/1 |goto Ashenvale 75.29,72.22
step
Follow the road back to Forest Song |goto Ashenvale 73.90,66.81 < 40 |only if walking and subzone("The Dor'Danil Barrow Den")
talk Kayneth Stillwind##3848
turnin Forsaken Diseases##1011 |goto Ashenvale 85.24,44.71
step
talk Jarrodenus##12577
|tip This step is necessary to access some flight paths to Ratchet.
|tip Stick to the road, and don't worry about the patrolling orc outrider. They do not aggro.
fpath Talrendis Point |goto Azshara 11.90,77.59
stickystart "Collect_Satyr_Horns"
step
click Circle of Imprisonment##19901
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Enemies tend to pull together in this area, so be careful. |only if hardcore
Free the Highborne Soul in Satyrnaar |q 1140/2 |goto Ashenvale 81.60,48.58
step
Follow the path up out of Satyrnaar |goto Ashenvale 80.02,48.17 < 20 |only if walking and not subzone("Night Run")
Cross the river |goto Ashenvale 77.52,46.23 < 40 |only if walking and not subzone("Night Run")
Follow the path |goto Ashenvale 68.75,52.75 < 50 |only if walking
click Circle of Imprisonment##19901
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Enemies tend to pull together in this area, so be careful. |only if hardcore
Free the Highborne Soul in Night Run |q 1140/1 |goto Ashenvale 66.63,56.98
step
label "Collect_Satyr_Horns"
Kill enemies around this area
|tip They look like satyrs.
|tip Some of them are stealthed, so be careful.
|tip Remember to use Banish if you get overwhelmed |only if Warlock
|tip Watch for patrols and respawns while in the area. |only if hardcore
collect 16 Satyr Horns##5481 |q 1032/1 |goto Ashenvale 66.73,54.98
step
Jump down while avoiding getting stuck on a tree and follow the road |goto Ashenvale 63.92,52.01 < 50 |only if walking and subzone("Night Run")
Follow the path through the forest |goto Ashenvale 60.84,55.89 < 40 |only if walking
Continue following the path through the forest |goto Ashenvale 57.36,56.02 < 40 |only if walking
Continue following the path through the forest |goto Ashenvale 51.07,52.24 < 40 |only if walking
Follow the path to the moonwell |goto Ashenvale 51.62,45.58 < 30 |only if walking
talk Shael'dryn##3916
|tip She walks around this area.
turnin Raene's Cleansing##1027 |goto Ashenvale 53.54,46.21
step
Watch the dialogue
talk Shael'dryn##3916
|tip She walks around this area.
accept Raene's Cleansing##1028 |goto Ashenvale 53.54,46.21
step
Follow the path around the mountain |goto Ashenvale 50.68,46.06 < 40 |only if walking
Follow the path |goto Ashenvale 52.99,54.46 < 40 |only if walking
Follow the winding dirt path up to the shrine |goto Ashenvale 56.04,51.28 < 20 |only if walking
Continue up the winding dirt path |goto Ashenvale/0 56.92,52.15 < 10 |only if walking
Continue following the path |goto Ashenvale/0 57.11,50.35 < 10 |only if walking
click Hidden Shrine##19024
|tip At the end of the path.
turnin Raene's Cleansing##1028 |goto Ashenvale/0 56.38,49.23
accept Raene's Cleansing##1055 |goto Ashenvale/0 56.38,49.23
step
Jump down and follow the path through the forest |goto Ashenvale/0 52.65,54.46 < 40 |only if walking
Follow the path around the mountain to the moonwell |goto Ashenvale/0 51.62,45.58 < 30 |only if walking
talk Shael'dryn##3916
|tip She walks around this area.
turnin Raene's Cleansing##1055 |goto Ashenvale/0 53.54,46.21
accept Raene's Cleansing##1029 |goto Ashenvale/0 53.54,46.21
step
Follow the road back to Astranaar |goto Ashenvale/0 49.28,57.13 < 50 |only if walking
Enter the building |goto Ashenvale/0 37.19,51.87 < 10 |walk
talk Pelturas Whitemoon##3894
|tip Inside the building.
turnin Fallen Sky Lake##1035 |goto Ashenvale/0 37.36,51.79
step
talk Raene Wolfrunner##3691
|tip Inside the building.
turnin Raene's Cleansing##1029 |goto Ashenvale/0 36.62,49.58
accept Raene's Cleansing##1030 |goto Ashenvale/0 36.62,49.58
step
Follow the path down |goto Ashenvale/0 51.21,58.32 < 30 |only if walking
use Dartol's Rod of Transformation##5462
|tip Use it at this location.
Gain Furbolg Form |havebuff Furbolg Form##6405 |goto Ashenvale/0 54.00,72.61 |q 1030
step
Follow the path up |goto Ashenvale/0 53.85,73.90 < 20 |only if walking
talk Krolg##3897
turnin Raene's Cleansing##1030 |goto Ashenvale/0 50.85,75.07
accept Raene's Cleansing##1045 |goto Ashenvale/0 50.85,75.07
stickystart "Kill_Bloodtooth_Guards"
step
Follow the path up |goto Ashenvale/0 55.35,75.83 < 40 |only if walking
kill Ran Bloodtooth##3696 |q 1045/1 |goto Ashenvale/0 54.74,79.61
|tip Clear enemies carefully around here. |only if hardcore
|tip Enemies tend to pull together. |only if hardcore
|tip Destroy totems as they are summoned. |only if hardcore
collect Ran Bloodtooth's Skull##5388 |goto Ashenvale/0 54.74,79.61 |q 1046 |future
step
label "Kill_Bloodtooth_Guards"
kill 4 Bloodtooth Guard##3932 |q 1045/2 |goto Ashenvale/0 54.56,79.12
|tip Clear enemies carefully around here. |only if hardcore |notinsticky
|tip Enemies tend to pull together. |only if hardcore |notinsticky
|tip Destroy totems as they are summoned. |only if hardcore |notinsticky
step
use Dartol's Rod of Transformation##5462
|tip Use it at this location.
Gain Furbolg Form |havebuff Furbolg Form##6405 |goto Ashenvale/0 53.67,74.00 |q 1045
step
talk Krolg##3897
turnin Raene's Cleansing##1045 |goto Ashenvale/0 50.85,75.07
accept Raene's Cleansing##1046 |goto Ashenvale/0 50.85,75.07
step
_NOTE:_
Make a Choice
|tip If you turn in the "Raene's Cleansing" quest in the next step, you will get 3,050 xp, but you will lose Dartol's Rod of Transformation.
|tip This item allows you to transform into a furbolg for 3 minutes, and the item lasts forever in your bags.
|tip If you want to keep the item, abandon the "Raene's Cleansing" quest now.
|tip If you don't care about the transformation item, and want the xp instead, turn in the quest in the next guide step.
Click Here to Continue |confirm |q 1046
step
talk Raene Wolfrunner##3691
|tip Inside the building.
turnin Raene's Cleansing##1046 |goto Ashenvale/0 36.62,49.58
step
talk Innkeeper Kimlya##6738
|tip Inside the building.
home Astranaar |goto Ashenvale/0 36.99,49.22
step
talk Illiyana##3901
turnin Satyr Slaying!##1032 |goto Ashenvale/0 21.73,53.34
step
Follow the path up and follow the road to Maestra's Post |goto Ashenvale/0 25.37,48.35 < 30 |only if walking
talk Delgren the Purifier##3663
turnin The Tower of Althalaxx##1140 |goto Ashenvale/0 26.19,38.70
step
cast Teleport: Moonglade##18960
trainer Loganaar##12042 |goto Moonglade/0 52.50,40.54 |q 1037
|tip Go to Moonglade and train your spells, then hearth once it is off cooldown.
|only if Druid and C_Container.GetItemCooldown(6948) <= 100
step
talk Thyn'tel Bladeweaver##8026
turnin Velinde Starsong##1037 |goto Darnassus 61.78,39.19
accept Velinde's Effects##1038 |goto Darnassus 61.78,39.19
step
Run up the ramp |goto Darnassus 56.05,79.18 < 10 |only if walking
Cross the bridge |goto Darnassus 57.63,77.23 < 7 |only if walking
click Velinde's Locker
|tip Upstairs inside the building.
collect Velinde's Journal##5520 |q 1038/1 |goto Darnassus 62.29,83.24
step
talk Thyn'tel Bladeweaver##8026
turnin Velinde's Effects##1038 |goto Darnassus 61.78,39.19
accept The Barrens Port##1039 |goto Darnassus 61.78,39.19
step
Run up the ramp |goto Darnassus 67.55,61.15 < 10 |only if walking
talk Merelyssa##4171
|tip Inside the building.
buy Broadsword##2520 |n
|tip If you can afford it.
|tip You will use it when you reach level 31.
|tip If you have better, skip this step.
Visit the Vendor |vendor Geoffrey Hartwell##4600 |goto Darnassus 65.36,59.74 |q 306
|only if Rogue and itemcount(2520) == 0
step
talk Kyrai##3561
|tip Upstairs inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Kyrai##3561 |goto Darnassus 32.55,19.74 |q 306
|only if Rogue
step
Run up the stairs and enter the building |goto Ironforge 23.09,17.43 < 7 |walk
talk Harick Boulderdrum##5133
|tip Downstairs inside the building.
buy Pestilent Wand##5347 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Harick Boulderdrum##5133 |goto Ironforge 23.13,15.94 |q 306
|only if Priest and itemcount(5347) == 0
step
Enter the building |goto Darnassus 39.04,76.75 < 15 |walk
talk Elissa Dumas##4165
|tip Inside the building.
learnspell Teleport: Darnassus##3565 |goto Darnassus 40.60,82.13
|only if Mage
]]
)
