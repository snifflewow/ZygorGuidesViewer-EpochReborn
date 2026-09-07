local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Stranglethorn Vale (34-35)',
  {
    image = ZGV.IMAGESDIR .. 'Stranglethorn Vale',
    condition_suggested = function()
      return level >= 34 and level <= 35 and not completedq(575)
    end,
    next = 'Leveling Guides\\Duskwood (35-35)',
    hardcore = true,
  },
  [[
step
talk Wharfmaster Lozgil##4631
turnin Goblin Sponsorship##1180 |goto Stranglethorn Vale 26.35,73.56
accept Goblin Sponsorship##1181 |goto Stranglethorn Vale 26.35,73.56
|tip This requires that you complete the "Load Lightening" questline started in the "Thousand Needles (33-34)" guide.
step
talk Caravaneer Ruzzgot##3945
turnin Passage to Booty Bay##1040 |goto Stranglethorn Vale 27.37,74.08
|tip This quest is received in the Dustwallow Marsh (34-34) guide.
accept The Caravan Road##1041 |goto Stranglethorn Vale 27.37,74.08
step
Enter the building |goto Stranglethorn Vale 28.11,74.98 < 10 |walk
talk Zarena Cromwind##2482
|tip Inside the building.
buy Big Stick##12251 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Zarena Cromwind##2482 |goto Stranglethorn Vale 28.34,75.46 |q 605 |future
|only if Warrior and itemcount(12251) == 0
step
Enter the building |goto Stranglethorn Vale 27.08,77.62 < 7 |walk |only if not subzone ("The Salty Sailor Tavern")
talk Innkeeper Skindle##6807
|tip Inside the building.
home Booty Bay |goto Stranglethorn Vale 27.04,77.31
step
talk Crank Fizzlebub##2498
|tip Inside the building.
accept Singing Blue Shards##605 |goto Stranglethorn Vale 27.12,77.21
step
talk Ian Strom##1411
trainer Ian Strom##1411 |goto Stranglethorn Vale/0 26.82,77.16 |q 605
|tip He is on the second floor of the inn, in a back room.
|tip Train your spells.
|only if Rogue
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
accept Investigate the Camp##201 |goto Stranglethorn Vale 26.94,77.21
accept Supplies to Private Thorsen##198 |goto Stranglethorn Vale 26.94,77.21
accept The Haunted Isle##616 |goto Stranglethorn Vale 26.94,77.21
step
talk Kebok##737
|tip Upstairs inside the building, on the top floor.
accept Hostile Takeover##213 |goto Stranglethorn Vale 27.00,77.12
step
talk Baron Revilgaz##2496
|tip Upstairs on the balcony of the building.
turnin The Haunted Isle##616 |goto Stranglethorn Vale 27.23,76.87
accept The Stone of the Tides##578 |goto Stranglethorn Vale 27.23,76.87
turnin Goblin Sponsorship##1181 |goto Stranglethorn Vale 27.23,76.87
accept Goblin Sponsorship##1182 |goto Stranglethorn Vale 27.23,76.87
step
_Destroy This Item:_
|tip It is no longer needed.
trash Library Scrip##3898 |goto Stranglethorn Vale 26.54,76.57
step
talk Viznik Goldgrubber##2625
|tip Deposit these items into the bank.
bank Kravel's Parts##5800 |goto Stranglethorn Vale 26.54,76.57 |q 1112 |future
step
Run up the ramp |goto Stranglethorn Vale 27.85,76.76 < 10 |only if walking
Cross the bridge |goto Stranglethorn Vale 28.15,76.52 < 10 |only if walking
Enter the building |goto Stranglethorn Vale 28.21,77.33 < 7 |walk
talk Drizzlik##2495
|tip Inside the building.
accept Supply and Demand##575 |goto Stranglethorn Vale 28.29,77.59
step
Enter the building and run up the stairs |goto Stranglethorn Vale 27.52,77.86 < 7 |only if walking
talk Gyll##2859
|tip Upstairs on the balcony of the building.
fpath Booty Bay |goto Stranglethorn Vale 27.53,77.79
step
Follow the path up into the Rebel Camp |goto Stranglethorn Vale 39.05,5.20 < 20 |only if walking
talk Private Thorsen##738
|tip He periodically walks along the path to the south, from the Rebel Camp.
|tip If he's not here, skip this step, you'll have another chance to turn in this quest later.
turnin Supplies to Private Thorsen##198 |goto Stranglethorn Vale 37.98,3.42
step
talk Sergeant Yohwa##733
accept The Second Rebellion##203 |goto Stranglethorn Vale 38.02,3.33
accept Bad Medicine##204 |goto Stranglethorn Vale 38.02,3.33
step
Leave the Rebel Camp |goto Stranglethorn Vale 39.29,5.56 < 30 |only if walking and subzone("Rebel Camp")
Locate the Hunters' Camp |q 201/1 |goto Stranglethorn Vale 35.55,10.55
step
talk Hemet Nesingwary##715
turnin Hemet Nesingwary##5762 |goto Stranglethorn Vale 35.66,10.81
accept Raptor Mastery##194 |goto Stranglethorn Vale 35.66,10.81
step
talk Ajeck Rouack##717
accept Tiger Mastery##186 |goto Stranglethorn Vale 35.61,10.62
step
talk Sir S. J. Erlgadin##718
accept Panther Mastery##191 |goto Stranglethorn Vale 35.55,10.55
stickystart "Kill_Stranglethorn_Tigers"
step
Follow the path up |goto Stranglethorn Vale 30.79,8.27 < 20 |only if walking
kill 10 Panther##736 |q 191/1 |goto Stranglethorn Vale 30.02,10.56
You can find more around: |notinsticky
[28.35,12.13]
[28.55,16.11]
[30.33,15.29]
step
label "Kill_Stranglethorn_Tigers"
kill 10 Stranglethorn Tiger##682 |q 186/1 |goto Stranglethorn Vale 30.02,10.56
You can find more around: |notinsticky
[28.35,12.13]
[28.55,16.11]
[30.33,15.29]
step
kill 10 Stranglethorn Raptor##685 |q 194/1 |goto Stranglethorn Vale 26.04,16.19
step
kill Crystal Spine Basilisk##689+
collect 10 Singing Crystal Shard##3918 |q 605/1 |count 5 |goto Stranglethorn Vale 27.06,18.51
|tip You don't need to finish this quest now.
You can find more around [25.11,17.42]
step
Kill enemies around this area
|tip You should already be level 35, or pretty close.
|tip You will be completing some difficult quest soon, so being a level higher will help.
ding 35 |goto Stranglethorn Vale 27.06,18.51
You can find more around [25.11,17.42]
step
Locate the Haunted Island |q 578/1 |goto Stranglethorn Vale 21.33,21.93
step
talk Hemet Nesingwary##715
turnin Raptor Mastery##194 |goto Stranglethorn Vale 35.66,10.81
accept Raptor Mastery##195 |goto Stranglethorn Vale 35.66,10.81
step
talk Ajeck Rouack##717
turnin Tiger Mastery##186 |goto Stranglethorn Vale 35.61,10.62
accept Tiger Mastery##187 |goto Stranglethorn Vale 35.61,10.62
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##191 |goto Stranglethorn Vale 35.55,10.55
accept Panther Mastery##192 |goto Stranglethorn Vale 35.55,10.55
step
map Stranglethorn Vale
path follow strictbounce; loop off; ants straight; dist 70; markers none
path	32.29,7.85	33.67,8.61	35.19,9.28	36.74,9.43	37.75,10.14
path	39.11,11.77	40.34,13.97
kill River Crocolisk##1150+
|tip On the shore along the river around this area.
|tip They can be on both sides of the river.
collect 2 Large River Crocolisk Skin##4053 |q 575/1
stickystart "Collect_Jungle_Remedies"
stickystart "Kill_Kurzen_Jungle_Fighters"
step
Follow the path |goto Stranglethorn Vale 40.33,8.32 < 40 |only if walking and not subzone("Kurzen's Compound")
click Kurzen Supplies##264
|tip In front of the building.
|tip Be careful to stay out of sight of the enemies near the doorway inside the building.
collect Venom Fern Extract##2634 |q 204/2 |goto Stranglethorn Vale 44.10,9.56
step
label "Collect_Jungle_Remedies"
kill Kurzen Medicine Man##940+
|tip Try to interrupt their spell casts, or drain their mana if you can.
|tip They can heal themselves and other enemies.
collect 7 Jungle Remedy##2633 |q 204/1 |goto Stranglethorn Vale 43.88,10.71
step
label "Kill_Kurzen_Jungle_Fighters"
kill 15 Kurzen Jungle Fighter##937 |q 203/1 |goto Stranglethorn Vale 43.88,10.71
|tip If you don't have help, stay on western outskirts, around this area, and just wait for the enemies to respawn.
|tip They respawn pretty quickly.
step
kill Crystal Spine Basilisk##689+
|tip They spawn all along the mountain here.
collect 10 Singing Crystal Shard##3918 |q 605/1 |goto Stranglethorn Vale 48.20,8.20
stickystart "Collect_Tumbled_Crystals"
step
Follow the path up |goto Stranglethorn Vale 42.25,18.10 < 10 |only if walking
kill Foreman Cozzle##4723
|tip Inside the building at the top of the platform.
|tip He's level 38, but you should be able to kill him at this level.
|tip Be careful not to accidentally aggro him while killing other enemies near the building.
|tip If you have trouble, try to find someone to help you.
|tip Skip this step if you're worried, you'll have another chance later. |only if hardcore
collect Cozzle's Key##5851 |goto Stranglethorn Vale 42.65,18.35 |q 1182
step
Enter the building |goto Stranglethorn Vale 43.45,20.36 < 10 |walk
click Cozzle's Footlocker##20691
|tip Inside the building.
collect Fuel Regulator Blueprints##5852 |q 1182/1 |goto Stranglethorn Vale 43.34,20.34
step
label "Collect_Tumbled_Crystals"
kill Venture Co. Geologist##1096+
collect 8 Tumbled Crystal##4106 |q 213/1 |goto Stranglethorn Vale 44.63,21.45
|tip These are ranged attackers that deal heavy damage.			|only if hardcore |notinsticky
|tip Enemies around this area may run away in fear when at low health.	|only if hardcore |notinsticky
step
Follow the path up into the Rebel Camp |goto Stranglethorn Vale 39.05,5.20 < 20 |only if walking
talk Sergeant Yohwa##733
turnin The Second Rebellion##203 |goto Stranglethorn Vale 38.02,3.33
turnin Bad Medicine##204 |goto Stranglethorn Vale 38.02,3.33
step
talk Corporal Kaleb##770
accept Krazek's Cookery##210 |goto Stranglethorn Vale 37.74,3.30
step
talk Crank Fizzlebub##2498
|tip Inside the building.
turnin Singing Blue Shards##605 |goto Stranglethorn Vale 27.12,77.21
step
talk Viznik Goldgrubber##2625
|tip Withdraw these items from the bank.
collect 4 Lesser Bloodstone Ore##4278 |goto Stranglethorn Vale 26.54,76.57 |q 627 |future
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
turnin Investigate the Camp##201 |goto Stranglethorn Vale 26.94,77.21
turnin Krazek's Cookery##210 |goto Stranglethorn Vale 26.94,77.21
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
accept Favor for Krazek##627 |goto Stranglethorn Vale 26.94,77.21
|only if itemcount(4278) >= 4
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
turnin Favor for Krazek##627 |goto Stranglethorn Vale 26.94,77.21
accept Return to Corporal Kaleb##622 |goto Stranglethorn Vale 26.94,77.21
step
talk Kebok##737
|tip Upstairs inside the building, on the top floor.
turnin Hostile Takeover##213 |goto Stranglethorn Vale 27.00,77.12
step
talk Baron Revilgaz##2496
|tip Upstairs on the balcony of the building.
turnin Goblin Sponsorship##1182 |goto Stranglethorn Vale 27.23,76.87
accept Goblin Sponsorship##1183 |goto Stranglethorn Vale 27.23,76.87
turnin The Stone of the Tides##578 |goto Stranglethorn Vale 27.23,76.87
step
talk Viznik Goldgrubber##2625
|tip Collect these items from the bank.
collect 5 Alterac Granite##4521 |goto Stranglethorn Vale 26.54,76.57 |q 689
collect Cleverly Encrypted Letter##3521 |goto Stranglethorn Vale 26.54,76.57 |q 514
collect Farren's Report##3721 |goto Stranglethorn Vale 26.54,76.57 |q 563
step
Run up the ramp and cross the bridge |goto Stranglethorn Vale 28.15,76.52 < 10 |only if walking
Enter the building |goto Stranglethorn Vale 28.21,77.33 < 7 |walk
talk Drizzlik##2495
|tip Inside the building.
turnin Supply and Demand##575 |goto Stranglethorn Vale 28.29,77.59
step
Enter the building |goto Stranglethorn Vale 28.11,74.98 < 10 |walk
talk Zarena Cromwind##2482
|tip Inside the building.
buy Big Stick##12251 |n
|tip If you can afford it.
|tip It may not be available to buy, since it's a limited supply item.
|tip If you have better, skip this step.
Visit the Vendor |vendor Zarena Cromwind##2482 |goto Stranglethorn Vale 28.34,75.46 |q 1183
|only if Warrior and itemcount(12251) == 0
]]
)
