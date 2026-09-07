local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Swamp of Sorrows (43-43)',
  {
    next = 'Leveling Guides\\Tanaris (43-44)',
  },
  [[
step
talk Malissa##3135
.tip Walking around here.
.tip Stock up on poisons.
.tip Open your poison crafting window and purchase the ingredients you need.
.tip Buy enough your journey to Tanaris.
Visit the Vendor |vendor Malissa##3135 |goto Duskwood 79.44,44.44 |q 1477
|only if Rogue
step
talk Watchmaster Sorigal##5464
turnin Vital Supplies##1477 |goto Duskwood 75.77,46.15
step
NOTE:
Be very careful to avoid the Stonard Scouts
.tip They are currently bugged and will PvP flag you just for being near them.
.tip This will let horde players attack and kill your character for the next 5 minutes.
Click Here To Confirm |confirm
|only if hardcore
step
Cross the bridge and follow the road |goto Deadwind Pass,41.83,34.69,30 |only if walking and not zone("Swamp of Sorrows")
Follow the road into Swamp of Sorrows |goto Deadwind Pass,52.29,43.58,40 |only if walking and not zone("Swamp of Sorrows")
talk Watcher Biggs##5476
accept Driftwood##1398 |goto Swamp of Sorrows 26.74,59.83
stickystart "Collect_Khadgar_Essay"
stickystart "Collect_Pristine_Crawler_Legs"
step
click Sundried Driftwood##24798+
.tip They look like wooden logs on the ground around this area.
.tip You can find them along this entire coast.
.tip Avoid Stonard as you travel here.					|only if not subzone("Misty Reed Strand")
.tip Murlocs at the Misty Reed Strand may run away in fear when at low health.	|only if hardcore
collect 8 Sundried Driftwood##6146 |q 1398/1 |goto Swamp of Sorrows 92.69,66.61
You can find more around: |notinsticky
[94.31,56.26]
[87.05,79.49]
[82.89,91.19]
step
label "Collect_Pristine_Crawler_Legs"
Kill Crawler enemies around this area
.tip They look like crabs.
.tip Silt Crawlers have a higher drop rate than Monstrous Crawlers.
.tip You can find more in the water along the shore.
.tip Avoid Stonard as you travel here. |notinsticky			|only if not subzone("Misty Reed Strand")
.tip Murlocs at the Misty Reed Strand may run away in fear when at low health.	|only if hardcore |notinsticky
collect 12 Pristine Crawler Leg##5938 |q 1258/1 |goto Swamp of Sorrows 84.82,85.11
You can find more around: |notinsticky
[87.37,78.50]
[94.25,58.94]
[94.49,45.41]
[90.25,26.39]
[81.33,10.31]
step
talk Watcher Biggs##5476
.tip Avoid Stonard as you travel here.
turnin Driftwood##1398 |goto Swamp of Sorrows 26.74,59.83
accept Deliver the Shipment##1425 |goto Swamp of Sorrows 26.74,59.83
step
label "Collect_Khadgar_Essay"
Kill Swamp Elementals around this zone
.tip This is a very low drop rate, prioritizing killing elementals while traveling the zone.
collect Khadgar's Essays on Dimensional Convergence##6065 |q 1364/1 |goto Swamp of Sorrows 13.02,35.77
step
Follow the path |goto Blasted Lands,53.29,12.23,40 |only if walking and not subzone("Nethergarde Keep")
Enter Nethergarde Keep |goto Blasted Lands,62.61,19.83,30 |only if walking
Enter the building |goto Blasted Lands,66.38,18.99,10 |walk
talk Watcher Mahar Ba##5385
.tip Inside the tower, at the top.
turnin Mazen's Behest##1364 |goto Blasted Lands 67.65,19.16
step
Leave the building |goto Blasted Lands,66.38,18.99,10 |walk |only if subzone("Nethergarde Keep") and _G.IsIndoors()
talk Quartermaster Lungertz##5393
turnin Deliver the Shipment##1425 |goto Blasted Lands 66.52,21.38
step
talk Alexandra Constantine##8609
.tip On top of the wooden platform, outside behind the building.
fpath Nethergarde Keep |goto Blasted Lands 65.54,24.33
step
talk Watchmaster Sorigal##5464
.tip This quest is timed, so we will accept it now and quickly fly back to Nethergarde Keep to turn it in.
accept Supplies for Nethergarde##1395 |goto Duskwood 75.77,46.15
step
talk Quartermaster Lungertz##5393
turnin Supplies for Nethergarde##1395 |goto Blasted Lands 66.52,21.38
]]
)
