local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Felwood (52-52)',
  {
    next = 'Leveling Guides\\Winterspring (52-52)',
  },
  [[
step
talk Arathandris Silversky##9528
.tip She walks around this area.
accept Cleansing Felwood##4101 |goto Felwood 54.15,86.83
step
talk Greta Mosshoof##10922
.tip She walks around this area.
accept Forces of Jaedenar##5155 |goto Felwood 51.21,82.11
step
Enter the building |goto Felwood,51.27,81.69,10 |walk
talk Eridan Bluewind##9116
.tip Inside the building.
accept The Corruption of the Jadefire##4421 |goto Felwood 51.35,81.51
step
use the Package of Empty Ooze Containers##11912
collect 6 Empty Cursed Ooze Jar##11914 |q 4512 |goto Felwood 41.22,71.29
collect 6 Empty Tainted Ooze Jar##11948 |q 4512 |goto Felwood 41.22,71.29
step
kill Cursed Ooze##7086+
use the Empty Cursed Ooze Jar##11914+
.tip Use them on their corpses.
collect 6 Filled Cursed Ooze Jar##11947 |q 4512/1 |goto Felwood 41.22,71.29
You can find more around: |notinsticky
[38.97,72.26]
[40.06,67.15]
[41.93,67.38]
stickystart "Kill_Jadefire_Felsworns"
stickystart "Kill_Jadefire_Shadowstalkers"
stickystart "Kill_Jadefire_Rogues"
step
Follow the path |goto Felwood,36.85,66.92,30 |only if walking
kill Xavathras##9454 |q 4421/4 |goto Felwood 32.24,67.10
.tip Watch for stealthed enemies in the area.		|only if hardcore
.tip Enemies have abnormal aggro radius around here.	|only if hardcore
step
label "Kill_Jadefire_Felsworns"
kill 11 Jadefire Felsworn##7109 |q 4421/1 |goto Felwood 32.90,66.62
.tip Watch for stealthed enemies in the area.		|only if hardcore |notinsticky
.tip Enemies have abnormal aggro radius around here.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[37.36,67.64]
step
label "Kill_Jadefire_Shadowstalkers"
kill 9 Jadefire Shadowstalker##7110 |q 4421/2 |goto Felwood 32.90,66.62
.tip They are stealthed around this area.
.tip Enemies have abnormal aggro radius around here.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[37.36,67.64]
step
label "Kill_Jadefire_Rogues"
kill 9 Jadefire Rogue##7106 |q 4421/3 |goto Felwood 32.90,66.62
.tip Watch for stealthed enemies in the area.		|only if hardcore |notinsticky
.tip Enemies have abnormal aggro radius around here.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[37.36,67.64]
step
Leave the Ruins of Constellas and follow the road north |goto Felwood,42.64,65.46,50 |only if walking and subzone("Ruins of Constellas")
kill Tainted Ooze##7092+
use the Empty Tainted Ooze Jar##11948+
.tip Use them on their corpses.
collect 6 Filled Tainted Ooze Jar##11949 |q 4512/2 |goto Felwood 40.76,59.25
You can find more around [40.28,55.59]
stickystart "Kill_Jaedenar_Guardians"
stickystart "Kill_Jaedenar_Adepts"
stickystart "Kill_Jaedenar_Cultists"
step
kill 4 Jaedenar Hound##7125 |q 5155/1 |goto Felwood 38.87,58.49
.tip You can find more in the caves nearby in this area.
.tip Watch for patrols and respawns while in the area.		|only if hardcore
.tip Watch for Jaedenar Adepts as they are ranged attackers.	|only if hardcore
.tip Enemies may run away in fear when at low health.		|only if hardcore
You can find more around: |notinsticky
[37.87,60.72]
[35.12,60.26]
step
label "Kill_Jaedenar_Guardians"
kill 4 Jaedenar Guardian##7113 |q 5155/2 |goto Felwood 38.87,58.49
.tip You can find more in the caves nearby in this area. |notinsticky
.tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
.tip Watch for Jaedenar Adepts as they are ranged attackers.	|only if hardcore |notinsticky
.tip Enemies may run away in fear when at low health.		|only if hardcore |notinsticky
You can find more around: |notinsticky
[37.87,60.72]
[35.12,60.26]
step
label "Kill_Jaedenar_Adepts"
kill 6 Jaedenar Adept##7115 |q 5155/3 |goto Felwood 38.87,58.49
.tip You can find more in the caves nearby in this area. |notinsticky
.tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
.tip Enemies may run away in fear when at low health.		|only if hardcore |notinsticky
You can find more around: |notinsticky
[37.87,60.72]
[35.12,60.26]
step
label "Kill_Jaedenar_Cultists"
kill 6 Jaedenar Cultist##7112 |q 5155/4 |goto Felwood 38.87,58.49
.tip You can find more in the caves nearby in this area. |notinsticky
.tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
.tip Watch for Jaedenar Adepts as they are ranged attackers.	|only if hardcore |notinsticky
.tip Enemies may run away in fear when at low health.		|only if hardcore |notinsticky
You can find more around: |notinsticky
[37.87,60.72]
[35.12,60.26]
step
Leave Jaedenar and follow the road south |goto Felwood,41.37,57.71,50 |only if walking and subzone("Jaedenar")
talk Greta Mosshoof##10922
.tip She walks around this area.
turnin Forces of Jaedenar##5155 |goto Felwood 51.21,82.11
accept Collection of the Corrupt Water##5157 |goto Felwood 51.21,82.11
step
Enter the building |goto Felwood,51.27,81.69,10 |walk
talk Eridan Bluewind##9116
.tip Inside the building.
turnin The Corruption of the Jadefire##4421 |goto Felwood 51.35,81.51
accept Further Corruption##4906 |goto Felwood 51.35,81.51
step
talk Taronn Redfeather##10921
.tip Inside the building.
accept Verifying the Corruption##5156 |goto Felwood 50.89,81.62
step
talk Grazle##11554
accept Timbermaw Ally##8460 |goto Felwood 50.93,85.01
stickystart "Kill_Deadwood_Pathfinders"
stickystart "Kill_Deadwood_Gardeners"
step
Follow the path |goto Felwood,49.02,89.29,50 |only if walking and not subzone("Deadwood Village")
kill 6 Deadwood Warrior##7153 |q 8460/1 |goto Felwood 48.32,92.99
.tip Watch for enemies grouped at the camps here as they may pull in groups.	|only if hardcore
.tip Deadwood Gardeners may reduce the healing on you.				|only if hardcore
.tip Deadwood Pathfinders are ranged attackers.					|only if hardcore
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
label "Kill_Deadwood_Pathfinders"
kill 6 Deadwood Pathfinder##7155 |q 8460/2 |goto Felwood 48.32,92.99
.tip Watch for enemies grouped at the camps here as they may pull in groups.	|only if hardcore |notinsticky
.tip Deadwood Gardeners may reduce the healing on you.				|only if hardcore |notinsticky
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
label "Kill_Deadwood_Gardeners"
kill 6 Deadwood Gardener##7154 |q 8460/3 |goto Felwood 48.32,92.99
.tip Watch for enemies grouped at the camps here as they may pull in groups.	|only if hardcore |notinsticky
.tip Deadwood Pathfinders are ranged attackers.				|only if hardcore |notinsticky
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
Leave Deadwood Village |goto Felwood,49.56,88.70,50 |only if walking and subzone("Deadwood Village")
talk Grazle##11554
turnin Timbermaw Ally##8460 |goto Felwood 50.93,85.02
accept Speak to Nafien##8462 |goto Felwood 50.93,85.02
step
Kill Deadwood enemies around this area
Reach Unfriendly Reputation with the Timbermaw Hold Faction |complete rep('Timbermaw Hold') >= Unfriendly |goto Felwood 48.32,92.99
.tip You are about to go through a long tunnel soon, full of level 52-54 enemies.
.tip If you are not at least Unfriendly with this faction, you will be attacked.
.tip Watch for enemies grouped at the camps here as they may pull in groups.	|only if hardcore
.tip Deadwood Gardeners may reduce the healing on you.				|only if hardcore
.tip Deadwood Pathfinders are ranged attackers.				|only if hardcore
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
Leave Deadwood Village and follow the road north |goto Felwood,51.01,84.64,50 |only if walking and subzone("Deadwood Village")
Follow the path into Jaedenar |goto Felwood,38.37,59.85,30 |walk
use the Empty Canteen##12922
.tip Watch for patrols and respawns while in the area.		|only if hardcore
.tip Watch for Jaedenar Adepts as they are ranged attackers.	|only if hardcore
.tip Enemies may run away in fear when at low health.		|only if hardcore
collect Corrupt Moonwell Water##12907 |q 5157/1 |goto Felwood 35.20,59.87
stickystart "Kill_Entropic_Beasts"
stickystart "Kill_Entropic_Horrors"
step
Leave Jaedenar and follow the road north |goto Felwood,41.37,57.71,50 |only if walking and subzone("Jaedenar")
Explore the Craters in Shatter Scar Vale |q 5156/3 |goto Felwood 41.54,42.98
.tip Be careful to avoid the elite Infernal Sentries around this area.
step
label "Kill_Entropic_Beasts"
kill 2 Entropic Beast##9878 |q 5156/1 |goto Felwood 41.36,41.19
.tip Be careful to avoid the elite Infernal Sentries around this area. |notinsticky
You can find more around [43.63,40.55]
step
label "Kill_Entropic_Horrors"
kill 2 Entropic Horror##9879 |q 5156/2 |goto Felwood 41.36,41.19
.tip Be careful to avoid the elite Infernal Sentries around this area. |notinsticky
You can find more around [43.63,40.55]
step
Follow the path up into Jadefire Run |goto Felwood,43.07,21.32,30 |only if walking and not subzone("Jadefire Run")
Follow the path |goto Felwood,39.79,20.32,30 |only if walking
kill Xavaric##10648 |q 4906/4 |goto Felwood 39.07,22.35
.tip Watch for enemies near the camps as they tend to pull in groups.	|only if hardcore
.tip He us level 55 with 2 enemies near him.  Try to pull him with only 1 extra enemy.  If you're not confident you can kill him, skip the quest.
collect Flute of Xavaric##11668 |goto Felwood 39.07,22.35 |q 939 |future
step
use the Flute of Xavaric##11668
accept Flute of Xavaric##939
stickystart "Kill_Jadefire_Hellcallers"
stickystart "Kill_Jadefire_Betrayers"
stickystart "Kill_Jadefire_Tricksters"
step
Kill Jadefire enemies around this area
.tip Watch for enemies near the camps as they tend to pull in groups.	|only if hardcore
collect 5 Jadefire Felbind##11674 |q 939/1 |goto Felwood 40.73,19.72
You can find more around: |notinsticky
[42.87,15.21]
[39.10,21.69]
step
label "Kill_Jadefire_Hellcallers"
kill 8 Jadefire Hellcaller##7111 |q 4906/1 |goto Felwood 40.73,19.72
.tip Watch for enemies near the camps as they tend to pull in groups.	|only if hardcore |notinsticky
.tip They share spawn points with the others, so kill those also, if you can't find any. |notinsticky
You can find more around: |notinsticky
[42.87,15.21]
[39.10,21.69]
step
label "Kill_Jadefire_Betrayers"
kill 8 Jadefire Betrayer##7108 |q 4906/2 |goto Felwood 40.73,19.72
.tip Watch for enemies near the camps as they tend to pull in groups.	|only if hardcore |notinsticky
.tip They share spawn points with the others, so kill those also, if you can't find any. |notinsticky
You can find more around: |notinsticky
[42.87,15.21]
step
label "Kill_Jadefire_Tricksters"
kill 8 Jadefire Trickster##7107 |q 4906/3 |goto Felwood 40.73,19.72
.tip Watch for enemies near the camps as they tend to pull in groups.	|only if hardcore |notinsticky
.tip They share spawn points with the others, so kill those also, if you can't find any. |notinsticky
You can find more around: |notinsticky
[42.87,15.21]
step
Kill Warpwood enemies around this area
.tip Inside and outside the cave.
.tip Watch for patrols and respawns while here.	|only if hardcore
collect 15 Blood Amber##11503 |q 4101/1 |goto Felwood 55.78,16.85
step
Leave the cave |goto Felwood,55.88,17.15,40 |walk |only if subzone("Irontree Cavern")
Follow the road |goto Felwood,53.91,12.80,50 |only if walking and (subzone("Irontree Cavern") or subzone("Irontree Woods"))
Follow the path to Talonbranch Glade |goto Felwood,61.80,16.20,70 |only if walking and not subzone("Talonbranch Glade")
talk Mishellena##12578
fpath Talonbranch Glade |goto Felwood 62.49,24.24
step
Follow the road up |goto Felwood,64.61,14.86,30 |only if walking
talk Nafien##15395
turnin Speak to Nafien##8462 |goto Felwood 64.77,8.13
]]
)
