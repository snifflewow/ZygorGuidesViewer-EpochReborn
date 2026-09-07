local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Badlands (41-42)',
  {
    next = 'Leveling Guides\\Stranglethorn Vale (42-43)',
  },
  [[
step
Run up the stairs and enter the building |goto Ironforge,61.32,88.17,7 |walk
talk Brenwyn Wintersteel##5120
buy Falchion##2528 |n
.tip If you can afford it.
.tip You will use it when you reach level 41.
.tip If you have better, skip this step.
Visit the Vendor |vendor Brenwyn Wintersteel##5120 |goto Ironforge 62.37,88.68 |q 1467
|only if Rogue and itemcount(2528) == 0
step
Enter the building |goto Ironforge,34.11,62.34,10 |walk
talk Bailey Stonemantle##2461
.tip Inside the building.
.tip Deposit these items into the bank.
bank Kravel's Scheme##5826 |goto Ironforge 35.92,60.14 |q 1118 |future
bank Seaforium Booster##5862 |goto Ironforge 35.92,60.14 |q 1188 |future
step
talk Auctioneer Redmuse##8720
.tip Buy these items from the Auction House.
.tip Each item is for an individual optional quest. If you can't get them it's fine you'll just have to grind more later.
.tip There are more auction steps after this one, skip this step after completeing it and don't run to the mailbox yet. |only if Warrior
collect 1 Gyrochronatom##4389 |goto Ironforge 24.16,74.67 |q 714 |future
collect 1 Frost Oil##3829 |goto Ironforge 24.16,74.67 |q 713 |future
collect 1 Patterned Bronze Bracers##2868 |goto Ironforge 24.16,74.67 |q 716 |future
collect 1 Lesser Invisibility Potion##3823 |goto Ironforge 24.16,74.67 |q 715 |future
collect 1 Healing Potion##929 |goto Ironforge 24.16,74.67 |q 715 |future
collect 9 Blue Pearl##4611 |goto Ironforge 24.16,74.67 |q 705 |future
.tip The Blue Pearls are often expensive, we don't expect you to be able to get these but it is extra experience if they're affordable.
|only if not selfmade
step
talk Tynnus Venomsprout##5169
.tip Stock up on poisons.
.tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Tynnus Venomsprout##5169 |goto Ironforge 52.94,13.66
|only if Rogue
step
talk Roetten Stonehammer##5637
.tip He walks around inside the building.
turnin Reagents for Reclaimers Inc.##1467 |goto Ironforge 67.91,17.52
step
talk Prospector Stormpike##1356
.tip Inside the building.
turnin Stormpike's Deciphering##554 |goto Ironforge 74.64,11.74
accept Ironband Wants You!##707 |goto Ironforge 74.64,11.74
step
Enter the building |goto Ironforge,72.16,67.56,7 |walk
talk Skolmin Goldfury##5122
buy Massive Longbow##11307 |n
.tip If you can afford it.
.tip It's a limited supply item, so it may not be for sale.
.tip You can't use it until level 42, but it's good to have waiting to use, and you can only buy it in Stormwind City and Ironforge.
.tip We will check vendors for it along the way, if it's not here right now.
.tip If you have better, skip this step.
Visit the Vendor |vendor Skolmin Goldfury##5122 |goto Ironforge 71.76,66.70 |q 2500 |future
|only if Hunter and itemcount(11307) == 0
step
Run up the stairs and enter the building |goto Ironforge,23.09,17.43,7 |walk
talk Harick Boulderdrum##5133
.tip Downstairs inside the building.
buy Blackbone Wand##5239 |n
.tip If you can afford it.
.tip If you have better, skip this step.
Visit the Vendor |vendor Harick Boulderdrum##5133 |goto Ironforge 23.13,15.94 |q 2500 |future
|only if Priest and itemcount(5239) == 0
step
Enter the building |goto Loch Modan,35.23,47.74,10 |walk
talk Innkeeper Hearthstove##6734
.tip Inside the building.
home Stoutlager Inn |goto Loch Modan 35.53,48.40
step
Enter the building |goto Loch Modan,36.63,48.52,10 |walk
talk Ghak Healtouch##1470
.tip Inside the building.
accept Badlands Reagent Run##2500 |goto Loch Modan 37.07,49.38
step
talk Prospector Ironband##1344
turnin Ironband Wants You!##707 |goto Loch Modan 65.93,65.62
accept Find Agmond##738 |goto Loch Modan 65.93,65.62
stickystart "Collect_Buzzard_Gizzards"
stickystart "Collect_Crag_Coyote_Fangs"
step
Follow the path |goto Badlands,51.77,33.17,15 |only if walking
click Crumpled Map##2868
.tip It is under a table in the tent.
accept A Sign of Hope##720 |goto Badlands 53.03,33.93
step
Leave Hammertoe's Digsite |goto Badlands,51.48,33.23,20 |only if walking and subzone("Hammertoe's Digsite")
talk Prospector Ryedol##2910
turnin A Sign of Hope##720 |goto Badlands 53.42,43.40
accept A Dwarf and His Tools##719 |goto Badlands 53.42,43.40
step
talk Sigrun Ironhew##2860
accept Mirages##718 |goto Badlands 53.80,43.31
step
Kill Shadowforge enemies around this area
.tip They look like dwarves.
collect Ryedol's Lucky Pick##4616 |q 719/1 |goto Badlands 52.59,32.20
step
click Excavation Supply Crate##2867
.tip It looks like a wooden crate.
.tip It may spawn in other locations in this camp.
.tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Supply Crate##4629 |q 718/1 |goto Badlands 66.61,22.02
step
Follow the path |goto Badlands,56.21,27.40,50 |only if walking and subzone("Camp Kosh")
talk Prospector Ryedol##2910
turnin A Dwarf and His Tools##719 |goto Badlands 53.42,43.40
step
talk Sigrun Ironhew##2860
turnin Mirages##718 |goto Badlands 53.80,43.31
accept Scrounging##733 |goto Badlands 53.80,43.31
step
talk Rigglefuzz##2817
accept Barbecued Buzzard Wings##703 |goto Badlands 42.39,52.93
accept Pearl Diving##705 |goto Badlands 42.39,52.93 |only if itemcount(4611) >= 9
step
talk Rigglefuzz##2817
turnin Pearl Diving##705 |goto Badlands 42.39,52.93
|only if itemcount(4611) >= 9
step
talk Martek the Exiled##4618
turnin Martek the Exiled##1106 |goto Badlands 42.22,52.69
accept Indurium##1108 |goto Badlands 42.22,52.69
stickystart "Collect_Buzzard_Wings"
step
click Battered Dwarven Skeleton##2875
.tip Watch for patrols and respawns while in the area.	|only if hardcore
turnin Find Agmond##738 |goto Badlands 50.89,62.41
accept Murdaloc##739 |goto Badlands 50.89,62.41
stickystop "Collect_Buzzard_Wings"
stickystop "Collect_Buzzard_Gizzards"
stickystop "Collect_Crag_Coyote_Fangs"
stickystart "Kill_Stonevault_Bonesnapper"
stickystart "Collect_Iridium_Flakes"
step
kill Murdaloc##2945 |q 739/1 |goto Badlands 49.63,66.30
.tip He walks around this area.
step
label "Kill_Stonevault_Bonesnapper"
kill 12 Stonevault Bonesnapper##2893 |q 739/2 |goto Badlands 50.51,69.96
.tip Watch for respawns while in the area. |only if hardcore |notinsticky
step
label "Collect_Iridium_Flakes"
Kill Stonevault enemies around this area
.tip Watch for respawns while in the area. |only if hardcore |notinsticky
collect 10 Indurium Flake##5797 |q 1108/1 |goto Badlands 50.51,69.96
You can find more around [64.40,43.22]
stickystart "Collect_Buzzard_Wings"
stickystart "Collect_Buzzard_Gizzards"
stickystart "Collect_Crag_Coyote_Fangs"
step
talk Martek the Exiled##4618
turnin Indurium##1108 |goto Badlands 42.21,52.70
step
Watch the dialogue
talk Martek the Exiled##4618
accept News for Fizzle##1137 |goto Badlands 42.21,52.70
step
talk Lotwil Veriatus##2921
accept Study of the Elements: Rock##710 |goto Badlands 25.95,44.87
stickystart "Collect_Small_Stone_Shards"
step
Kill Rock Elemental enemies around this area
collect 5 Rock Elemental Shard##7848 |q 2500/3 |goto Badlands 19.46,43.02
You can find more around [13.98,39.71]
step
label "Collect_Small_Stone_Shards"
kill Lesser Rock Elemental##2735+ |notinsticky
.tip This quest can take multiple laps. Farm coyotes and vultures while waiting on respawns.
collect 10 Small Stone Shard##4626 |q 710/1 |goto Badlands 19.46,43.02
You can find more around [13.98,39.71]
step
talk Lotwil Veriatus##2921
turnin Study of the Elements: Rock##710 |goto Badlands 25.95,44.87
accept Study of the Elements: Rock##711 |goto Badlands 25.95,44.87
step
kill Rock Elemental##92+
collect 3 Large Stone Slab##4627 |q 711/1 |goto Badlands 15.60,32.60
You can find more around [43.56,84.04]
step
talk Lotwil Veriatus##2921
turnin Study of the Elements: Rock##711 |goto Badlands 25.95,44.87
accept Study of the Elements: Rock##712 |goto Badlands 25.95,44.87
stickystart "Collect_Scrap_Metal"
stickystop "Collect_Buzzard_Wings"
stickystop "Collect_Buzzard_Gizzards"
stickystop "Collect_Crag_Coyote_Fangs"
step
kill Greater Rock Elemental##2736+
.tip If you have trouble, try to find someone to help you.
.tip This quest is especially worth doing if you purchased the items from the Auction House earlier. |only if not selfmade
.tip These enemies can be tough, and are a bit higher level. |only if hardcore
.tip If you'd rather not risk it, skip this step and abandon the "Study of the Elements: Rock" quest. |only if hardcore
collect 5 Bracers of Rock Binding##4628 |q 712/1 |goto Badlands 5.40,76.83
You can find more up the path that starts at [13.20,83.27]
step
label "Collect_Scrap_Metal"
Kill Dustbelcher enemies around this area
.tip Watch for patrols and respawns here.	|only if hardcore
collect 7 Scrap Metal##4630 |q 733/1 |goto Badlands 11.29,75.60
stickystart "Collect_Buzzard_Wings"
stickystart "Collect_Buzzard_Gizzards"
stickystart "Collect_Crag_Coyote_Fangs"
step
talk Lotwil Veriatus##2921
turnin Study of the Elements: Rock##712 |goto Badlands 25.95,44.87
accept Gyro... What?##714 |goto Badlands 25.95,44.87 |only if itemcount(4389) > 0
accept Coolant Heads Prevail##713 |goto Badlands 25.95,44.87 |only if itemcount(3829) > 0
step
talk Lotwil Veriatus##2921
turnin Gyro... What?##714 |goto Badlands 25.95,44.87 |only if itemcount(4389) > 0
turnin Coolant Heads Prevail##713 |goto Badlands 25.95,44.87 |only if itemcount(3829) > 0
|only if itemcount(4389) > 0 or itemcount(3829)
step
talk Lucien Tosselwrench##2920
accept Liquid Stone##715 |goto Badlands 25.95,44.67 |only if itemcount(3823) > 0 and itemcount(929) > 0
accept Stone Is Better than Cloth##716 |goto Badlands 25.95,44.67 |only if itemcount(2868) > 0
|only if (itemcount(3823) > 0 and itemcount(929) > 0) or itemcount(2868) > 0
step
talk Lucien Tosselwrench##2920
turnin Liquid Stone##715 |goto Badlands 25.95,44.67 |only if itemcount(3823) > 0 and itemcount(929) > 0
turnin Stone Is Better than Cloth##716 |goto Badlands 25.95,44.67 |only if itemcount(2868) > 0
|only if (itemcount(3823) > 0 and itemcount(929) > 0) or itemcount(2868) > 0
step
label "Collect_Buzzard_Gizzards"
Kill Buzzard enemies around this area
collect 5 Buzzard Gizzard##7847 |q 2500/1 |goto Badlands 16.82,59.84
You can find more around: |notinsticky
[12.45,69.20]
[17.43,48.90]
[25.63,62.04]
[33.36,59.65]
[28.67,72.03]
[24.51,74.45]
[18.90,77.65]
step
label "Collect_Buzzard_Wings"
Kill Buzzard enemies around this area
collect 4 Buzzard Wing##3404 |q 703/1 |goto Badlands 16.82,59.84
.tip Be careful to not accidentally sell these to a vendor.
You can find more around: |notinsticky
[12.45,69.20]
[17.43,48.90]
[25.63,62.04]
[33.36,59.65]
[28.67,72.03]
[24.51,74.45]
[18.90,77.65]
step
label "Collect_Crag_Coyote_Fangs"
Kill Coyote enemies around this area
collect 10 Crag Coyote Fang##7846 |q 2500/2 |goto Badlands 23.75,55.12
You can find more around: |notinsticky
[14.18,65.72]
[31.58,65.16]
step
Kill enemies around this area
.tip Grinding a bit here will reduce the amount you have to grind all at once later.
.tip Don't turn in quests yet, unless you don't mind grinding more later. You will turn in quests after grinding.
ding 42 |goto Badlands 30.24,59.90
You can sell items at [42.47,52.50]
.tip Make sure not to accidentally sell Buzzard Wings if you sell items.
step
talk Rigglefuzz##2817
turnin Barbecued Buzzard Wings##703 |goto Badlands 42.39,52.93
step
Destroy or Sell These Items:
.tip They are no longer needed.
trash Buzzard Wing##3404 |goto Badlands 53.80,43.31
step
talk Sigrun Ironhew##2860
turnin Scrounging##733 |goto Badlands 53.80,43.31
step
Allow Enemies to Kill You
.tip Make sure to die around this location.
.tip We are going to get the Thorium Point flight path in Searing Gorge.
.tip Don't worry about the resurrection sickness, you will be traveling around a bit.
.tip By the time you need to kill enemies again, it will be gone.
Die on Purpose |complete isdead |goto Searing Gorge 67.82,51.45 |q 2500
|only if not hardcore
step
talk Spirit Healer##6491
Select _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto Searing Gorge 35.50,22.79 |q 2500 |zombiewalk
|only if not hardcore
step
talk Lanie Reed##2941
fpath Thorium Point |goto Searing Gorge 37.94,30.86
|only if not hardcore
step
Leave the building |goto Loch Modan,35.23,47.74,10 |walk |only if subzone("Stoutlager Inn")
Enter the building |goto Loch Modan,36.63,48.52,10 |walk
talk Ghak Healtouch##1470
.tip Inside the building.
turnin Badlands Reagent Run##2500 |goto Loch Modan 37.07,49.38
step
talk Prospector Ironband##1344
turnin Murdaloc##739 |goto Loch Modan 65.93,65.62
]]
)
