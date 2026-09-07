local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Dustwallow Marsh (34-34)',
  {
    image = ZGV.IMAGESDIR .. 'Dustwallow Marsh',
    condition_suggested = function()
      return level == 34 and not completedq(1112)
    end,
    next = 'Leveling Guides\\Stranglethorn Vale (34-35)',
    hardcore = true,
  },
  [[
step
talk Fiora Longears##4456
|tip Inside the building.
turnin Highperch Venom##1135 |goto Dustwallow Marsh/0 66.46,45.15
step
Leave the building |goto Dustwallow Marsh/0 65.99,45.20 < 10 |walk |only if subzone("Theramore Isle") and _G.IsIndoors()
talk Theramore Lieutenant##4947
turnin The Orc Report##1219 |goto Dustwallow Marsh/0 65.07,47.13
accept Captain Vimes##1220 |goto Dustwallow Marsh/0 65.07,47.13
step
Enter the building |goto Dustwallow Marsh/0 67.78,47.59 < 15 |walk
Run up the stairs |goto Dustwallow Marsh/0 68.17,48.76 < 10 |walk
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin Captain Vimes##1220 |goto Dustwallow Marsh/0 68.21,48.62
turnin Suspicious Hoofprints##1284 |goto Dustwallow Marsh/0 68.21,48.62
turnin Lieutenant Paval Reethe##1252 |goto Dustwallow Marsh/0 68.21,48.62
accept Lieutenant Paval Reethe##1259 |goto Dustwallow Marsh/0 68.21,48.62
turnin The Black Shield##1253 |goto Dustwallow Marsh/0 68.21,48.62
accept The Black Shield##1319 |goto Dustwallow Marsh/0 68.21,48.62
step
talk Adjutant Tesoran##4948
|tip Upstairs inside the building.
turnin Lieutenant Paval Reethe##1259 |goto Dustwallow Marsh/0 68.05,48.11
accept Daelin's Men##1285 |goto Dustwallow Marsh/0 68.05,48.11
step
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin Daelin's Men##1285 |goto Dustwallow Marsh/0 68.21,48.62
step
Leave the building |goto Dustwallow Marsh/0 67.78,47.59 < 15 |walk |only if subzone("Foothold Citadel")
Follow the road and enter the building |goto Dustwallow Marsh/0 64.69,49.97 < 10 |walk
talk Caz Twosprocket##4941
|tip Inside the building.
turnin The Black Shield##1319 |goto Dustwallow Marsh/0 64.75,50.43
accept The Black Shield##1320 |goto Dustwallow Marsh/0 64.75,50.43
step
Follow the road and enter the building |goto Dustwallow Marsh/0 67.78,47.59 < 15 |walk
Run up the stairs |goto Dustwallow Marsh/0 68.17,48.76 < 7 |walk
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin The Black Shield##1320 |goto Dustwallow Marsh/0 68.21,48.62
step
Run up the ramp and jump over the wall to leave Theramore Isle |goto Dustwallow Marsh 65.64,45.37 < 10 |only if walking and subzone("Theramore Isle")
Follow the beach north to reach Ratchet in the Barrens |goto Dustwallow Marsh 64.60,39.77 < 40 |only if walking and zone("Dustwallow Marsh")
Avoid the murloc islands |goto Dustwallow Marsh 59.97,14.53 < 40 |only if walking and zone("Dustwallow Marsh")
Avoid the murloc islands and follow the path north toward Ratchet |goto The Barrens 64.04,58.31 < 40 |only if walking and zone("Dustwallow Marsh")
talk Klannoc Macleod##6236
turnin The Islander##1718 |goto The Barrens 68.62,49.17
accept The Affray##1719 |goto The Barrens 68.62,49.17
|only if Warrior
step
Step on the Grate to Begin the Affray |q 1719/1 |goto The Barrens 68.61,48.72
|only if Warrior
step
kill Affray Challenger##6240+
|tip You will have to kill six of them before Big Will will appear.
|tip You will fight them one at a time.
kill Big Will##6238 |q 1719/2 |goto The Barrens 68.61,48.72
|tip It may take a while before he appears.
|only if Warrior
step
talk Klannoc Macleod##6236
|tip You will learn Berserker Stance from completing this quest.
turnin The Affray##1719 |goto The Barrens 68.62,49.17
accept The Windwatcher##1791 |goto The Barrens 68.62,49.17
|only if Warrior
step
Run up the ramp and jump over the wall to leave Theramore Isle |goto Dustwallow Marsh 65.64,45.37 < 10		|only if walking and subzone("Theramore Isle")
Follow the beach north to reach Ratchet in the Barrens |goto Dustwallow Marsh 64.60,39.77 < 40			|only if walking and zone("Dustwallow Marsh")
Avoid the murloc islands |goto Dustwallow Marsh 59.97,14.53 < 40						|only if walking and zone("Dustwallow Marsh")
Avoid the murloc islands and follow the path north toward Ratchet |goto The Barrens 64.04,58.31 < 40		|only if walking and zone("Dustwallow Marsh") |notravel
talk Fuzruckle##3496
|tip Deposit these items into the bank.
bank Alterac Granite##4521 |goto The Barrens 62.64,37.42 |q 689 |future
|tip You should have 5 of these.
bank Cleverly Encrypted Letter##3521 |goto The Barrens 62.64,37.42 |q 514 |future
bank Farren's Report##3721 |goto The Barrens 62.64,37.42 |q 563 |future
step
talk Bragok##16227
fpath Ratchet |goto The Barrens 63.09,37.16
step
Enter the building |goto The Barrens 62.89,36.52 < 10 |walk
talk Gazlowe##3391
|tip Upstairs inside the building.
turnin Goblin Sponsorship##1178 |goto The Barrens 62.68,36.23
accept Goblin Sponsorship##1180 |goto The Barrens 62.68,36.23
step
talk Wharfmaster Dizzywig##3453
turnin The Barrens Port##1039 |goto The Barrens 63.35,38.45
accept Passage to Booty Bay##1040 |goto The Barrens 63.35,38.45
turnin Wharfmaster Dizzywig##1111 |goto The Barrens 63.35,38.45
accept Parts for Kravel##1112 |goto The Barrens 63.35,38.45
]]
)
