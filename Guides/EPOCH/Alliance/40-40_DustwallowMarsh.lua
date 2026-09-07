local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Dustwallow Marsh (40-40)',
  {
    image = ZGV.IMAGESDIR .. 'Arathi Highlands',
    condition_suggested = function()
      return level == 40 and not completedq(1287)
    end,
    next = 'Leveling Guides\\Desolace (40-41)',
    hardcore = true,
  },
  [[
step
talk Pozzik##4630
turnin Goblin Sponsorship##1183 |goto Thousand Needles 80.18,75.88
accept The Eighteenth Pilot##1186 |goto Thousand Needles 80.18,75.88
|only if hardcore
step
talk Razzeric##4706
turnin The Eighteenth Pilot##1186 |goto Thousand Needles 80.33,76.09
accept Razzeric's Tweaking##1187 |goto Thousand Needles 80.33,76.09
|only if hardcore
step
Enter the building |goto Dustwallow Marsh 67.81,47.70 < 15 |walk
Run up the stairs |goto Dustwallow Marsh 68.17,48.76 < 7 |walk
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
accept The Deserters##1286 |goto Dustwallow Marsh 68.21,48.62
step
Leave the building |goto Dustwallow Marsh 67.81,47.70 < 15 |walk |only if subzone("Foothold Citadel")
Enter the building |goto Dustwallow Marsh 66.00,45.20 < 10 |walk
talk Morgan Stern##4794
|tip Inside the building.
turnin Morgan Stern##1260 |goto Dustwallow Marsh 66.34,45.47
accept Mudrock Soup and Bugs##1204 |goto Dustwallow Marsh 66.34,45.47
step
talk Innkeeper Janene##6272
|tip Inside the building.
home Theramore Isle |goto Dustwallow Marsh 66.59,45.22
step
Leave the building |goto Dustwallow Marsh 66.00,45.20 < 10	|walk |only if subzone("Theramore Isle") and _G.IsIndoors()
Leave Theramore Isle |goto Dustwallow Marsh 64.81,46.60 < 40	|only if walking and subzone("Theramore Isle")
Enter the building |goto Dustwallow Marsh 59.90,40.92 < 10	|walk
Explore Sentry Point |q 1265/1			|goto Dustwallow Marsh 59.66,41.25
step
talk Archmage Tervosh##4967
|tip Inside the building.
|tip If he doesn't appear, walk out of the tower to the main road, then walk back into the tower.
|tip You also may need to check the tower inside of Theramore, but this is a very rare spawn location.
turnin The Missing Diplomat##1265 |goto Dustwallow Marsh 59.66,41.25
accept The Missing Diplomat##1266 |goto Dustwallow Marsh 59.66,41.25
|tip He may also be found at:
[66.40,49.20]
[45.20,24.40]
step
Watch the dialogue
|tip Inside the building.
|tip Archmage Tervosh will give you a defense buff.
Gain the Proudmoore's Defense Buff |havebuff Proudmoore's Defense##7120 |goto Dustwallow Marsh 59.66,41.25
step
|goto Dustwallow Marsh 45,24
confirm always
stickystart "Collect_Mirefin_Heads"
step
Kill Mudrock enemies around this area
|tip They look like tortoises.
|tip You can find more in the water nearby.
|tip Rotate between killing turtles and murlocs as respawns allow for safe pulls.
collect 8 Forked Mudrock Tongue##5883 |q 1204/1 |goto Dustwallow Marsh 64.79,42.00
You can find more around: |notinsticky
[63.08,35.77]
[61.72,30.64]
[61.92,25.24]
[61.52,21.12]
[60.33,18.47]
step
label "Collect_Mirefin_Heads"
Kill Mirefin enemies around this area
collect 12 Mirefin Head##5847 |q 1177/1 |goto Dustwallow Marsh 57.93,15.70
|tip Enemies tend to group up around here, so pull carefully when able. |only if hardcore
You can find more around: |notinsticky
[54.42,15.92]
step
Follow the path up |goto Dustwallow Marsh 57.90,18.51 < 20 |only if walking and subzone("Dreadmurk Shore")
talk "Swamp Eye" Jarl##4792
accept Jarl Needs Eyes##1206 |goto Dustwallow Marsh 55.44,26.27
step
talk "Stinky" Ignatz##4880
|tip Kill the raptors near him before accepting the quest.
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait for him to respawn.
accept Stinky's Escape##1222 |goto Dustwallow Marsh 46.88,17.52 |noautoaccept
step
Watch the dialogue
|tip Follow and protect "Stinky" Ignatz as he walks.
|tip He eventually walks to this location.
Help Stinky Find Bogbean Leaves |q 1222/1 |goto Dustwallow Marsh 48.86,24.65
step
talk Private Hendel##4966
turnin The Missing Diplomat##1266 |goto Dustwallow Marsh 45.22,24.64
accept The Missing Diplomat##1324 |goto Dustwallow Marsh 45.22,24.64 |noautoaccept
|tip Private Hendel and the 2 Theramore Sentries nearby will attack you, so be prepared.
|tip Focus on killing Private Hendel.  His helpers will stop attacking once he surrenders.
step
kill Private Hendel##4966
|tip Focus on killing Private Hendel.  His helpers will stop attacking once he surrenders.
|tip He will eventually surrender.
Subdue Private Hendel |q 1324/1 |goto Dustwallow Marsh 45.22,24.64
step
Watch the dialogue
talk Archmage Tervosh##4967
|tip He will appear nearby where Private Hendel surrendered.
turnin The Missing Diplomat##1324 |goto Dustwallow Marsh 45.22,24.64
step
Watch the dialogue
talk Lady Jaina Proudmoore##4968
|tip She will appear nearby where Private Hendel surrendered.
accept The Missing Diplomat##1267 |goto Dustwallow Marsh 45.22,24.24 |instant
step
Kill Darkmist enemies around this area
|tip They look like green spiders.
|tip Inside and outside the mine.							|only if not hardcore
|tip They are inside and outside the mine, but it is safer to be outside of the mine.	|only if hardcore
collect 40 Unpopped Darkmist Eye##5884 |q 1206/1 |goto Dustwallow Marsh 33.22,22.76
step
talk "Swamp Eye" Jarl##4792
turnin Jarl Needs Eyes##1206 |goto Dustwallow Marsh 55.44,26.27
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Unpopped Darkmist Eye##5884 |goto Dustwallow Marsh 35.15,38.25
step
talk Mudcrush Durtfeet##4503
turnin Hungry!##1177 |goto Dustwallow Marsh 35.15,38.25
step
Enter the building |goto Dustwallow Marsh 35.73,53.99 < 10 |walk
talk Balos Jacken##5089
|tip Upstairs inside the building.
|tip He will eventually surrender.
turnin The Deserters##1286 |goto Dustwallow Marsh 36.09,54.30
accept The Deserters##1287 |goto Dustwallow Marsh 36.09,54.30
step
click Gizmorium Shipping Crate##20727
collect Seaforium Booster##5862 |q 1187/1 |goto Dustwallow Marsh 54.07,56.48
step
talk Morgan Stern##4794
|tip Inside the building.
turnin Mudrock Soup and Bugs##1204 |goto Dustwallow Marsh 66.34,45.47
accept ... and Bugs##1258 |goto Dustwallow Marsh 66.34,45.47
turnin Stinky's Escape##1222 |goto Dustwallow Marsh 66.34,45.47
step
Leave the building |goto Dustwallow Marsh 66.00,45.20 < 10 |walk |only if subzone("Theramore Isle") and _G.IsIndoors()
Enter the building |goto Dustwallow Marsh 67.81,47.70 < 15 |walk
Run up the stairs |goto Dustwallow Marsh 68.17,48.76 < 7 |walk
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin The Deserters##1287 |goto Dustwallow Marsh 68.21,48.62
step
_Note_
The next area is lower xp/hour than most.
|tip It is one of the few times dungeons is more effecient than questing.
|tip It is a good time to start looking for dungeon groups while you travel if you want to run any.
|tip If you run dungeons, try to reach level 41.30. Your next guide will be Badlands (41-42).
Click Here To Confirm |confirm
]]
)
