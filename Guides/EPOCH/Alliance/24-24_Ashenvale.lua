local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Ashenvale (24-24)',
  {
    next = 'Leveling Guides\\Wetlands (24-25)',
  },
  [[
step
Prepare for Blackfathom Deeps
.tip It will be a good time to start Blackfathom Deeps soon.
.tip You should run it after this guide, roughly 45 minutes.
.tip Start looking for a group.
|confirm
|only if guideflag("BFDflag")
step
talk Shindrell Swiftfire##3845
turnin Pridewings of Stonetalon##1134 |goto Ashenvale 34.67,48.84
step
talk Raene Wolfrunner##3691
.tip Inside the building.
accept An Aggressive Defense##1025 |goto Ashenvale 36.62,49.58
accept Culling the Threat##1054 |goto Ashenvale 36.62,49.58
stickystart "Kill_Foulweald_Ursas"
stickystart "Kill_Foulweald_Totemics"
stickystart "Kill_Foulweald_Warriors"
step
kill Foulweald Den Watcher##3746 |q 1025/1 |goto Ashenvale 50.44,61.25
.tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
.tip Foulweald Shaman and Totemics utilize totems which should be destroyed as they appear. |only if hardcore |notinsticky
.tip Enemies near buildings tend to pull in groups so be prepared. |only if hardcore |notinsticky
You can find more around [55.84,62.92]
step
label "Kill_Foulweald_Ursas"
kill 2 Foulweald Ursa##3749 |q 1025/2 |goto Ashenvale 50.44,61.25
.tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
.tip Foulweald Shaman and Totemics utilize totems which should be destroyed as they appear. |only if hardcore |notinsticky
.tip Enemies near buildings tend to pull in groups so be prepared. |only if hardcore |notinsticky
You can find more around [55.84,62.92]
step
label "Kill_Foulweald_Totemics"
kill 10 Foulweald Totemic##3750 |q 1025/3 |goto Ashenvale 50.44,61.25
.tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
.tip Foulweald Shaman and Totemics utilize totems which should be destroyed as they appear. |only if hardcore |notinsticky
.tip Enemies near buildings tend to pull in groups so be prepared. |only if hardcore |notinsticky
You can find more around [55.84,62.92]
step
label "Kill_Foulweald_Warriors"
kill 12 Foulweald Warrior##3743 |q 1025/4 |goto Ashenvale 50.44,61.25
.tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
.tip Foulweald Shaman and Totemics utilize totems which should be destroyed as they appear. |only if hardcore |notinsticky
.tip Enemies near buildings tend to pull in groups so be prepared. |only if hardcore |notinsticky
You can find more around [55.84,62.92]
step
Enter the building |goto Ashenvale,50.12,66.47,15 |walk
talk Sentinel Velene Starstrike##3885
.tip Inside the building.
accept Elemental Bracers##1016 |goto Ashenvale 49.80,67.21
step
kill Befouled Water Elemental##3917+
.tip You can find more in the water surrounding this small island.
.tip Be careful of Tideress, a level 27 green water elemental that moves around this area.
.tip These enemies are immune to frost damage.
collect 5 Intact Elemental Bracer##12220 |goto Ashenvale 48.38,69.68 |q 1016
step
use Divining Scroll##5456
collect Divined Scroll##5455 |q 1016/1
step
talk Sentinel Velene Starstrike##3885
.tip Inside the building.
turnin Elemental Bracers##1016 |goto Ashenvale 49.80,67.21
step
talk Jarrodenus##12577
.tip This step is necessary to access some flight paths to Ratchet.
.tip Stick to the road, and don't worry about the patrolling orc outrider. They do not aggro.
fpath Talrendis Point |goto Azshara 11.90,77.59
|only if not hardcore
step
talk Raene Wolfrunner##3691
.tip Inside the building.
turnin An Aggressive Defense##1025 |goto Ashenvale 36.62,49.58
step
Follow the path up |goto Ashenvale,41.67,49.97,20 |only if walking and not subzone("Thistlefur Village")
kill Dal Bloodclaw##3987
.tip He looks like a grey furbolg that walks around this area.
.tip Avoid pulling him when near buildings. |only if hardcore
.tip Clear an area before engaging. |only if hardcore
collect Dal Bloodclaw's Skull##5544 |q 1054/1 |goto Ashenvale 37.35,35.60
Also check around [39.36,36.52]
step
talk Raene Wolfrunner##3691
.tip Inside the building.
turnin Culling the Threat##1054 |goto Ashenvale 36.62,49.58
step
Leave the Blackfathom Deeps Dungeon
Click Here to Continue |confirm |q 971
|only if guideflag("BFDflag")
step
talk Terenthis##3693
.tip Inside the building.
turnin Escape Through Force##994 |goto Darkshore 39.37,43.48
|only if not hardcore
step
Fly to Darnassus
talk Chief Archaeologist Greywhisker##2912
.tip Outside the building.
turnin The Absent Minded Prospector##741 |goto Darnassus 31.25,84.50
turnin The Odd Relic##27229
accept The Absent Minded Prospector##942 |goto Darnassus 31.25,84.50
step
talk Jocaste##4146 |only if Hunter
talk Syurna##4163 |only if Rogue
talk Sildanair##4089 |only if Warrior
talk Denatharion##4218 |only if Druid
talk Jandria##4091 |only if Priest
trainer Jocaste##4146 |goto Darnassus/0 40.40,8.58 |only if Hunter
trainer Sildanair##4089 |goto Darnassus/0 61.78,42.28 |only if Warrior
trainer Syurna##4163 |goto Darnassus/0 36.97,21.86 |only if Rogue
trainer Denatharion##4218  |goto Darnassus/0 34.74,7.43 |only if Druid
trainer Jandria##4091 |goto Darnassus/0 37.91,82.80 |only if Priest
.tip In the basement of the tree. |only if Rogue
.tip Train your spells.
]]
)
