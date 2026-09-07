local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Extra Zones\\Westfall',
  {
    image = ZGV.IMAGESDIR .. 'Westfall',
    condition_suggested = function()
      return level >= 15 and level <= 21 and not completedq(155)
    end,
  },
  [[
step
talk Farmer Furlbrow##237
accept The Forgotten Heirloom##64 |goto Westfall 59.96,19.36
step
talk Verna Furlbrow##238
accept Westfall Stew##36 |goto Westfall 59.92,19.42
accept Poor Old Blanchy##151 |goto Westfall 59.92,19.42
stickystart "Collect_Handfuls_Of_Oats"
step
talk Farmer Saldean##233
accept The Killing Fields##26993 |goto Westfall 56.04,31.23
step
Enter the building |goto Westfall 56.15,31.04 < 7 |walk
talk Salma Saldean##235
|tip Inside the building.
turnin Westfall Stew##36 |goto Westfall 56.42,30.52
accept Goretusk Liver Pie##22 |goto Westfall 56.42,30.52
accept Westfall Stew##38 |goto Westfall 56.42,30.52
stickystart "Collect_Goretusk_Livers"
stickystart "Collect_Goretusk_Snouts"
stickystart "Collect_Stringy_Vulture_Meat"
step
Leave the building |goto Westfall 56.15,31.04 < 7 |walk
talk Thor##523
fpath Sentinel Hill |goto Westfall 56.55,52.64
step
talk Scout Galiaan##878
accept Red Leather Bandanas##153 |goto Westfall 53.98,52.98
step
talk Gryan Stoutmantle##234
turnin Report to Gryan Stoutmantle##109 |goto Westfall 56.33,47.52
accept The People's Militia##12 |goto Westfall 56.33,47.52
step
talk Captain Danuvin##821
accept Patrolling Westfall##102 |goto Westfall 56.43,47.62
stickystart "Kill_Defias_Trappers"
stickystart "Kill_Defias_Smugglers"
step
Kill Defias enemies around this area
collect 15 Red Leather Bandana |q 153/1 |goto Westfall 49.35,47.19
You can find more around: |notinsticky
[50.73,40.31]
[46.51,38.74]
step
label "Kill_Defias_Trappers"
kill 15 Defias Trapper##504 |q 12/1 |goto Westfall 49.35,47.19
You can find more around: |notinsticky
[50.73,40.31]
[46.51,38.74]
step
label "Kill_Defias_Smugglers"
kill 15 Defias Smuggler##95 |q 12/2 |goto Westfall 49.35,47.19
You can find more around: |notinsticky
[50.73,40.31]
[46.51,38.74]
step
talk Gryan Stoutmantle##234
turnin The People's Militia##12 |goto Westfall 56.33,47.52
accept The People's Militia##13 |goto Westfall 56.33,47.52
step
talk Scout Galiaan##878
turnin Red Leather Bandanas##153 |goto Westfall 53.99,52.98
step
Enter the building |goto Westfall 56.53,47.39 < 7 |walk
talk Quartermaster Lewis##491
|tip Inside the building.
accept A Swift Message##6181 |goto Westfall 57.00,47.17
|only if Human
step
Leave the building |goto Westfall 56.53,47.39 < 10 |walk
talk Thor##523
turnin A Swift Message##6181 |goto Westfall 56.56,52.64
accept Continue to Stormwind##6281 |goto Westfall 56.56,52.64
|only if Human
step
Enter the building |goto Stormwind City 73.68,47.66 < 10 |walk
talk Osric Strang##1323
|tip Inside the building.
turnin Continue to Stormwind##6281 |goto Stormwind City 74.32,47.24
accept Dungar Longdrink##6261 |goto Stormwind City 74.32,47.24
|only if Human
step
Leave the building |goto Stormwind City 73.68,47.66 < 7 |walk
Run up the ramp |goto Stormwind City 62.46,62.32 < 15 |only if walking
talk Dungar Longdrink##352
turnin Dungar Longdrink##6261 |goto Stormwind City 66.27,62.13
accept Return to Lewis##6285 |goto Stormwind City 66.27,62.13
|only if Human
step
Enter the building |goto Westfall 56.51,47.40 < 10 |walk
talk Quartermaster Lewis##491
|tip Inside the building.
turnin Return to Lewis##6285 |goto Westfall 57.00,47.17
|only if Human
step
Leave the building |goto Westfall 56.51,47.40 < 10 |c |q 22
|only if Human
stickystart "Collect_Goretusk_Snouts"
stickystart "Collect_Stringy_Vulture_Meat"
step
label "Collect_Goretusk_Livers"
Kill Goretusk enemies around this area
|tip They look like boars.
collect 8 Goretusk Liver##723 |q 22/1 |goto Westfall 53.55,41.12
You can find more around: |notinsticky
[60.81,45.54]
[60.01,29.16]
step
label "Collect_Goretusk_Snouts"
Kill Goretusk enemies around this area
|tip They look like boars.
collect 3 Goretusk Snout##731 |q 38/3 |goto Westfall 53.55,41.12
You can find more around: |notinsticky
[60.81,45.54]
[60.01,29.16]
step
label "Collect_Stringy_Vulture_Meat"
Kill Fleshripper enemies around this area
|tip They look like vultures.
collect 3 Stringy Vulture Meat##729 |q 38/1 |goto Westfall 53.55,41.12
You can find more around: |notinsticky
[60.81,45.54]
[60.01,29.16]
[49.44,27.31]
step
Enter the building |goto Westfall 49.53,19.39 < 10 |walk
click Furlbrow's Wardrobe
|tip Inside the building.
collect Furlbrow's Pocket Watch##841 |q 64/1 |goto Westfall 49.36,19.24
step
Leave the building |goto Westfall 49.53,19.39 < 7 |walk
Kill Riverpaw enemies around this area
collect 8 Gnoll Paw##725 |q 102/1 |goto Westfall 52.06,14.98
You can find more around: |notinsticky
[56.88,13.69]
[44.90,13.81]
step
Kill Murloc enemies around this area
collect 3 Murloc Eye##730 |q 38/2 |goto Westfall 54.65,10.94
step
Follow the path up |goto Westfall 54.63,14.26 < 30 |c |q 151
step
label "Collect_Handfuls_Of_Oats"
click Sack of Oats+
|tip They look like tan grain bags on the ground around this area.
|tip They are spread out around Westfall, usually concentrated near and around farm areas.
|tip Keep an eye out for these as you run around completing other quests.
collect 8 Handful of Oats##1528 |q 151/1 |goto Westfall 50.51,20.69
You can find more around: |notinsticky
[57.38,18.41]
step
talk Farmer Furlbrow##237
turnin The Forgotten Heirloom##64 |goto Westfall 59.96,19.36
step
talk Verna Furlbrow##238
turnin Poor Old Blanchy##151 |goto Westfall 59.92,19.42
stickystart "Collect_Flasks_Of_Oil"
stickystart "Kill_Harvest_Watchers"
step
kill Harvest Watcher##114+
collect 3 Okra##732 |q 38/4 |goto Westfall 53.89,32.26
|tip Make sure not to sell these to a vendor.
You can find more around [51.03,22.94]
step
label "Collect_Flasks_Of_Oil"
kill Harvest Watcher##114+
collect 5 Flask of Oil##814 |goto Westfall 53.89,32.26 |q 103 |future
|tip Make sure not to sell these to a vendor.
You can find more around [51.03,22.94]
step
label "Kill_Harvest_Watchers"
kill 10 Rusty Harvest Golem##114 |q 26993/1 |goto Westfall 53.89,32.26
You can find more around [51.03,22.94]
step
talk Farmer Saldean##233
turnin The Killing Fields##26993 |goto Westfall 56.04,31.23
accept The Killing Fields##26994 |goto Westfall 56.04,31.23
step
talk Farmer Furlbrow##237
turnin The Killing Fields##26994 |goto Westfall 59.92,19.42
step
Enter the building |goto Westfall 56.15,31.05 < 7 |walk
talk Salma Saldean##235
|tip Inside the building.
turnin Goretusk Liver Pie##22 |goto Westfall 56.42,30.52
turnin Westfall Stew##38 |goto Westfall 56.42,30.52
step
Leave the building |goto Westfall 56.15,31.05 < 7 |walk
talk Captain Danuvin##821
turnin Patrolling Westfall##102 |goto Westfall 56.42,47.62
stickystart "Kill_Defias_Looters"
step
kill 15 Defias Pillager##589 |q 13/1 |goto Westfall 44.91,69.38
step
label "Kill_Defias_Looters"
kill 15 Defias Looter##590 |q 13/2 |goto Westfall 44.91,69.38
step
talk Gryan Stoutmantle##234
turnin The People's Militia##13 |goto Westfall 56.33,47.52
accept The People's Militia##14 |goto Westfall 56.33,47.52
accept The Defias Brotherhood##65 |goto Westfall 56.33,47.52
step
Enter the building |goto Westfall 53.00,53.36 < 7 |walk
talk Innkeeper Heather##8931
|tip Inside the building.
home Sentinel Hill |goto Westfall 52.86,53.71
stickystart "Kill_Defias_Knuckledusters"
stickystart "Kill_Defias_Highwaymen"
step
Leave the building |goto Westfall 53.00,53.36 < 7 |walk
kill 5 Defias Pathstalker##121 |q 14/2 |goto Westfall 52.23,73.48
You can find more around: |notinsticky
[52.53,78.60]
[46.39,79.07]
step
label "Kill_Defias_Knuckledusters"
kill 5 Defias Knuckleduster##449 |q 14/3 |goto Westfall 52.23,73.48
You can find more around: |notinsticky
[52.53,78.60]
[46.39,79.07]
step
label "Kill_Defias_Highwaymen"
kill 15 Defias Highwayman##122 |q 14/1 |goto Westfall 52.23,73.48
You can find more around: |notinsticky
[52.53,78.60]
[46.39,79.07]
step
Leave the building |goto Westfall 53.00,53.36 < 7 |walk
talk Gryan Stoutmantle##234
turnin The People's Militia##14 |goto Westfall 56.33,47.52
step
Enter the building |goto Redridge Mountains 26.61,46.41 < 7 |walk
talk Wiley the Black##266
|tip Upstairs inside the building.
turnin The Defias Brotherhood##65 |goto Redridge Mountains 26.48,45.35
accept The Defias Brotherhood##132 |goto Redridge Mountains 26.48,45.35
step
Leave the building |goto Redridge Mountains 26.61,46.41 < 7 |walk
talk Gryan Stoutmantle##234
turnin The Defias Brotherhood##132 |goto Westfall 56.33,47.52
accept The Defias Brotherhood##135 |goto Westfall 56.33,47.52
step
Follow the path |goto Stormwind City 74.69,53.64 < 7 |walk
Enter the building |goto Stormwind City/0 77.14,58.04 < 7 |walk
talk Master Mathias Shaw##332
|tip Upstairs inside the building.
turnin The Defias Brotherhood##135 |goto Stormwind City 75.78,59.84
accept The Defias Brotherhood##141 |goto Stormwind City 75.78,59.84
step
talk Gryan Stoutmantle##234
turnin The Defias Brotherhood##141 |goto Westfall 56.33,47.52
accept The Defias Brotherhood##142 |goto Westfall 56.33,47.52
step
kill Defias Messenger##550
|tip He walks along the road between Jangolode Mine and Moonbrook.
|tip He walks into Gold Coast Quarry before traveling to either Jangolode Mine or Moonbrook.
|tip Run on the road while looking for him.
|tip He spawns around this location, so it may be easier to kill enemies around this area, waiting for him to either spawn or walk here.
collect A Mysterious Message##1381 |q 142/1 |goto Westfall 45.86,67.81
Also check around:
[37.79,44.43]
[30.42,42.34]
[44.44,25.91]
step
talk Gryan Stoutmantle##234
turnin The Defias Brotherhood##142 |goto Westfall 56.33,47.52
step
talk The Defias Traitor##467
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
accept The Defias Brotherhood##155 |goto Westfall 55.68,47.50 |noautoaccept
step
Watch the dialogue
|tip Follow the Defias Traitor and protect him as he walks.
|tip He eventually walks to this location.
Escort The Defias Traitor to Discover Where VanCleef is Hiding |q 155/1 |goto Westfall 42.54,71.69
step
talk Captain Grayson##392
accept Keeper of the Flame##103 |goto Westfall 30.02,86.02
step
talk Captain Grayson##392
turnin Keeper of the Flame##103 |goto Westfall 30.02,86.02
accept The Coastal Menace##104 |goto Westfall 30.02,86.02
step
kill Old Murk-Eye##391
|tip He walks along the beach around this area.
collect Scale of Old Murk-Eye |q 104/1 |goto Westfall 26.61,66.94
Also check around [34.95,84.87]
step
talk Captain Grayson##392
turnin The Coastal Menace##104 |goto Westfall 30.02,86.02
step
Leave the building |goto Westfall 53.00,53.36 < 7 |walk
talk Gryan Stoutmantle##234
turnin The Defias Brotherhood##155 |goto Westfall 56.33,47.52
]]
)
