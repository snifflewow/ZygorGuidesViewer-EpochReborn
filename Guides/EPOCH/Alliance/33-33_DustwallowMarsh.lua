local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Dustwallow Marsh (33-33)',
  {
    next = 'Leveling Guides\\Thousand Needles (33-34)',
  },
  [[
step
talk Baldruc##4321
fpath Theramore |goto Dustwallow Marsh 67.48,51.30
step
Enter the building |goto Dustwallow Marsh,66.12,51.56,10 |walk
talk Helenia Olden##4897
.tip Inside the building.
buy 3 Soothing Spices##3713 |goto Dustwallow Marsh 66.44,51.46 |q 1218 |future
.tip Be careful not to accidentally sell these to a vendor.
step
Enter the building |goto Dustwallow Marsh,65.99,45.20,10 |walk
talk Fiora Longears##4456
.tip Inside the building.
accept Highperch Venom##1135 |goto Dustwallow Marsh/0 66.46,45.15
step
talk Innkeeper Janene##6272
.tip Inside the building.
home Theramore Isle |goto Dustwallow Marsh/0 66.59,45.22
step
Leave the building |goto Dustwallow Marsh/0,65.99,45.20,10 |walk |only if subzone("Theramore Isle") and _G.IsIndoors()
Enter the building |goto Dustwallow Marsh/0,67.81,47.69,15 |walk
Run up the stairs |goto Dustwallow Marsh/0,68.17,48.77,7 |walk
talk Clerk Lendry##5083
.tip Upstairs inside the building.
turnin James Hyal##1302 |goto Dustwallow Marsh/0 67.88,48.24
step
talk Commander Samaul##4964
.tip Upstairs inside the building.
turnin The Missing Diplomat##1264 |goto Dustwallow Marsh/0 68.02,48.71
accept The Missing Diplomat##1265 |goto Dustwallow Marsh/0 68.02,48.71
step
Leave the building |goto Dustwallow Marsh/0,67.81,47.69,15 |walk |only if subzone("Foothold Citadel")
Leave Theramore Isle and follow the road |goto Dustwallow Marsh/0,64.82,46.60,40 |only if walking and subzone("Theramore Isle")
talk "Swamp Eye" Jarl##4792
accept Soothing Spices##1218 |goto Dustwallow Marsh/0 55.44,26.27
step
talk "Swamp Eye" Jarl##4792
turnin Soothing Spices##1218 |goto Dustwallow Marsh/0 55.44,26.27
step
click Loose Dirt
accept The Orc Report##1219 |goto Dustwallow Marsh/0 55.44,25.93
step
talk Mudcrush Durtfeet##4503
.tip Follow the road to this location.
.tip Be careful to avoid Brackenwall Village and enemies along the way.
.tip The enemies in this zone are a good bit higher level than you.
accept Hungry!##1177 |goto Dustwallow Marsh/0 35.15,38.25
step
click Suspicious Hoofprint
accept Suspicious Hoofprints##1284 |goto Dustwallow Marsh/0 29.70,47.63
.tip This requires that you complete the "James Hyal" questline started in the "Stranglethorn Vale (32-32)" guide.
step
click Theramore Guard Badge
.tip It looks like a tiny metal object on the floor.
accept Lieutenant Paval Reethe##1252 |goto Dustwallow Marsh/0 29.83,48.24
.tip This requires that you complete the "James Hyal" questline started in the "Stranglethorn Vale (32-32)" guide.
step
click Black Shield
accept The Black Shield##1253 |goto Dustwallow Marsh/0 29.63,48.59
.tip This requires that you complete the "James Hyal" questline started in the "Stranglethorn Vale (32-32)" guide.
]]
)
