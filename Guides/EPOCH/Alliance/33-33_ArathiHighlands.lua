local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Arathi Highlands (33-33)',
  {
    next = 'Leveling Guides\\Dustwallow Marsh (33-33)',
  },
  [[
step
talk Captain Nials##2700
accept Northfold Manor##681 |goto Arathi Highlands 45.83,47.55
step
talk Skuerto##2789
turnin Malin's Request##690 |goto Arathi Highlands 46.65,47.01
step
Leave Refuge Pointe |goto Arathi Highlands,48.35,44.93,40 |only if walking and subzone("Refuge Pointe")
talk Quae##2712
turnin Hints of a New Plague?##659 |goto Arathi Highlands 60.19,53.85
accept Hints of a New Plague?##658 |goto Arathi Highlands 60.19,53.85
accept To The Hills##26546 |goto Arathi Highlands 60.19,53.85
step
talk Aquamentus##45547
accept Cooling Waters##26548 |goto Arathi Highlands 89.4,35.2
accept A Painful Dousing##26549 |goto Arathi Highlands 89.4,35.2
accept An Audience With Water##26550 |goto Arathi Highlands 89.4,35.2
step
talk Atrasies the Ancient##45548
accept Close The Vents##26551 |goto Arathi Highlands 82.8,57.3
accept Offering Of Feathers##26552 |goto Arathi Highlands 82.8,57.3
step
talk Aeromir##45555
accept Assistance Of Air##26554 |goto Arathi Highlands 82.5,42.8
step
talk Atrasies the Ancient##45548
accept Return To Fire##26556 |goto Arathi Highlands 82.8,57.3
accept Convening The Council##26557 |goto Arathi Highlands 82.8,57.3
step
stickystart "Scout_Hills"
collect 8 Cooled Aqual Essence##63106 |q 26548/1 |goto Arathi Highlands 89.4,35.2
.tip Kill Aqual Sprayers in the water near Aquamentus.
step
label "Scout_Hills"
scout the Blazing Hills for disturbances |q 26546/1 |goto Arathi Highlands 89.4,35.2
.tip This auto-completes by exploring the area.
step
notinsticky
use Bottle of Soothing Waters##63107
collect Raging Bindings##63108 |q 26549/1 |goto Arathi Highlands 89.4,35.2
.tip Use on weakened Raging Cinders. These are fire elementals you can find.
step
talk Aquamentus##45547
accept An Audience With Water##26550 |goto Arathi Highlands 89.4,35.2
step
'complete An Audience With Water |q 26550/1 |goto Arathi Highlands 89.4,35.2
.tip Speaking with Aquamentus completes the objective.
step
kill Coal Elementals
collapse 8 Steam Vents |q 26551/1 |goto Arathi Highlands 82.8,57.3
.tip Use Rushing Water power on thermal vents. They're in the southern area.
step
collect 6 Pristine Strider Feathers##63109 |q 26552/1 |goto Arathi Highlands 82.5,42.8
.tip Kill Striders in the area for feathers.
step
talk Aeromir##45555
speak with Aeromir to complete the blessing |q 26554/1 |goto Arathi Highlands 82.5,42.8
.tip This grants you Air blessing and transport.
step
talk Atrasies the Ancient##45548
inform Atrasies that elementals will convene |q 26556/1 |goto Arathi Highlands 82.8,57.3
step
talk Atrasies the Ancient##45548
witness the Council of Elements |q 26557/1 |goto Arathi Highlands 82.8,57.3
.tip Return and speak with Atrasies to witness the council.
step
talk Quae##2712
turnin To The Hills##26546 |goto Arathi Highlands 60.19,53.85
.tip Return to Quae in Refuge Pointe.
step
talk Aquamentus##45547
turnin Cooling Waters##26548 |goto Arathi Highlands 89.4,35.2
turnin A Painful Dousing##26549 |goto Arathi Highlands 89.4,35.2
turnin An Audience With Water##26550 |goto Arathi Highlands 89.4,35.2
step
talk Atrasies the Ancient##45548
turnin Close The Vents##26551 |goto Arathi Highlands 82.8,57.3
turnin Return To Fire##26556 |goto Arathi Highlands 82.8,57.3
turnin Convening The Council##26557 |goto Arathi Highlands 82.8,57.3
step
talk Aeromir##45555
turnin Offering Of Feathers##26552 |goto Arathi Highlands 82.5,42.8
step
talk Paula Alestone##45567
accept Save The Animals##26559 |goto Arathi Highlands 94.0,71.7
step
go to Alestone Estate
lasso 6 Terrified Animals##63110 |q 26559/1 |goto Arathi Highlands 94.0,71.7
.tip Use the lasso rope on scared animals at the estate.
.tip This quest can be bugged - if animals don't respond, skip it.
step
talk Paula Alestone##45567
turnin Save The Animals##26559 |goto Arathi Highlands 94.0,71.7
step
stickystart "Kill_Syndicate_Highwaymen"
kill 6 Syndicate Mercenary##2589 |q 681/2 |goto Arathi Highlands 32.67,29.22
.tip They are also inside the buildings.					|only if not hardcore
.tip They can also be found inside buildings, but it's dangerous to enter.	|only if hardcore
.tip Enemies tend to be bunched together inside buildings. |only if hardcore
step
label "Kill_Syndicate_Highwaymen"
kill 10 Syndicate Highwayman##2586 |q 681/1 |goto Arathi Highlands 32.67,29.22
.tip They are usually stealthed, so be careful.
.tip They are also inside the buildings. |notinsticky
.tip You can find more stealted along the small hill ridges surrounding this village.
step
talk Captain Nials##2700
turnin Northfold Manor##681 |goto Arathi Highlands 45.83,47.55
step
talk Vikki Lonsav##2808
.tip Buy enough ammo to fill your ammo bag, plus 10-12 extra stacks.
.tip You will be out questing for a while without access to an arrow vendor.
Visit the Vendor |vendor Vikki Lonsav##2808 |goto Arathi Highlands 46.45,47.60 |q 658
|only if Hunter
]]
)
