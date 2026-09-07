local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Stonetalon Mountains (29-29)',
  {
    next = 'Leveling Guides\\Ashenvale (29-30)',
  },
  [[
step
NOTE:
This questing area is one of the slower ones.
.tip There are not many better quests right now that are safe to do.
.tip This is one of the few times dungeons are faster than questing.
.tip It is acceptable to do dungeons until level 30.50 and skip this guide, there are no important chains missed.
.tip If you skip ahead, your next guide is Wetlands (30-31)
Click Here to Continue |confirm
step
talk Keeper Albagorm##3994
accept Reclaiming the Charred Vale##1057 |goto Stonetalon Mountains 37.10,8.10
stickystart "Kill_Bloodfury_Ambushers"
stickystart "Kill_Bloodfury_Slayers"
stickystart "Kill_Bloodfury_Roguefeathers"
stickystart "Collect_Crystalized_Scales"
step
Leave Stonetalon Peak |goto Stonetalon Mountains,41.61,15.98,30 |only if walking and subzone("Stonetalon Peak")
Follow the path into the Charred Vale |goto Stonetalon Mountains,42.57,42.44,30 |only if walking and not subzone("The Charred Vale")
kill 7 Bloodfury Harpy##4022 |q 1057/1 |goto Stonetalon Mountains 34.51,62.27
You can find more around: |notinsticky
[32.26,60.12]
[32.44,65.30]
step
label "Kill_Bloodfury_Ambushers"
kill 7 Bloodfury Ambusher##4025 |q 1057/2 |goto Stonetalon Mountains 30.24,62.84
.tip These share spawns with other harpies in the area.
.tip Watch for patrols and respawns in the area.	|only if hardcore |notinsticky
.tip Patrols move quickly here, so pay attention.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[34.51,62.27]
[32.44,65.30]
step
label "Kill_Bloodfury_Slayers"
kill 7 Bloodfury Slayer##4024 |q 1057/3 |goto Stonetalon Mountains 35.96,68.52
.tip These share spawns with other harpies in the area.
.tip Watch for patrols and respawns in the area.	|only if hardcore |notinsticky
.tip Patrols move quickly here, so pay attention.	|only if hardcore |notinsticky
.tip Be careful of Sister Riven, she is an elite in this area |only if hardcore
You can find more around [28.83,69.50]
step
label "Kill_Bloodfury_Roguefeathers"
kill 7 Bloodfury Roguefeather##4023 |q 1057/4 |goto Stonetalon Mountains 35.96,68.52
.tip These share spawns with other harpies in the area.
.tip Watch for patrols and respawns in the area.	|only if hardcore |notinsticky
.tip Patrols move quickly here, so pay attention.	|only if hardcore |notinsticky
You can find more around [28.83,69.50]
step
label "Collect_Crystalized_Scales"
Kill Basilisk enemies around this area
.tip Kill: Blackened Basilisk##4044, Scorched Basilisk##4041, Singed Basilisk##4042
.tip They look like lizard beasts with six legs.
.tip This area is the most common place for them to spawn consistently. |notinsticky
.tip Run up and down this path that leads into the Charred Vale, and grind on the other enemies that appear as well. |notinsticky
.tip You can also find a few in the Charred Vale valley, but they're more rare. |notinsticky
collect 8 Crystalized Scales##5675 |q 1078/1 |goto Stonetalon Mountains 37.02,50.10
step
Follow the path up |goto Stonetalon Mountains,30.22,75.85,20 |only if walking and not zone("Desolace")
Follow the road to this path and run up the path to enter Nijel's Point |goto Desolace,67.49,15.76,20 |only if walking and not subzone("Nijel's Point")
talk Baritanas Skyriver##6706
fpath Nijel's Point |goto Desolace 64.66,10.54
step
talk Keeper Albagorm##3994
turnin Reclaiming the Charred Vale##1057 |goto Stonetalon Mountains 37.10,8.10
accept Reclaiming the Charred Vale##1059 |goto Stonetalon Mountains 37.10,8.10
]]
)
