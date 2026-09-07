local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Hillsbrad Foothills (32-33)',
  {
    next = 'Leveling Guides\\Arathi Highlands (33-33)',
  },
  [[
step
talk Darren Malvew##2382
accept Costly Menace##564 |goto Hillsbrad Foothills 52.42,55.96
step
talk Loremaster Dibbs##2277
turnin Southshore##538 |goto Hillsbrad Foothills 50.57,57.09
step
talk Wesley##9978
.tip Abandon your temporary pet and get your permanent pet from the stable.
.tip Teach "Bite 5" to your permanent pet.
Click Here to Continue |confirm |goto Hillsbrad Foothills 50.42,58.80 |q 536 |future
|only if Hunter
step
Enter the building |goto Hillsbrad Foothills,50.45,58.55,10 |walk
talk Lieutenant Farren Orinelle##2228
.tip Inside the building.
accept Down the Coast##536 |goto Hillsbrad Foothills 51.46,58.38
step
talk Chef Jessen##2430
.tip Inside the building.
accept Soothing Turtle Bisque##555 |goto Hillsbrad Foothills 51.89,58.68
stickystart "Kill_Torn_Fin_Oracles"
step
Leave the building |goto Hillsbrad Foothills,50.45,58.55,10 |walk |only if subzone("Southshore") and _G.IsIndoors()
kill 10 Torn Fin Tidehunter##2377 |q 536/1 |goto Hillsbrad Foothills 46.55,64.38
.tip Enemies near the murloc huts tend to pull in groups. |only if hardcore
.tip Torn Fin Oracles may heal when at low health. |only if hardcore
.tip Torn Fin Tidehunters may root you in place. |only if hardcore
.tip Enemies around this area may run away in fear when at low health. |only if hardcore
.tip You can find more in the water along the shore.
You can find more around: |notinsticky
[43.51,67.70]
[37.04,68.74]
step
label "Kill_Torn_Fin_Oracles"
kill 10 Torn Fin Oracle##2376 |q 536/2 |goto Hillsbrad Foothills 46.55,64.38
.tip You can find more in the water along the shore.
.tip Enemies near the murloc huts tend to pull in groups. |only if hardcore |notinsticky
.tip Torn Fin Oracles may heal when at low health. |only if hardcore |notinsticky
.tip Torn Fin Tidehunters may root you in place. |only if hardcore |notinsticky
.tip Enemies around this area may run away in fear when at low health. |only if hardcore |notinsticky
You can find more around: |notinsticky
[43.51,67.70]
[37.04,68.74]
step
Enter the building |goto Hillsbrad Foothills,50.45,58.55,10 |walk
talk Lieutenant Farren Orinelle##2228
.tip Inside the building.
turnin Down the Coast##536 |goto Hillsbrad Foothills 51.46,58.38
accept Farren's Proof##559 |goto Hillsbrad Foothills 51.46,58.38
step
Leave the building |goto Hillsbrad Foothills,50.45,58.55,10 |walk |only if subzone("Southshore") and _G.IsIndoors()
Kill Torn Fin enemies around this area
.tip You can find more in the water along the shore.
.tip Enemies near the murloc huts tend to pull in groups. |only if hardcore
.tip Torn Fin Oracles may heal when at low health. |only if hardcore
.tip Torn Fin Tidehunters may root you in place. |only if hardcore
.tip Enemies around this area may run away in fear when at low health. |only if hardcore
collect 10 Murloc Head##3716 |q 559/1 |goto Hillsbrad Foothills 46.55,64.38
You can find more around: |notinsticky
[43.51,67.70]
[37.04,68.74]
step
Enter the building |goto Hillsbrad Foothills,50.45,58.55,10 |walk
talk Lieutenant Farren Orinelle##2228
.tip Inside the building.
turnin Farren's Proof##559 |goto Hillsbrad Foothills 51.46,58.38
accept Farren's Proof##560 |goto Hillsbrad Foothills 51.46,58.38
step
Leave the building |goto Hillsbrad Foothills,50.45,58.55,10 |walk |only if subzone("Southshore") and _G.IsIndoors()
talk Marshal Redpath##2263
turnin Farren's Proof##560 |goto Hillsbrad Foothills 49.48,58.73
accept Farren's Proof##561 |goto Hillsbrad Foothills 49.48,58.73
step
Enter the building |goto Hillsbrad Foothills,49.00,59.12,10 |walk
talk Magistrate Henry Maleb##2276
.tip Inside the building.
accept Syndicate Assassins##505 |goto Hillsbrad Foothills 48.14,59.11
step
Leave the building |goto Hillsbrad Foothills,49.00,59.12,10 |walk |only if subzone("Southshore Town Hall")
Enter the building |goto Hillsbrad Foothills,50.45,58.55,10 |walk
talk Lieutenant Farren Orinelle##2228
.tip Inside the building.
turnin Farren's Proof##561 |goto Hillsbrad Foothills 51.46,58.38
accept Stormwind Ho!##562 |goto Hillsbrad Foothills 51.46,58.38
stickystart "Kill_Daggerspine_Sirens"
step
Leave the building |goto Hillsbrad Foothills,50.45,58.55,10 |walk |only if subzone("Southshore") and _G.IsIndoors()
kill 10 Daggerspine Shorehunter##2369 |q 562/1 |goto Hillsbrad Foothills 53.42,64.21
.tip You can find more in the water along the shore.
.tip Daggerspine enemies may run away in fear when at low health.	|only if hardcore
.tip Daggerspine Siren are ranged attackers that deal heavy damage.	|only if hardcore
.tip Watch for patrols and respawn while in the area.			|only if hardcore
You can find more around: |notinsticky
[57.57,66.32]
[60.95,75.24]
step
label "Kill_Daggerspine_Sirens"
kill 10 Daggerspine Siren##2371 |q 562/2 |goto Hillsbrad Foothills 53.42,64.21
.tip You can find more in the water along the shore.
.tip Daggerspine enemies may run away in fear when at low health.	|only if hardcore |notinsticky
.tip Daggerspine Siren are ranged attackers that deal heavy damage.	|only if hardcore |notinsticky
.tip Watch for patrols and respawn while in the area.			|only if hardcore |notinsticky
You can find more around: |notinsticky
[57.57,66.32]
[60.95,75.24]
step
Kill enemies around this area
.tip You can find more in the water along the shore.
.tip You should already be level 33, or pretty close.
.tip Daggerspine enemies may run away in fear when at low health.	|only if hardcore |notinsticky
.tip Daggerspine Siren are ranged attackers that deal heavy damage.	|only if hardcore |notinsticky
.tip Watch for patrols and respawn while in the area.			|only if hardcore |notinsticky
ding 33 |goto Hillsbrad Foothills 53.42,64.21
You can find more around: |notinsticky
[57.57,66.32]
[60.95,75.24]
step
Enter the building |goto Hillsbrad Foothills,50.45,58.55,10 |walk
talk Lieutenant Farren Orinelle##2228
.tip Inside the building.
turnin Stormwind Ho!##562 |goto Hillsbrad Foothills 51.46,58.38
accept Reassignment##563 |goto Hillsbrad Foothills 51.46,58.38
step
Leave the building |goto Hillsbrad Foothills,50.45,58.55,10 |walk |only if subzone("Southshore") and _G.IsIndoors()
talk Bartolo Ginsetti##2438
accept Bartolo's Yeti Fur Cloak##565 |goto Hillsbrad Foothills 49.60,55.80
step
Leave the building |goto Hillsbrad Foothills,50.45,58.55,10 |walk |only if subzone("Southshore") and _G.IsIndoors()
Enter the building |goto Hillsbrad Foothills,49.31,55.49,10 |walk
talk Micha Yance##2381
.tip Inside the building.
buy Soothing Spices##3713 |q 555/2 |goto Hillsbrad Foothills 48.94,55.03
buy Fine Thread##2321 |q 565/2 |goto Hillsbrad Foothills 48.94,55.03
.tip Be careful not to accidentally sell this to a vendor.
step
NOTE:
Incoming Cave Step
.tip The next step has you venturing into a cave.
.tip While inside, there are constant patrols and inconsistent respawns of the yetis.
.tip The quest is optional.
.tip If you end up skipping, abandon the quest "A King's Tribute".
.tip You will also need to grind 2,500 xp.
Click Here to Continue |confirm |q 689 |future
|only if hardcore
stickystart "Collect_YetiFur"
step
Leave the building |goto Hillsbrad Foothills,49.31,55.49,10 |walk |only if subzone("Southshore") and _G.IsIndoors()
click Alterac Granite##2714+
.tip They look like flat grey stones standing upright near the walls inside the cave.
.tip Watch for patrols and respawns while inside the cave. |only if hardcore
collect 5 Alterac Granite##4521 |q 689/1 |goto Hillsbrad Foothills 46.18,31.83
step
label "Collect_YetiFur"
Kill Yetis in the area
collect 10 Yeti Fur##3720 |q 565/4 |goto Hillsbrad Foothills 46.18,31.83
stickystart "Kill_Hulking_Mountain_Lions"
step
Leave the cave |goto Hillsbrad Foothills,46.18,31.83,15 |walk |only if subzone("Darrow Hill") and _G.IsIndoors()
kill 8 Mountain Lion##2406 |q 564/1 |goto Alterac Mountains 43.94,77.87
You can find more around: |notinsticky
[Alterac Mountains 37.69,85.48]
[Alterac Mountains 32.86,83.10]
stickystart "Kill_Syndicate_Thieves"
stickystart "Kill_Syndicate_Footpads"
step
click Syndicate Documents##1738
.tip Be careful, the enemies in these camps respawn pretty quickly.
.tip If you have trouble, try to find someone to help you.
accept Foreboding Plans##510 |goto Alterac Mountains 47.91,82.13
accept Encrypted Letter##511 |goto Alterac Mountains 47.91,82.13
If it's not here, check the other camp at [58.32,67.92]
step
label "Kill_Syndicate_Thieves"
Follow the path up |goto Alterac Mountains,53.84,65.36,30 |only if walking and not subzone("Sofera's Naze")
kill 8 Syndicate Thief##2241 |q 505/2 |goto Alterac Mountains 58.32,67.92
.tip Focus on killing them in this camp. |notinsticky
.tip The next step in the guide is nearby this camp. |notinsticky
.tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
.tip Enemies near the camp tend to pull in a group.		|only if hardcore |notinsticky
step
label "Kill_Syndicate_Footpads"
Follow the path up |goto Alterac Mountains,53.84,65.36,30 |only if walking and not subzone("Sofera's Naze")
kill 12 Syndicate Footpad##2240 |q 505/1 |goto Alterac Mountains 58.32,67.92
.tip Focus on killing them in this camp. |notinsticky
.tip The next step in the guide is nearby this camp. |notinsticky
.tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
.tip Enemies near the camp tend to pull in a group.		|only if hardcore |notinsticky
step
label "Kill_Hulking_Mountain_Lions"
kill 10 Hulking Mountain Lion##2407 |q 564/2 |goto Alterac Mountains 43.94,77.87
You can find more around: |notinsticky
[37.69,85.48]
[32.86,83.10]
step
kill Snapjaw##2408+
collect 10 Turtle Meat##3712 |q 555/1 |goto Hillsbrad Foothills 70.16,11.90
.tip Be careful not to accidentally sell these to a vendor.
.tip There may be a patrolling elite enemy in the area.
You can find more around: |notinsticky
[Alterac Mountains 73.90,66.37]
[Alterac Mountains 80.00,58.78]
[Alterac Mountains 84.47,51.55]
[Alterac Mountains 89.72,47.03]
step
Follow the path north to the road |goto Alterac Mountains,80.36,53.97,100 |only if walking and not zone("Western Plaguelands")
Follow the road |goto Alterac Mountains,80.02,42.29,40 |only if walking and not zone("Western Plaguelands")
talk Bibilfaz Featherwhistle##12596
fpath Chillwind Camp |goto Western Plaguelands 42.93,85.06
step
talk Darren Malvew##2382
turnin Costly Menace##564 |goto Hillsbrad Foothills 52.42,55.96
step
talk Bartolo Ginsetti##2438
turnin Bartolo's Yeti Fur Cloak##565 |goto Hillsbrad Foothills 49.60,55.80
step
talk Loremaster Dibbs##2277
turnin Encrypted Letter##511 |goto Hillsbrad Foothills 50.57,57.09
accept Letter to Stormpike##514 |goto Hillsbrad Foothills 50.57,57.09
step
Enter the building |goto Hillsbrad Foothills,50.45,58.55,10 |walk
talk Chef Jessen##2430
.tip Inside the building.
turnin Soothing Turtle Bisque##555 |goto Hillsbrad Foothills 51.89,58.68
step
Leave the building |goto Hillsbrad Foothills,50.45,58.55,10 |walk |only if subzone("Southshore") and _G.IsIndoors()
talk Phin Odelic##2711
accept Hints of a New Plague?##659 |goto Hillsbrad Foothills 50.34,59.05
step
Enter the building |goto Hillsbrad Foothills,49.02,59.12,10 |walk
talk Magistrate Henry Maleb##2276
.tip Inside the building.
turnin Syndicate Assassins##505 |goto Hillsbrad Foothills 48.14,59.11
turnin Foreboding Plans##510 |goto Hillsbrad Foothills 48.14,59.11
]]
)
