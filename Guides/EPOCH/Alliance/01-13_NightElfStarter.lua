local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Night Elf Starter (1-13)',
  {
    image = ZGV.IMAGESDIR .. 'Teldrassil',
    condition_suggested = function()
      return raceclass('NightElf') and level <= 13
    end,
    condition_suggested_race = function()
      return raceclass('NightElf')
    end,
    condition_suggested_exclusive = true,
    next = 'Leveling Guides\\Darkshore (13-17)',
    hardcore = true,
  },
  [[
step
_NOTE:_
Save All Linen Cloth You Find
|tip As you quest in Teldrassil, save all Linen Cloth you find.
|tip Be careful not to accidentally sell them to a vendor.
|tip You will need ~70 Linen Cloth when you are level 10-11.
|tip You will use them to create your wand, which will be a powerful weapon for you.
|tip However, if you are confident you will be able to buy a wand from the Auction House (if this isn't a new or populated server), you can ignore this. |only if not selfmade
step
Click Here to Continue |confirm |q 456 |future
|only if Priest
step
_Destroy This Item:_
|tip You won't use it in the Shadowglen starter area.
|tip You will get another one before you need to use it.
trash Hearthstone##6948 |goto Teldrassil 58.69,44.27
|only if not hardcore
step
talk Conservator Ilthalaine##2079
accept The Balance of Nature##456 |goto Teldrassil 58.69,44.27
step
kill 7 Young Nightsaber##2031 |q 456/1 |goto Teldrassil 61.93,42.02
kill 4 Young Thistle Boar##1984 |q 456/2 |goto Teldrassil 61.93,42.02
step
Grind mobs here until you reach level 3.
|tip It is not recommended to skip this grinding step. The mobs hyper-spawn here and we need this experience later.
ding 3 |goto Teldrassil 61.93,42.02
step
talk Dirania Silvershine##8583
|tip You must be level 2 for this quest to be available. |only if level < 2
accept A Good Friend##4495 |goto Teldrassil 60.90,41.96
step
talk Melithar Staghelm##2077
accept The Woodland Protector##458 |goto Teldrassil 59.93,42.48
step
talk Keina##3589
|tip Inside the building
|tip Sell your goods from grinding.
|tip Restock on ammo |only if Hunter
vendor Keina##3589 |goto Teldrassil/0 59.32,41.12 |q 456
step
talk Conservator Ilthalaine##2079
turnin The Balance of Nature##456 |goto Teldrassil 58.70,44.27
accept The Balance of Nature##457 |goto Teldrassil 58.70,44.27
accept Simple Sigil##3116 |goto Teldrassil 58.70,44.27		|only if NightElf Warrior
accept Encrypted Sigil##3118 |goto Teldrassil 58.70,44.27		|only if NightElf Rogue
accept Hallowed Sigil##3119 |goto Teldrassil 58.70,44.27		|only if NightElf Priest
accept Etched Sigil##3117 |goto Teldrassil 58.70,44.27		|only if NightElf Hunter
accept Verdant Sigil##3120 |goto Teldrassil 58.70,44.27		|only if NightElf Druid
step
Run up the ramp inside the building |goto Teldrassil 59.19,40.00 < 15 |walk
talk Alyissia##3593
|tip Inside the building.
|tip Train your class spells while you are here.
turnin Simple Sigil##3116 |goto Teldrassil 59.63,38.45
|only if NightElf Warrior
step
Run up the ramp |goto Teldrassil 59.97,41.90 < 10 |walk
talk Shanda##3595
|tip Upstairs inside the building.
turnin Hallowed Sigil##3119 |goto Teldrassil 59.17,40.44
|only if NightElf Priest
step
talk Tarindrella##1992
turnin The Woodland Protector##458 |goto Teldrassil 57.83,45.20
accept The Woodland Protector##459 |goto Teldrassil 57.83,45.20
step
talk Gilshalan Windwalker##2082
accept Webwood Venom##916 |goto Teldrassil 57.81,41.65
step
Run up the large ramp |goto Teldrassil 57.53,41.63 < 15 |only if walking
Enter the building |goto Teldrassil 58.51,40.71 < 10 |walk
talk Mardant Strongoak##3597
|tip Up in the tall tree, inside the building.
|tip Train your class spells.
turnin Verdant Sigil##3120 |goto Teldrassil 58.63,40.29
|only if NightElf Druid
step
kill 7 Mangy Nightsaber##2032 |q 457/1 |goto Teldrassil 60.12,35.06
You can find more around [62.60,37.94]
kill 7 Thistle Boar##1985 |q 457/2 |goto Teldrassil 60.12,35.06
stickystart "Collect_Webwood_Venom_Sacs"
step
Follow the path |goto Teldrassil 55.45,32.85 < 20 |only if walking
talk Iverron##8584
turnin A Good Friend##4495 |goto Teldrassil 54.60,32.99
accept A Friend in Need##3519 |goto Teldrassil 54.60,32.99
step
label "Collect_Webwood_Venom_Sacs"
kill Webwood Spider##1986+
|tip Inside and outside the cave.
|tip Watch for respawns while in the area. |only if hardcore
collect 10 Webwood Venom Sac##5166 |q 916/1 |goto Teldrassil 56.80,31.59
step
Allow Enemies to Kill You unless you are doing soul of iron
|tip Inside and outside the cave.
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |complete isdead |goto Teldrassil 56.80,31.59 |q 916
|only if not hardcore
step
talk Spirit Healer##6491
Select _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto Teldrassil 58.72,42.34 |q 916 |zombiewalk
|only if not hardcore
step
talk Conservator Ilthalaine##2079
turnin The Balance of Nature##457 |goto Teldrassil 58.70,44.26
step
talk Dirania Silvershine##8583
turnin A Friend in Need##3519 |goto Teldrassil 60.90,41.96
accept Iverron's Antidote##3521 |goto Teldrassil 60.90,41.96
step
talk Keina##3589
|tip Inside the building
|tip Sell your goods from grinding.
|tip Restock on ammo |only if Hunter
vendor Keina##3589 |goto Teldrassil/0 59.32,41.12 |q 456
step
talk Gilshalan Windwalker##2082
turnin Webwood Venom##916 |goto Teldrassil 57.81,41.65
accept Webwood Egg##917 |goto Teldrassil 57.81,41.65
step
Run up the ramp inside the building |goto Teldrassil 59.19,40.00 < 10 |walk
talk Frahun Shadewhisper##3594
|tip Inside the building.
turnin Encrypted Sigil##3118 |goto Teldrassil 59.64,38.66
|only if NightElf Rogue
step
Run up the large ramp |goto Teldrassil 57.53,41.63 < 15 |only if walking
Enter the building |goto Teldrassil 58.51,40.71 < 10 |walk
talk Ayanna Everstride##3596
|tip Up in the tall tree, inside the building.
|tip Consider not training your spells to buy a better bow and more ammo instead.
turnin Etched Sigil##3117 |goto Teldrassil 58.65,40.45
|only if NightElf Hunter
step
Run up the large ramp |goto Teldrassil 57.53,41.63 < 15 |only if walking
Enter the building |goto Teldrassil 58.51,40.71 < 10 |walk
talk Mardant Strongoak##3597
|tip Learn level 4 abilities
|only if NightElf Druid
step
|tip Up in the tall tree, inside the building.
|tip Consider not training your spells to buy a better bow and more ammo instead.
turnin Etched Sigil##3117 |goto Teldrassil 58.65,40.45
|only if NightElf Hunter
step
click Moonpetal Lily##152095+
|tip They look like tall flowers with orange petals on the ground around this area.
collect 4 Moonpetal Lily##10641 |q 3521/2 |goto Teldrassil 57.72,37.76
stickystart "Collect_Webwood_Ichor"
step
Enter the cave |goto Teldrassil 56.79,31.41 < 20 |walk
Follow the path down |goto Teldrassil 56.83,28.94 < 10 |walk
Follow the path up |goto Teldrassil 55.75,25.49 < 10 |walk
click Webwood Eggs##4406
|tip Upstairs inside the cave.
|tip Watch for respawns while in the area. |only if hardcore
collect Webwood Egg##5167 |q 917/1 |goto Teldrassil 56.80,26.43
step
label "Collect_Webwood_Ichor"
kill Webwood Spider##1986+
|tip Inside and outside the cave.
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
collect Webwood Ichor##10640 |q 3521/3 |goto Teldrassil 56.78,31.55
step
kill Grell##1988+
collect 8 Fel Moss##3297 |q 459/1 |goto Teldrassil 56.08,45.83
collect 7 Hyacinth Mushroom##10639 |q 3521/1 |goto Teldrassil 56.08,45.83
You can find more around [54.75,44.01]
step
talk Tarindrella##1992
turnin The Woodland Protector##459 |goto Teldrassil 57.83,45.20
step
talk Aleanea Miststriker##46257
accept Corruption in Shadowglen##27480
step
talk Dirania Silvershine##8583
turnin Iverron's Antidote##3521 |goto Teldrassil 60.90,41.96
step
kill 8 Frenzied Moonkin##46258 |q 27480/1 |goto Teldrassil 64,41
kill 1 Natook##46259 |q 27480/2 |goto Teldrassil 64,41
step
talk Dirania Silvershine##8583
|tip It is a TIMED quest! You will have 5 minutes to complete it.
accept Iverron's Antidote##3522 |goto Teldrassil 60.90,41.96
step
talk Aleanea Miststriker##46257
turnin Corruption in Shadowglen##27480
step
talk Gilshalan Windwalker##2082
turnin Webwood Egg##917 |goto Teldrassil 57.81,41.65
accept Tenaron's Summons##920 |goto Teldrassil 57.81,41.65
step
Run up the ramp that wraps around the huge tree and enter the building |goto Teldrassil 59.29,39.09 < 10 |walk
talk Tenaron Stormgrip##3514
|tip At the very top of the tall tree, inside the building.
turnin Tenaron's Summons##920 |goto Teldrassil 59.07,39.45
accept Crown of the Earth##921 |goto Teldrassil 59.07,39.45
step
'Go the the moonwell to the north of your position
use the Crystal Phial##5185
collect Filled Crystal Phial##5184 |q 921/1 |goto Teldrassil 59.94,33.04
|tip Grind enemies on the way to the fountain, we want to be level 6 soon. |only if level < 6
step
talk Iverron##8584
turnin Iverron's Antidote##3522 |goto Teldrassil 54.59,32.99
|tip Grind enemies on the way to Iverron, we want to be level 6 soon. |only if level < 6
step
Allow Enemies to Kill You
|tip Inside and outside the cave.
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |complete isdead |goto Teldrassil 56.80,31.59 |q 921
|only if not hardcore and level > 6
step
talk Spirit Healer##6491
Select _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto Teldrassil 58.72,42.34 |q 921 |zombiewalk
|only if not hardcore and level > 6
step
Run up the ramp that wraps around the huge tree |goto Teldrassil 57.54,41.62 < 15 |only if walking
Enter the building |goto Teldrassil 59.29,39.09 < 10 |walk
talk Tenaron Stormgrip##3514
|tip At the very top of the tall tree, inside the building.
turnin Crown of the Earth##921 |goto Teldrassil 59.07,39.45
accept Crown of the Earth##928 |goto Teldrassil 59.07,39.45
step
Run up the ramp |goto Teldrassil 59.96,41.88 < 10 |walk
talk Shanda##3595
|tip Upstairs inside the building.
accept In Favor of Elune##5622 |goto Teldrassil 59.17,40.44
|only if NightElf Priest
step
talk Porthannius##6780
accept Dolanaar Delivery##2159 |goto Teldrassil 61.16,47.64
step
talk Zenn Foulhoof##2150
accept Zenn's Bidding##488 |goto Teldrassil 60.45,56.15
step
talk Syral Bladeleaf##2083
accept Denalan's Earth##997 |goto Teldrassil 56.08,57.73
|tip Go out of your way to kill any enemy on the way, you need them all for quests.
step
talk Athridas Bearmantle##2078
accept A Troubling Breeze##475 |goto Teldrassil 55.95,57.28
step
Enter the building |goto Teldrassil 55.75,57.23 < 10 |walk
talk Laurna Morninglight##3600
|tip Inside the building.
turnin In Favor of Elune##5622 |goto Teldrassil 55.56,56.75
accept Garments of the Moon##5621 |goto Teldrassil 55.56,56.75
|only if NightElf Priest
step
Enter the building |goto Teldrassil 55.75,57.23 < 10 |walk |only if not Priest
talk Tallonkai Swiftroot##3567
|tip At the top of the tower.
accept Twisted Hatred##932 |goto Teldrassil 55.57,56.95
accept The Emerald Dreamcatcher##2438 |goto Teldrassil 55.57,56.95
step
talk Shalomon##3609
|tip Inside the building.
buy Gladius##2488 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 2438
|only if Warrior and itemcount(2488) == 0
step
talk Jeena Featherbow##3610
|tip Inside the building.
buy Hornwood Recurve Bow##2506 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Jeena Featherbow##3610 |goto Teldrassil 55.89,59.20 |q 2438
|only if Hunter and itemcount(2506) == 0
step
talk Shalomon##3609
|tip Inside the building.
buy Stiletto##2494 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 2438
|only if Rogue and itemcount(2494) == 0
step
talk Shalomon##3609
|tip Inside the building.
buy Walking Stick##2495 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 2438
|only if Druid and itemcount(2495) == 0
step
talk Jeena Featherbow##6780
accept Demons in Fel Rock##27483 |goto Teldrassil 61.16,47.64
step
talk Innkeeper Keldamyr##6736
|tip Upstairs inside the building.
turnin Dolanaar Delivery##2159 |goto Teldrassil 55.62,59.79
step
talk Innkeeper Keldamyr##6736
home Dolanaar |goto Teldrassil 55.62,59.79
step
talk Melarith##6781
accept Attack on the Gnarlpine##27477
step
talk Corithras Moonrage##3515
turnin Crown of the Earth##928 |goto Teldrassil 56.14,61.71
accept Crown of the Earth##929 |goto Teldrassil 56.14,61.71
step
Heal and Fortify Sentinel Shaya |q 5621/1 |goto Teldrassil 57.24,63.51
|tip Target Sentinel Shaya.
|tip First, cast your "Lesser Heal (Rank 2)" spell on her.
|tip Second, cast your "Power Word: Fortitude" spell on her.
|only if NightElf Priest
step
Enter the building |goto Teldrassil 57.48,60.60 < 10 |walk
talk Malorne Bladeleaf##3604
|tip Inside the building.
Learn Apprentice Herbalism |skillmax Herbalism,75 |goto Teldrassil 57.72,60.64
|You only need to do this if you cant buy from AH or as a guildie
|tip You need Herbalism, so you can gather 5 Earthroot as you quest in Teldrassil.
|tip You will need the Earthroot for a later class quest.
|tip Once you have the 5 Earthroot, you can abandon Herbalism, if you want to.
|only if Druid
step 
talk Malorne Bladeleaf##3604
accept Herbal Medicine##27485
step
talk Denalan##2080
|tip He walks around this area.
turnin Denalan's Earth##997 |goto Teldrassil 60.90,68.49
step
Watch the dialogue
talk Denalan##2080
|tip He walks around this area.
accept Timberling Seeds##918 |goto Teldrassil 60.80,68.54
accept Timberling Sprouts##919 |goto Teldrassil 60.80,68.54
step
click Timberling Sprout##4608+
|tip They look like green and brown vine balls on the ground around this area.
collect 12 Timberling Sprout##5169 |q 919/1 |goto Teldrassil 59.52,72.20
You can find more around [60.73,65.71]
kill Timberling##2022+
collect 8 Timberling Seed##5168 |q 918/1 |goto Teldrassil 59.52,72.20
You can find more around [60.73,65.71]
step
talk Denalan##2080
|tip He walks around this area.
turnin Timberling Seeds##918 |goto Teldrassil 60.80,68.54
accept Rellian Greenspyre##922 |goto Teldrassil 60.80,68.54
turnin Timberling Sprouts##919 |goto Teldrassil 60.80,68.54
step
talk Shalomon##3609
|tip Inside the building.
buy Gladius##2488 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 922
|only if Warrior and itemcount(2488) == 0
step
talk Jeena Featherbow##3610
|tip Inside the building.
buy Hornwood Recurve Bow##2506 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Jeena Featherbow##3610 |goto Teldrassil 55.89,59.20 |q 922
|only if Hunter and itemcount(2506) ==0
step
talk Shalomon##3609
|tip Inside the building.
buy Stiletto##2494 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 922
|only if Rogue and itemcount(2494) == 0
step
talk Shalomon##3609
|tip Inside the building.
buy Walking Stick##2495 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 922
|only if Druid and itemcount(2495) == 0
step
Enter the building |goto Teldrassil 55.75,57.23 < 10 |walk
talk Laurna Morninglight##3600
|tip Inside the building.
turnin Garments of the Moon##5621 |goto Teldrassil 55.56,56.75
|only if NightElf Priest
stickystart "Collect_Strigid_Owl_Feathers"
stickystart "Collect_Nightsaber_Fangs"
stickystart "Collect_Webwood_Spider_Silk"
stickystart "Collect_Small_Spider_Legs"
step
use the Jade Phial##5619
collect Filled Jade Phial##5639 |q 929/1 |goto Teldrassil 63.38,58.08
step
Enter the building |goto Teldrassil 66.23,58.37 < 20 |walk
talk Gaerolas Talvethren##2107
|tip Upstairs inside the building.
|tip Watch for patrols and respawns while in the area. |only if hardcore
turnin A Troubling Breeze##475 |goto Teldrassil 66.26,58.52
accept Gnarlpine Corruption##476 |goto Teldrassil 66.26,58.52
step
Enter the building |goto Teldrassil 67.82,59.46 < 10 |walk
click Tallonkai's Dresser##126158
|tip Inside the building.
|tip Watch for patrols and respawns while in the area. |only if hardcore
collect Emerald Dreamcatcher##8048 |q 2438/1 |goto Teldrassil 68.01,59.63
kill 4 Gnarlpine warrior##20089 |q 27477/2
step
label "Collect_Strigid_Owl_Feathers"
kill Strigid Owl##1995
collect 3 Strigid Owl Feather##3411 |q 488/2 |goto Teldrassil 63.65,53.56
You can find more around: |notinsticky
[65.26,51.94]
[67.49,53.76]
stickystart "Collect_Webwood_Spider_Silk"
step
label "Collect_Nightsaber_Fangs"
kill Nightsaber##2042+
collect 3 Nightsaber Fang##3409 |q 488/1 |goto Teldrassil 62.05,60.06
You can find more around [59.77,62.02]
step
label "Collect_Webwood_Spider_Silk"
kill Webwood Lurker##1998+
collect 3 Webwood Spider Silk##3412 |q 488/3 |goto Teldrassil 60.36,58.07
You can find more around [61.11,54.53]
step
label "Collect_Small_Spider_Legs"
kill Webwood Lurker##1998+
|tip You are collecting these to be able to complete a future quest soon.
collect 7 Small Spider Leg##5465 |goto Teldrassil 60.36,58.07 |q 4161 |future
|tip Be careful not to accidentally sell these to a vendor.
|tip Keep more of these even after this quest finishes, it is one of the few sources of food for your pet later. |only if Hunter
You can find more around [61.11,54.53]
step
Kill enemies around this area
|tip Getting this far into level 7 will allow you to reach level 8 after turning in quests soon.
|tip You are about to return to town, so it will be a good time to learn your level 8 abilities.
ding 7,3600 |goto Teldrassil 60.36,58.07
You can find more around [61.11,54.53]
step
talk Zenn Foulhoof##2150
turnin Zenn's Bidding##488 |goto Teldrassil 60.45,56.15
step
talk Jeena Featherbow##3610
|tip Inside the building.
buy Hornwood Recurve Bow##2506 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Jeena Featherbow##3610 |goto Teldrassil 55.89,59.20 |q 2438
|only if Hunter and itemcount(2506) == 0
step
talk Syral Bladeleaf##2083
accept Seek Redemption!##489 |goto Teldrassil 56.08,57.73
step
talk Athridas Bearmantle##2078
turnin Gnarlpine Corruption##476 |goto Teldrassil 55.95,57.28
step
Enter the building |goto Teldrassil 55.75,57.23 < 10 |walk
talk Aldia##3608
|tip Upstairs inside the building, on the middle level.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Aldia##3608 |goto Teldrassil 55.51,57.15 |q 2438
step
talk Aldia##3608
|tip Upstairs inside the building, on the middle level.
buy Balanced Throwing Dagger##25872 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Aldia##3608 |goto Teldrassil 55.51,57.15 |q 2438
|only if Rogue
step
talk Tallonkai Swiftroot##3567
|tip At the top of the tower.
turnin The Emerald Dreamcatcher##2438 |goto Teldrassil 55.57,56.95
accept Ferocitas the Dream Eater##2459 |goto Teldrassil 55.57,56.95
step
talk Shalomon##3609
|tip Inside the building.
buy Gladius##2488 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 922
|only if Warrior and itemcount(2488) == 0
step
talk Shalomon##3609
|tip Inside the building.
buy Stiletto##2494 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 922
|only if Rogue and itemcount(2494) == 0
step
talk Shalomon##3609
|tip Inside the building.
buy Walking Stick##2495 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 922
|only if Druid and itemcount(2495) == 0
step
talk Corithras Moonrage##3515
turnin Crown of the Earth##929 |goto Teldrassil 56.14,61.71
accept Crown of the Earth##933 |goto Teldrassil 56.14,61.71
step
talk Zarrin##6286
|tip You need to have the Cooking profession learned in order to accept a quest here.
Learn Cooking |skillmax Cooking,75 |goto Teldrassil 57.12,61.30 |q 4161 |future
step
talk Zarrin##6286
accept Recipe of the Kaldorei##4161 |goto Teldrassil 57.12,61.30
step
talk Zarrin##6286
turnin Recipe of the Kaldorei##4161 |goto Teldrassil 57.12,61.30
stickystart "Collect_Fel_Cones"
stickystart "Kill_Gnarlpine_Mystics"
step
kill Ferocitas the Dream Eater##7234
collect Gnarlpine Necklace##8049 |q 2459 |goto Teldrassil 69.37,53.40
step
use the Gnarlpine Necklace##8049
collect Tallonkai's Jewel##8050 |q 2459/2
step
label "Kill_Gnarlpine_Mystics"
kill 7 Gnarlpine Mystic##7235 |q 2459/1 |goto Teldrassil 68.96,52.95
|tip Enemies may share spawns around this area. |notinsticky
|tip Watch for respawns while in the area. |only if hardcore |notinsticky
step
label "Collect_Fel_Cones"
click Fel Cone##1673+
|tip They look like small brown balls with green smoke rising out of them at the base of trees around this area.
collect 3 Fel Cone##3418 |q 489/1 |goto Teldrassil 66.72,53.54
You can usually find more around: |notinsticky
[64.78,50.81]
[61.62,53.44]
step
talk Zenn Foulhoof##2150
turnin Seek Redemption!##489 |goto Teldrassil 60.45,56.15
step
Follow the path |goto Teldrassil 56.36,54.20 < 20 |only if walking and not subzone("Fel Rock")
Enter the cave |goto Teldrassil 54.65,52.45 < 20 |walk |only if not subzone("Fel Rock")
Follow the path |goto Teldrassil 53.79,50.64 < 10 |walk
Continue following the path |goto Teldrassil 53.17,49.16 < 10 |walk
kill Shadow Sprite##2003
kill Rascal Sprite##2002
collect 10 Demonic Essence##63353 |q 27483/1
kill Lord Melenas##2038
|tip Inside the cave.
|tip He can spawn in multiple locations inside this cave.
|tip If he's not here, search around in the cave until you find him.
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Consider joining a party before fighting Lord Melenas |only if hardcore
collect Melenas' Head##5221 |q 932/1 |goto Teldrassil 52.81,50.20
step
Kill enemies around this area
|tip Inside the cave.
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Getting this far into level 8 will allow you to reach level 9 after turning in quests soon.
ding 8,4000 |goto Teldrassil 53.69,51.17
step
Allow Enemies to Kill You
|tip Anywhere inside the cave.
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |complete isdead |goto Teldrassil 53.69,51.17 |q 932
|only if not hardcore
step
talk Spirit Healer##6491
Select _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto Teldrassil 56.20,63.26 |q 932 |zombiewalk
|only if not hardcore
step
talk Shalomon##3609
|tip Inside the building.
buy Gladius##2488 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 932
|only if Warrior and itemcount(2488) == 0
step
talk Shalomon##3609
|tip Inside the building.
buy Stiletto##2494 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 932
|only if Rogue and itemcount(2494) == 0
step
talk Shalomon##3609
|tip Inside the building.
buy Walking Stick##2495 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 932
|only if Druid and itemcount(2495) == 0
step
Enter the building |goto Teldrassil 55.76,57.24 < 10 |walk
talk Byancie##6094
|tip Inside the building.
Train Apprentice First Aid |skillmax First Aid,75 |goto Teldrassil 55.29,56.82
|only if GetMoney() > 150
step
_NOTE:_
Create Bandages in Downtime
|tip While you wait for boats, it's a good time to make bandages and increase your First Aid skill.
|tip You'll need higher skill to make better bandages later, so make sure to level it up as you go.
|tip Keep bandages on hand for another way to heal yourself.
Click Here to Continue |confirm |q 932
step
talk Aldia##3608
|tip Upstairs inside the building, on the middle level.
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Aldia##3608 |goto Teldrassil 55.51,57.15 |q 932
step
talk Tallonkai Swiftroot##3567
|tip At the top of the tower.
turnin Twisted Hatred##932 |goto Teldrassil 55.57,56.95
turnin Ferocitas the Dream Eater##2459 |goto Teldrassil 55.57,56.95
turnin Demons in fel rock##27483 |goto Teldrassil 55.57,56.95
accept Purifying the essence##27484
step
use the Demonic essence##63355 |goto Teldrassil 56,62
collect Purified Essence##63354 |sticky
turnin Purifying the essence##27484 |goto Teldrassil 55.57,56.95
step
Move on the road towards Darnassus
talk Moon Priestess Amara##2151
accept The Road to Darnassus##487
step
kill 4 Gnarlpine Ambusher##2152 |q 27477/1 |goto 46,52
step
get 8 Lily Whip |q 27485/1 |goto 40,65
|tip They spawn around the edge of the lake
step
use the Tourmaline Phial##5621
collect Filled Tourmaline Phial##5645 |q 933/1 |goto Teldrassil 42.42,67.07
step
click Strange Fruited Plant##6751
accept The Glowing Fruit##930 |goto Teldrassil 42.63,76.10
step
kill 4 Gnarlpine Defender##2010 |q 27477/3 |goto 47,77
kill 4 Gnarlpine Shaman##2009 |q 27477/4 |goto 47,77
step
Allow Enemies to Kill You
|tip Try to die around this area, or to the east of here, so that you end up in Dolanaar.
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |complete isdead |goto Teldrassil 46.87,71.67 |q 933
|only if not hardcore
step
talk Spirit Healer##6491
Select _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto Teldrassil 56.20,63.26 |q 933 |zombiewalk
|only if not hardcore
step
talk Corithras Moonrage##3515
turnin Crown of the Earth##933 |goto Teldrassil 56.14,61.71
accept Crown of the Earth##7383 |goto Teldrassil 56.14,61.71
step
talk Malorne Bladeleaf##3604
turnin Herbal Medicine##27485 |goto Teldrassil 57.7,60.6
step
talk Melarith##6781
turnin Attack on the Gnarlpine##27477
accept Attack on the Gnarlpine##27478
step
talk Athridas Bearmantle##2078 |goto Teldrassil 56,57.3
accept Relics of Wakening##483
step
talk Shalomon##3609
|tip Inside the building.
buy Gladius##2488 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 7383
|only if Warrior and itemcount(2488) == 0
step
talk Shalomon##3609
|tip Inside the building.
buy Stiletto##2494 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 7383
|only if Rogue and itemcount(2494) == 0
step
talk Shalomon##3609
|tip Inside the building.
buy Walking Stick##2495 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Shalomon##3609 |goto Teldrassil 56.31,59.49 |q 7383
|only if Druid and itemcount(2495) == 0
step
map Teldrassil
path follow strictbounce; loop off; ants straight; dist 40; markers none
path	55.81,58.31	55.50,58.45	54.54,58.48	53.98,58.19	53.59,57.61
path	53.00,57.34	52.68,56.74	52.34,56.44	51.91,56.39	51.60,56.47
path	51.30,56.67	51.00,56.58	50.55,56.09	50.43,55.56	50.50,54.54
path	50.44,54.20	50.20,53.86
step
talk Sentinel Arynia Cloudsbreak##3519
accept The Enchanted Glade##937 |goto Teldrassil 38.31,34.36
step
use the Amethyst Phial##18152
collect Filled Amethyst Phial##18151 |q 7383/1 |goto Teldrassil 38.43,34.04
step
talk Alanna Raveneye##3606 |goto Teldrassil 36.7,34.2
accept Bloodfeather Eggs##27479
stickystart "Collect_Bloodfeather_Belts"
stickystart "Collect_Bloodfeather_Eggs"
step
click Strange Fronded Plant##6752
accept The Shimmering Frond##931 |goto Teldrassil 34.60,28.85
step
talk Mist##3568
|tip This is an escort quest.
|tip If she's not here, someone may be escorting her.
|tip Wait until she respawns.
|tip Clear nearby enemies or respawns while waiting. |only if hardcore
accept Mist##938 |goto Teldrassil 31.54,31.61 |noautoaccept
step
label "Collect_Bloodfeather_Belts"
Kill Bloodfeather enemies around this area
|tip Watch for patrols and respawns while in the area. |only if hardcore
collect 6 Bloodfeather Belt##5204 |q 937/1 |goto Teldrassil 34.55,34.99
You can find more around [36.25,38.54]
step
label "Collect_Bloodfeather_Eggs"
|tip Watch for patrols and respawns while in the area. |only if hardcore
collect 6 Bloodfeather Egg##63349 |q 27479/1 |goto Teldrassil 34.55,34.99
step
Lead Mist Safely to Sentinel Arynia Cloudsbreak |q 938/1 |goto Teldrassil 38.31,34.36
|tip Mist will follow you as you walk.
|tip Try to hurry, this quest is timed.
step
talk Sentinel Arynia Cloudsbreak##3519
turnin The Enchanted Glade##937 |goto Teldrassil 38.31,34.36
turnin Mist##938 |goto Teldrassil 38.31,34.36
accept Teldrassil##940 |goto Teldrassil 38.31,34.36
step
step
talk Alanna Raveneye##3606 |goto Teldrassil 36.7,34.2
turnin Bloodfeather Eggs##27479
step
Kill enemies on the way to Darnassus.
|tip You will be returning to town, so it will be a good time to learn your level 10 abilities.
|tip Watch for patrols and respawns while in the area. |only if hardcore
ding 10 |goto Darnassus 38.19,21.63
step
talk Rellian Greenspyre##3517
turnin Rellian Greenspyre##922 |goto Darnassus 38.19,21.63
|tip Grind enemies on the way to turn in this quest.
accept Tumors##923 |goto Darnassus 38.19,21.63
step
Enter the building |goto Darnassus 35.46,10.59 < 10 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building, on the middle floor.
accept Moonglade##5921 |goto Darnassus 35.37,8.40
|only if NightElf Druid
step
talk Jocaste##4146 |only if Hunter
talk Syurna##4163 |only if Rogue
talk Denatharion##4218 |only if Druid
trainer Jocaste##4146 |goto Darnassus/0 40.40,8.58 |only if Hunter |q 2518
trainer Syurna##4163 |goto Darnassus/0 36.97,21.86 |only if Rogue |q 2518
trainer Denatharion##4218  |goto Darnassus/0 34.74,7.43 |only if Druid |q 2518
|tip In the basement of the tree. |only if Rogue
|tip Train your spells.
step
Enter the building |goto Darnassus 35.46,10.59 < 10 |walk |only if not Druid
talk Arch Druid Fandral Staghelm##3516
|tip He walks around inside the building, at the top.
turnin Teldrassil##940 |goto Darnassus 34.80,9.24
accept Grove of the Ancients##952 |goto Darnassus 34.80,9.24
step
talk Sister Aquinne##7316
accept The Temple of the Moon##2519 |goto Darnassus 28.94,45.82
step
Cross the bridge |goto Darnassus 38.59,48.02 < 20 |only if walking
Enter the building |goto Darnassus 39.02,76.78 < 10 |walk
talk Priestess A'moora##7313
|tip Upstairs inside the building.
turnin The Temple of the Moon##2519 |goto Darnassus 36.64,85.93
accept Tears of the Moon##2518 |goto Darnassus 36.64,85.93
step
talk Jandria##4091
trainer Jandria##4091 |goto Darnassus/0 37.91,82.80  |q 2518
|tip Train your spells.
|only if Priest
step
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Moonglade##5921 |goto Moonglade 56.21,30.64
accept Great Bear Spirit##5929 |goto Moonglade 56.21,30.64
|only if NightElf Druid
step
Follow the path |goto Moonglade 42.47,34.44 < 40 |only if walking
talk Great Bear Spirit##11956
Select _"What do you represent, spirit?"_
Seek Out the Great Bear Spirit and Learn what it Has to Share with You About the Nature of the Bear |q 5929/1 |goto Moonglade 39.11,27.51
|only if NightElf Druid
step
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Great Bear Spirit##5929 |goto Moonglade 56.21,30.64
accept Back to Darnassus##5931 |goto Moonglade 56.21,30.64
|only if NightElf Druid
step
talk Silva Fil'naveth##11800 |goto Moonglade 44.2,45.2
Fly to Rut'theran Village
|only if NightElf Druid
step
talk Mathrengyl Bearwalker##4217 |goto Darnassus 35.4,8.4
turnin Back to Darnassus##5931 |goto Darnassus 35.38,8.41
accept Body and Heart##6001 |goto Darnassus 35.38,8.41
|only if NightElf Druid
step
talk Vesprystus##3838 |goto Teldrassil 58.4,94
|tip walk trough the portal in darnassus
fly to Auberdine in Darkshore
goto Darkshore 41.8,46
|tip be careful around the nightsabers as they can be high level even around town
|only if NightElf Druid
step
Clear the moonkins around and inside the cave
You want to have some space to use dust on the stone inside the cave
To then bring the summoned moonkin outside so it can be kited with entangling roots
use Cenarion Moondust##15208 |goto Darkshore 43.4,45.9
talk Lunaclaw Spirit##12144
|tip remember to interact with his text option
|only if NightElf Druid
step
fly back to darnassus
talk Mathrengyl Bearwalker##4217 |goto Darnassus 35.4,8.4
turnin Body and Heart##6001 |goto Darnassus 35.38,8.41
|only if NightElf Druid
step
talk Kyra Windblade##3598
|tip Inside the building.
accept Elanaria##1684 |goto Teldrassil 56.22,59.20
|only if Warrior
step
_NOTE:_
You Have Access to Stronger Ammo
|tip Now that you're level 10, you can purchase stronger bullets or arrows.
|tip When you restock ammo at vendors, make sure to buy level 10 ammo.
Click Here to Continue |confirm |q 2518
|only if Hunter
step
use the Taming Rod##15921
|tip Use it on a Webwood Lurker around this area.
|tip They look like green spiders.
Tame a Webwood Lurker |q 6063/1 |goto Teldrassil 59.81,59.06
|tip Dismiss it after you tame it.
|tip It may attack you after you dismiss it.
|only if NightElf Hunter
step
talk Dazalar##3601
turnin Taming the Beast##6063 |goto Teldrassil 56.68,59.49
accept Taming the Beast##6101 |goto Teldrassil 56.68,59.49
|only if NightElf Hunter
step
talk Dazalar##3601
accept Taming the Beast##6063 |goto Teldrassil 56.68,59.49
|only if NightElf Hunter
step
kill Agal##2162 |q 27478/1 |goto Teldrassil46.3,52
|tip He is inside the cave with the ambushers
step
goto Teldrassil 44.3,57.9
enter Ban'ethil Barrow Den
Head down to the first bridges
collect Black Feather Quill##3406 |goto 43.7,61.2
collect Rune of Nesting##3408 |goto 44.4,60.7
step
head deeper into the cave |goto 43.4,60.6
talk Oben Rageclaw##7317 
accept The Sleeping Druid##2541
step
kill Greenpaw##1993 |q 27478/3 
'tip he spawns right next to the box
collect Sapphire of the Sky##3407 |goto 44.7,62.4
kill Gnarlpine Shaman##2009
collect Small Voodoo charm##8363
step
talk Oben Rageclaw##7317 
turnin The Sleeping Druid##2541
accept Druid of the Claw##2561
step
kill Rageclaw##7318 |goto 45.6,59.2
|tip he wanders around the base of the room
|tip you can use voodoo charm even if someone else killed him
use Voodo Charm##8149
|tip on the corpse
step
kill Nargle##46256 |q 27478/2 
'tip he spawns right next to the box
collect Raven Claw Talisman##3405 |goto 45.7,57.4
step
talk Oben Rageclaw##7317 
turnin Druid of the Claw##2561
'hearth Dolanaar
|tip you can fight or die to get out as well
step
talk Melarith##6781
turnin Attack on the Gnarlpine##27478
step
talk Athridas Bearmantle##2078
turnin The Relics of Wakening##483
step
talk Corithras Moonrage##3515
turnin Crown of the Earth##7383 |goto Teldrassil 56.14,61.71
accept Crown of the Earth##935 |goto Teldrassil 56.14,61.71
step
talk Denalan##2080
|tip He walks around this area.
turnin The Glowing Fruit##930 |goto Teldrassil 60.90,68.49
turnin The Shimmering Frond##931 |goto Teldrassil 60.90,68.49
step
click Sprouted Frond##7510
accept The Sprouted Fronds##2399 |goto Teldrassil 60.90,68.49
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |complete isdead |goto Teldrassil 60.82,70.87 |q 935
|only if not hardcore and not NightElf Hunter
step
talk Spirit Healer##6491
Select _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto Teldrassil 56.20,63.26 |q 935 |zombiewalk
|only if not hardcore and not NightElf Hunter
step
use the Taming Rod##15922
|tip Use it on a Nightsaber Stalker around this area.
|tip They look like dark colored tigers.
Tame a Nightsaber Stalker |q 6101/1 |goto Teldrassil 62.40,74.70
|tip Dismiss it after you tame it.
|tip It may attack you after you dismiss it.
|only if NightElf Hunter
step
talk Dazalar##3601
turnin Taming the Beast##6101 |goto Teldrassil 56.68,59.49
accept Taming the Beast##6102 |goto Teldrassil 56.68,59.49
|only if NightElf Hunter
step
use the Taming Rod##15923
|tip Use it on a Strigid Screecher around this area.
|tip They look like grey birds.
Tame a Strigid Screecher |q 6102/1 |goto Teldrassil 43.99,51.16
|only if NightElf Hunter
step
talk Dazalar##3601
turnin Taming the Beast##6102 |goto Teldrassil 56.68,59.49
accept Training the Beast##6103 |goto Teldrassil 56.68,59.49
|only if NightElf Hunter
step
Enter the building |goto Teldrassil 55.76,57.24 < 10 |walk
talk Laurna Morninglight##3600
|tip Inside the building.
accept Returning Home##5629 |goto Teldrassil 55.57,56.75
|only if NightElf Priest
step
talk Jannok Breezesong##3599
|tip Inside the building.
accept The Apple Falls##2241 |goto Teldrassil 56.38,60.14
|only if Rogue
step
Allow Enemies to Kill You
|tip You must be close to this area.
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |complete isdead |goto Teldrassil 42.77,52.55 |q 2241
|only if Rogue and not hardcore
step
talk Spirit Healer##6491
Select _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto Darnassus 77.67,25.92 |q 2241 |zombiewalk
|only if Rogue and not hardcore
step
Enter the cave in the tree trunk |goto Darnassus 32.12,16.46 < 7 |walk
talk Syurna##4163
|tip Inside the cave.
turnin The Apple Falls##2241 |goto Darnassus 36.99,21.91
accept Destiny Calls##2242 |goto Darnassus 36.99,21.91
|only if Rogue
step
Run up the spiral path and leave the cave |complete not _G.IsIndoors() |goto Darnassus 32.12,16.46 |q 2242
|only if Rogue and subzone("Cenarion Enclave")
step
_NOTE:_
Tame a Strigid Hunter
|tip Use your "Tame Beast" ability on a Strigid Hunter.
|tip They look like grey birds around this area.
|tip This will be your permanent pet for a while.
Click Here to Continue |confirm |goto Teldrassil 45.58,40.56 |q 6103
|only if NightElf Hunter
step
Kill Gnarlpine enemies around this area
|tip You are collecting these to make your wand soon.
collect 70 Linen Cloth##2589 |goto Teldrassil 46.05,53.38 |q 6342 |future
|tip Be careful not to accidentally sell these to a vendor.
|only if Priest
step
Kill Timberling enemies around this area
|tip They look like swamp elementals.
|tip Work your way north along the water as you kill them, the next step is far north.
collect 5 Mossy Tumor##5170 |q 923/1 |goto Teldrassil 42.78,40.96
You can find more around: |notinsticky
[42.70,33.19]
[43.42,28.26]
step
destroy Moss-twined Heart##5179 |goto Teldrassil 48.08,25.10
|tip There is, unfortunately, never a good time to turn this in that is worthwhile.
|only if itemcount(5179) > 0
step
kill Lady Sathrah##7319
|tip She looks like a a grey spider that walks around this area.
|tip She can spawn in multiple locations.
collect Silvery Spinnerets##8344 |q 2518/1 |goto Teldrassil 48.08,25.10
She can also be around: |notinsticky
[47.05,27.71]
[40.82,25.18]
[38.57,26.51]
step
collect Sethir's Journal##7737 |q 2242/1 |goto Teldrassil 37.52,24.29
|tip Stealth and use your "Pickpocket" ability on Sethir the Ancient.
|tip He looks like a purple satyr that sometimes stands here, and walks out onto the huge tree branch nearby.
|tip Be careful to not attack him or be detected, he summons a group of enemies to help him fight.
|only if Rogue
step
label "Collect_Earthroot_Druid"
collect 5 Earthroot##2449 |q 6123 |future
|tip Use Herbalism to gather these as you quest in Teldrassil.
|tip Collect any herbs you come across, because you need Herbalism level 15 to be able to collect Earthroot.
|tip Earthroot nodes can be found in the areas of Teldrassil between Dolanaar and Darnassus, north and south of the road.
|tip Once you collect 5 Earthroot, you can abandon Herbalism, if you want to.
|tip Be careful not to accidentally sell these to a vendor.
|only if Druid
step
Allow Enemies to Kill You
|tip You must be close to this area.
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |complete isdead |goto Teldrassil 36.45,27.73 |q 2518
|only if not hardcore
step
talk Spirit Healer##6491
Select _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto Darnassus 77.67,25.92 |q 2518 |zombiewalk
|only if not hardcore
step
talk Mydrannul##4241
accept Nessa Shadowsong##6344 |goto Darnassus 70.68,45.38
|only if NightElf
step
talk Mydrannul##4241
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Mydrannul##4241 |goto Darnassus 70.68,45.38 |q 6344
step
talk Elanaria##4088
turnin Elanaria##1684 |goto Darnassus 57.30,34.61
accept Vorlus Vilehoof##1683 |goto Darnassus 57.30,34.61
|only if Warrior
step
Run around the mountain and follow the path up |goto Teldrassil 48.68,62.73 < 15 |only if walking
kill Vorlus Vilehoof##6128
collect Horn of Vorlus##6805 |q 1683/1 |goto Teldrassil 47.25,63.60
|only if Warrior
step
talk Elanaria##4088
turnin Vorlus Vilehoof##1683 |goto Darnassus 57.30,34.61
|only if Warrior
step
talk Ilyenia Moonfire##11866
|tip This will allow you to use staves.
Train Staves |complete weaponskill("TH_STAFF") > 0 |goto Darnassus 57.56,46.73
|only if Warrior
step
talk Ariyell Skyshadow##4203
buy Quarter Staff##854 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Ariyell Skyshadow##4203 |goto Darnassus 58.76,44.50 |q 6344
|only if Warrior and itemcount(854) == 0
step
talk Ilyenia Moonfire##11866
|tip This will allow you to use staves.
Train Staves |complete weaponskill("TH_STAFF") > 0 |goto Darnassus 57.56,46.73
|only if Hunter
step
talk Ariyell Skyshadow##4203
buy Laminated Recurve Bow##2507 |n
|tip If you can afford it.
|tip You can't use it until level 11, but you'll be level 11 soon and it will be a nice instant upgrade.
|tip If you have better, skip this step.
Visit the Vendor |vendor Ariyell Skyshadow##4203 |goto Darnassus 58.76,44.50 |q 6344
|only if Hunter and itemcount(2507) == 0
step
talk Ariyell Skyshadow##4203
buy Medium Quiver##11362 |n
|tip If you can afford it.
Visit the Vendor |vendor Ariyell Skyshadow##4203 |goto Darnassus 58.76,44.50 |q 6344
|only if Hunter and itemcount(11362) == 0
step
Run up the ramp |goto Darnassus 62.61,68.78 < 10 |only if walking
talk Turian##4235
|tip Upstairs inside the building.
buy Keen Throwing Knife##3107 |n
|tip If you can afford it.
|tip If you have better, skip this step.
|tip You will equip it after you reach level 11 soon.
Visit the Vendor |vendor Turian##4235 |goto Darnassus 62.67,65.59 |q 923
|only if Rogue
step
talk Ilyenia Moonfire##11866
|tip This will allow you to use staves.
Train Staves |complete weaponskill("TH_STAFF") > 0 |goto Darnassus 57.56,46.73
|only if Priest
step
_Note:_
Do You Need to Create a Wand?
|tip If you already have a wand, you can skip the next bunch of steps.
|tip Click the line below to select what you want to do.
Yes, Create a Wand		|confirm	|next "Create_Wand_Priest"	|or	|q 923
No, I Already Have a Wand	|confirm	|next "Skip_Wand_Priest"	|or	|q 923
|only if Priest
step
label "Create_Wand_Priest"
collect 70 Linen Cloth##2589 |q 923
|tip You are about to create your wand.
|tip If you need more Linen Cloth, try to buy some from the Auction House. |only if not selfmade
|only if Priest
step
Run up the ramp |goto Darnassus 61.25,23.27 < 10 |only if walking
talk Trianna##11050
|tip Inside the building.
Learn Tailoring |skillmax Tailoring,75 |goto Darnassus 63.55,21.21 |q 923
|only if Priest
step
Open the Tailoring Profession Window
|tip The Tailoring skill is in the General tab of your spellbook.
|tip Create 35 Bolts of Linen Cloth.
collect 35 Bolt of Linen Cloth##2996 |q 923
|only if Priest
step
talk Elynna##4168
|tip Inside the building.
buy 10 Coarse Thread##2320 |goto Darnassus 64.58,21.58 |q 923
|only if Priest
step
talk Trianna##11050
|tip Inside the building.
learn Brown Linen Robe##7623 |goto Darnassus 63.55,21.21 |q 923
|only if Priest
step
Open the Tailoring Profession Window
|tip The Tailoring skill is in the General tab of your spellbook.
|tip Create 10 Brown Linen Robes.
|tip You are about to learn Enchanting and disenchant these.
collect 10 Brown Linen Robe##6238 |q 923
|only if Priest
step
Run up the ramp |goto Darnassus 61.06,10.72 < 10 |only if walking
talk Lalina Summermoon##11070
|tip Inside the building.
Learn Enchanting |skillmax Enchanting,75 |goto Darnassus 58.79,12.74 |q 923
|only if Priest
step
Disenchant the Brown Linen Robes
|tip Use the "Disenchant" ability in the General tab of your spellbook.
|tip If you don't get one of these items from disenchanting, talk to Thaddeus Webb here and try to buy it.
|tip They are limited supply items, so it may not be available to buy.
|tip You can also try to buy it from the Auction House. |only if not selfmade
collect Strange Dust##10940 |goto Darnassus 58.57,14.72 |q 923
collect 2 Lesser Magic Essence##10938 |goto Darnassus 58.57,14.72 |q 923
|only if Priest
step
talk Vaean##4228
|tip Inside the building.
buy Copper Rod##6217 |goto Darnassus 58.57,14.72 |q 923
buy Simple Wood##4470 |goto Darnassus 58.57,14.72 |q 923
|only if Priest
step
Open the Enchanting Profession Window
|tip The Enchanting skill is in the General tab of your spellbook.
|tip Create 1 Runed Copper Rod.
collect Runed Copper Rod##6218 |q 923
|only if Priest
step
talk Lalina Summermoon##11070
|tip Inside the building.
|tip This should be available with 10 Enchanting.
learn Lesser Magic Wand##14293 |goto Darnassus 58.79,12.74 |q 923
|only if Priest
step
Open the Enchanting Profession Window
|tip The Enchanting skill is in the General tab of your spellbook.
|tip Create 1 Lesser Magic Wand.
collect Lesser Magic Wand##11287 |q 923
|only if Priest
step
label "Skip_Wand_Priest"
talk Rellian Greenspyre##3517
turnin Tumors##923 |goto Darnassus 38.19,21.64
step
talk Jocaste##4146 |only if Hunter
talk Syurna##4163 |only if Rogue
talk Sildanair##4089 |only if Warrior
talk Denatharion##4218 |only if Druid
talk Jandria##4091 |only if Priest
trainer Jocaste##4146 |goto Darnassus/0 40.40,8.58 |only if Hunter |q 935
trainer Sildanair##4089 |goto Darnassus/0 61.78,42.28 |only if Warrior |q 935
trainer Syurna##4163 |goto Darnassus/0 36.97,21.86 |only if Rogue |q 935
trainer Denatharion##4218  |goto Darnassus/0 34.74,7.43 |only if Druid |q 935
trainer Jandria##4091 |goto Darnassus/0 37.91,82.80 |only if Priest |q 935
|tip In the basement of the tree. |only if Rogue
|tip Train your spells.
step
Enter the cave in the tree trunk |goto Darnassus 32.12,16.46 < 7 |walk
talk Syurna##4163
|tip Inside the cave.
turnin Destiny Calls##2242 |goto Darnassus 36.99,21.91
|only if Rogue
step
Run up the spiral path and leave the cave |complete not _G.IsIndoors() |goto Darnassus 32.12,16.46 |q 935
|only if Rogue and subzone("Cenarion Enclave")
step
Run up the ramp |goto Darnassus 39.62,16.40 < 10 |only if walking
talk Jocaste##4146
|tip Inside the building.
turnin Training the Beast##6103 |goto Darnassus 40.38,8.55
|only if NightElf Hunter
step
_NOTE:_
You Can Now Train Your Pet
|tip Learn pet abilities from Pet Trainers.
|tip Use your "Beast Training" ability to teach your pet abilities.
|tip Make sure you feed your owl as soon as possible so it doesn't run away!!
Click Here to Continue |confirm |q 6344
|only if NightElf Hunter
step
Enter the building |goto Darnassus 35.46,10.59 < 10 |walk 
talk Arch Druid Fandral Staghelm##3516
|tip He walks around inside the building, at the top.
turnin Crown of the Earth##935 |goto Darnassus 34.80,9.24
step
Cross the bridge |goto Darnassus 38.59,48.02 < 20 |only if walking
Enter the building |goto Darnassus 39.02,76.78 < 10 |walk
talk Priestess A'moora##7313
|tip Upstairs inside the building.
turnin Tears of the Moon##2518 |goto Darnassus 36.64,85.93
accept Sathrah's Sacrifice##2520 |goto Darnassus 36.64,85.93
step
talk Priestess Alathea##11401
|tip Upstairs inside the building.
turnin Returning Home##5629 |goto Darnassus 39.53,81.18
accept Stars of Elune##5627 |goto Darnassus 39.53,81.18 |instant
|only if NightElf Priest
step
use Sathrah's Sacrifice##8155
|tip Inside the building.
Offer the Sacrifice at the Fountain |q 2520/1 |goto Darnassus 39.21,84.57
step
talk Priestess A'moora##7313
|tip Upstairs inside the building.
turnin Sathrah's Sacrifice##2520 |goto Darnassus 36.64,85.93
step
map Darnassus
path	62.60,56.00	68.60,57.80	66.80,64.60	64.20,70.60	60.20,66.80
path	61.80,60.20
talk Jaeana ##4169
|tip Walking around this area.
buy Tough Jerky##117 |n
|tip Buy up to 20, whatever you have money and bag space for if you weren't able to get many spare Spider Legs.
|tip This will be used to feed your permanent pet and keep it Happy, so it deals more damage and gains Loyalty faster.
|tip By keeping your pet Happy and ranking up its Loyalty, it won't run away and abandon you, and will need food less often to stay Happy.
Visit the Vendor |vendor Jaeana ##4169 |q 433 |future
|only if Hunter
step
talk Nessa Shadowsong##10118
turnin Nessa Shadowsong##6344 |goto Teldrassil 56.25,92.43
accept The Bounty of Teldrassil##6341 |goto Teldrassil 56.25,92.43
|only if NightElf
step
talk Vesprystus##3838
turnin The Bounty of Teldrassil##6341 |goto Teldrassil 58.40,94.01
accept Flight to Auberdine##6342 |goto Teldrassil 58.40,94.01
|only if NightElf
step
talk Laird##4200 |goto 36.8,44.3
turnin Flight to Auberdine##6342 
accept Return to Nessa##6343
fly back to Darnassus
step
talk Nessa Shadowsong##10118
turnin Return to Nessa##6343
step
fly back to darkshore
]]
)
