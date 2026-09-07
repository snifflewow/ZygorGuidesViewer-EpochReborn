local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Feralas (45-48)',
  {
    next = 'Leveling Guides\\Tanaris (48-49)',
  },
  [[
step
Optional Route Change
.tip You can opt to do Zul'Farrak around level 47 instead of grinding.
.tip This will mean slower leveling but it will be more fun and potentially give you gear upgrades.
.tip If you choose to do Zul'Farrak, we will say when to accept and turnin dungeon quests that are worth doing in your route.
.tip We will also say when it is a good time to do the dungeon.
NOTE:
.tip This feature is currently experimental and may result in a full quest log. If this happens, please submit a feedback report so we can fix it!
.tip If you have a full quest log, we recommend abandoning any dungeon quests that can be shared by your party members later.
Click Here if you'd like to run Zul'Farrak later |confirm ZFflag
Click Here if you'd prefer to grind |confirm
step
talk Curgle Cranklehop##7763
accept Handle With Care##3022 |goto Tanaris 52.35,26.91
step
Enter the building |goto Tanaris,52.21,28.57,10 |walk
talk Gimblethorn##7799
.tip Inside the building.
.tip Collect these items from the bank.
collect Yeh'kinya's Bramble##10699 |goto Tanaris 52.30,28.91 |q 3520
step
talk Gimblethorn##7799
.tip Inside the building.
.tip Deposit these items into the bank.
bank Fool's Stout Report##5807 |goto Tanaris 52.30,28.91 |q 1122 |future
step
talk Pratt McGrubben##7852
accept The Mark of Quality##2821 |goto Feralas 30.63,42.71
step
talk Innkeeper Shyria##7736
.tip Inside the building.
home Feathermoon Stronghold |goto Feralas 30.97,43.49
step
Enter the building |goto Feralas,30.77,45.23,15 |walk
talk Latronicus Moonspear##7877
.tip Inside the building.
accept The Missing Courier##4124 |goto Feralas 30.38,46.17
step
talk Shandris Feathermoon##3936
.tip Inside the building.
accept The Ruins of Solarsal##2866 |goto Feralas 30.28,46.17
step
talk Troyas Moonbreeze##7764
.tip Inside the building.
accept In Search of Knowledge##2939 |goto Feralas 31.78,45.50
step
talk Angelas Moonbreeze##7900
.tip Inside the building.
accept The High Wilderness##2982 |goto Feralas 31.83,45.61
step
talk Ginro Hearthkindle##7880
.tip Upstairs inside the building.
turnin The Missing Courier##4124 |goto Feralas 31.86,45.13
accept The Missing Courier##4125 |goto Feralas 31.86,45.13
step
click Solarsal Gazebo##142179
.tip You have to be standing inside of it to be able to click it.
turnin The Ruins of Solarsal##2866 |goto Feralas 26.32,52.34
accept Return to Feathermoon Stronghold##2867 |goto Feralas 26.32,52.34
step
talk Shandris Feathermoon##3936
.tip Inside the building.
turnin Return to Feathermoon Stronghold##2867 |goto Feralas 30.28,46.17
accept Against the Hatecrest##3130 |goto Feralas 30.28,46.17
step
talk Latronicus Moonspear##7877
.tip Inside the building.
turnin Against the Hatecrest##3130 |goto Feralas 30.38,46.17
accept Against the Hatecrest##2869 |goto Feralas 30.38,46.17
step
Kill Hatecrest enemies around this area
.tip Hatecrest Screamers's may heal during fighting.	|only if hardcore
.tip Hatecrest Sirens are ranged attackers.		|only if hardcore
.tip Enemies may run away in fear at low health here.	|only if hardcore
collect 10 Hatecrest Naga Scale##9247 |q 2869/1 |goto Feralas 28.66,53.05
You can find more around [26.21,51.95]
step
talk Latronicus Moonspear##7877
.tip Inside the building.
turnin Against the Hatecrest##2869 |goto Feralas 30.38,46.17
accept Against Lord Shalzaru##2870 |goto Feralas 30.38,46.17
step
talk Faralorn##7942
.tip Inside the building.
.tip Buy enough ammo to fill your ammo bag, plus 15-20 extra stacks.
.tip You have a long grind soon.
Visit the Vendor |vendor Faralorn##7942 |goto Feralas 30.65,43.43 |q 2870
|only if Hunter
step
NOTE:
Incoming Cave Step
.tip The cave you're about to be sent into has inconsistent spawn rates.
.tip Over all it's pretty dangerous.
.tip The quest is optional.
.tip If you do skip you will need to grind 6,800 xp.
Click Here to Continue |confirm |q 2870 |future
|only if hardcore
step
Follow the path |goto Feralas,25.48,64.99,20 |only if walking
Enter the cave |goto Feralas,26.09,67.26,20 |walk
kill Lord Shalzaru##8136
.tip Inside the cave.
.tip This cave is dangerous. |only if hardcore
.tip It's easy to be overwhelmed by patrolling or casting enemies. |only if hardcore
.tip Be mindful while you progress through the cave. |only if hardcore
.tip If you have trouble, try to find someone to help you.
collect Mysterious Relic##9248 |q 2870/1 |goto Feralas 28.49,70.45
stickystart "Accept_Find_OOX_22"
step
Leave the cave |goto Feralas,26.09,67.26,20 |walk |only if subzone("Shalzaru's Lair")
Kill enemies around this area
.tip You will need to go to higher level zones soon, and there's not enough quests to get you to a high enough level.
.tip We are grinding for a while now, to reduce the amount you have to grind all at once later.
.tip If you prefer, you can run dungeons until you reach level 46.
ding 46 |goto Feralas 26.39,54.22
You can buy arrows at [30.65,43.43]				|only if Hunter
|only if hardcore
step
NOTE:
During the Next Step
.tip You will be swimming to a sunken boat on the shore on the other side of the water.
.tip You will get fatigued while swimming and may get very close to dying, if you're not careful.
.tip If you want to be safer while swimming, look at your world map and only swim in the sections of water with lines in it.
.tip Doing this will prevent fatigue, or greatly reduce the amount you experience, making the swim much safer.
Click to Continue |confirm |q 4125
|only if hardcore
step
Leave the cave |goto Feralas,26.09,67.26,20 |walk |only if subzone("Shalzaru's Lair")
click Wrecked Row Boat##164909
.tip Underwater.
.tip You can ride the boat and follow the coast or swim across. |only if hardcore
.tip Swimming across takes you through a fatigue zone which can be dangerous. |only if hardcore
.tip Use a healing potion when you're low health from the Fatigue from swimming across.
.tip You will make it out of the Fatigue zone shortly after.
.tip Be careful of the elementals and giants near the boat. |only if hardcore
.tip You will be hearthing back to Feathermoon Stronghold after this step is finished.
turnin The Missing Courier##4125 |goto Feralas 45.45,64.97
accept Boat Wreckage##4127 |goto Feralas 45.45,64.97
step
talk Faralorn##7942
.tip Inside the building.
.tip Buy enough ammo to fill your ammo bag, plus 6-8 extra stacks.
.tip You will be questing a while.
Visit the Vendor |vendor Faralorn##7942 |goto Feralas 30.65,43.43 |q 2870
|only if Hunter
step
talk Ginro Hearthkindle##7880
.tip Upstairs inside the building.
turnin Boat Wreckage##4127 |goto Feralas 31.86,45.13
accept The Knife Revealed##4129 |goto Feralas 31.86,45.13
step
Enter the building |goto Feralas,30.77,45.23,15 |walk
talk Latronicus Moonspear##7877
.tip Inside the building.
turnin Against Lord Shalzaru##2870 |goto Feralas 30.38,46.17
accept Delivering the Relic##2871 |goto Feralas 30.38,46.17
step
talk Vestia Moonspear##7878
.tip Inside the building.
turnin Delivering the Relic##2871 |goto Feralas 30.08,45.06
step
Enter the building |goto Feralas,32.34,43.69,10 |walk
talk Quintis Jonespyre##7879
.tip Upstairs inside the building.
turnin The Knife Revealed##4129 |goto Feralas 32.45,43.79
step
Watch the dialogue
talk Quintis Jonespyre##7879
.tip Upstairs inside the building.
accept Psychometric Reading##4130 |goto Feralas 32.45,43.79
step
talk Ginro Hearthkindle##7880
.tip Upstairs inside the building.
turnin Psychometric Reading##4130 |goto Feralas 31.86,45.13
accept The Woodpaw Gnolls##4131 |goto Feralas 31.86,45.13
step
Run onto the dock and ride the boat or swim across the water |goto Feralas,31.03,39.92,40 |only if walking and subzone("Feathermoon Stronghold")
Kill Screecher enemies around this area
.tip Vale Screechers and Rogue Vale Screechers will count for the quest.
.tip They look like thin flying dragons.
use Yeh'kinya's Bramble##10699
.tip Use it on their corpses.
talk Screecher Spirit##8612+
.tip They appear after using Yeh'kinya's Bramble on the corpses.
Collect #3# Screecher Spirits |q 3520/1 |goto Feralas 46.26,40.14
You can find more around: |notinsticky
[45.86,37.59]
[44.46,36.19]
[42.49,36.47]
stickystart "Collect_Thick_Yeti_Hides"
step
use the OOX-22/FE Distress Beacon##8705
accept Find OOX-22/FE!##2766 |goto Feralas 53.35,55.70
|only if itemcount(8705) == 1
step
Follow the path up |goto Feralas,47.11,44.49,30 |only if walking and subzone("The Forgotten Coast")
Run through the tunnel |goto Feralas,55.15,56.36,15 |only if walking
talk Homing Robot OOX-22/FE##7807
.tip This NPC offers an escort quest.
.tip If it's not here, someone may be escorting it.
.tip Wait until it respawns.
turnin Find OOX-22/FE!##2766 |goto Feralas 53.35,55.70
.tip You will complete the escort quest later when you're higher level, to make it easier.
step
label "Collect_Thick_Yeti_Hides"
Kill Feral Scar enemies around this area
.tip They look like yetis.
.tip Watch for patrols and respawns while here.	|only if hardcore
collect 10 Thick Yeti Hide##8973 |q 2821/1 |goto Feralas 56.20,57.02
You can find more through the tunnel at [55.14,56.36]
stickystart "Collect_Ironfur_Livers"
stickystart "Collect_Groddoc_Livers"
step
Follow the path up |goto Feralas,54.10,68.24,40 |only if walking and not subzone("Frayfeather Highlands")
click Hippogryph Egg##141931
.tip They are found in nests on the hill.
collect Hippogryph Egg##8564 |goto Feralas 56.66,75.90 |q 2741 |future
.tip You will use this for a future quest.
.tip Be careful not to accidentally sell this to a vendor.
You can find more around: |notinsticky
[58.49,76.10]
[57.99,76.30]
[58.27,76.72]
[57.30,77.37]
[57.02,78.21]
stickystart "Kill_Gordunni_Warlocks"
step
kill 8 Gordunni Shaman##5236 |q 2982/2 |goto Feralas 59.67,66.85
.tip They share spawn points with the other ogres, so kill those too, if you can't find any.
.tip Prioritize these where possible. You can find Warlocks and Brutes up north.
.tip Watch for patrols and respawn while in the area.	|only if hardcore
stickystart "Kill_Gordunni_Brutes"
step
label "Kill_Gordunni_Warlocks"
kill 8 Gordunni Warlock##5240 |q 2982/1 |goto Feralas 59.22,64.15
.tip Watch for patrols and respawn while in the area.	|only if hardcore |notinsticky
You can find more around [61.03,55.64]
step
label "Kill_Gordunni_Brutes"
kill 8 Gordunni Brute##5232 |q 2982/3 |goto Feralas 61.00,55.61
.tip Watch for patrols and respawn while in the area.	|only if hardcore |notinsticky
You can find more around [59.28,63.51]
step
label "Collect_Ironfur_Livers"
kill Ironfur Bear##5268+
.tip They look like bears.
collect 3 Ironfur Liver##6258 |q 1452/2 |goto Feralas 60.27,60.56
You can find more around: |notinsticky
[58.52,60.59]
[57.74,56.51]
step
label "Collect_Groddoc_Livers"
kill Groddoc Ape##5260+
.tip They look like gorillas.
.tip They share spawn points with Ironfur Bears, so kill those too, if you can't find any.
collect 3 Groddoc Liver##6259 |q 1452/3 |goto Feralas 60.27,60.56
You can find more around: |notinsticky
[58.52,60.59]
[57.74,56.51]
step
Prepare for Zul'Farrak
.tip It will be a good time to start Zul'Farrak soon.
.tip You should run it after the next few quests, roughly 30 minutes.
.tip Start looking for a group.
|confirm
|only if guideflag("ZFflag")
step
Cross the bridge and follow the road |goto Feralas,63.40,52.43,20 |only if walking and not subzone("Grimtotem Compound")
Kill enemies around this area
.tip Clear the area around the large cage, to make the next step easier.
Click Here After You Clear the Enemies |confirm |goto Feralas 66.69,46.57 |q 2969 |future
step
Follow the path up |goto Feralas,65.66,46.77,10 |only if walking
talk Kindal Moonweaver##7956
accept Freedom for All Creatures##2969 |goto Feralas 65.94,45.65
step
click Cage Door
.tip Follow the Captured Sprite Darters and protect them.
.tip You have to make sure at least 6 of them survive.
.tip HURRY!  You must complete the quest and turn it in before the timer ends.
.tip Watch for patrols and respawn while in the area.	|only if hardcore
Save at Least 6 Sprite Darters from Capture |q 2969/1 |goto Feralas 66.67,46.75
step
Follow the path up |goto Feralas,65.66,46.77,10 |only if walking
talk Kindal Moonweaver##7956
.tip HURRY!  You must turn it in before the timer ends.
.tip If you're very quick, she may need a moment to respawn. Don't panic.
turnin Freedom for All Creatures##2969 |goto Feralas 65.94,45.65
step
talk Jer'kai Moonweaver##7957
accept Doling Justice##2970 |goto Feralas 65.95,45.61
stickystart "Kill_Grimtotem_Raiders"
stickystart "Kill_Grimtotem_Naturalists"
step
kill 6 Grimtotem Shaman##7727 |q 2970/3 |goto Feralas 66.89,46.43
.tip Watch for patrols and respawn while in the area.	|only if hardcore |notinsticky
.tip Grimtotem Shaman may heal when at low health.	|only if hardcore |notinsticky
.tip Enemies may run away in fear at low health.	|only if hardcore |notinsticky
You can find more: |notinsticky
Around [68.71,47.04]
Around [69.59,39.44]
Up the path at [68.26,39.25]
step
label "Kill_Grimtotem_Raiders"
kill 10 Grimtotem Raider##7725 |q 2970/2 |goto Feralas 66.89,46.43
.tip Watch for patrols and respawn while in the area.	|only if hardcore |notinsticky
.tip Grimtotem Shaman may heal when at low health.	|only if hardcore |notinsticky
.tip Enemies may run away in fear at low health.	|only if hardcore |notinsticky
You can find more: |notinsticky
Around [68.71,47.04]
Around [69.59,39.44]
Up the path at [68.26,39.25]
step
label "Kill_Grimtotem_Naturalists"
kill 12 Grimtotem Naturalist##7726 |q 2970/1 |goto Feralas 66.89,46.43
.tip Watch for patrols and respawn while in the area.	|only if hardcore |notinsticky
.tip Grimtotem Shaman may heal when at low health.	|only if hardcore |notinsticky
.tip Enemies may run away in fear at low health.	|only if hardcore |notinsticky
You can find more: |notinsticky
Around [68.71,47.04]
Around [69.59,39.44]
Up the path at [68.26,39.25]
step
Follow the path up |goto Feralas,65.66,46.77,10 |only if walking
talk Jer'kai Moonweaver##7957
turnin Doling Justice##2970 |goto Feralas 65.95,45.61
accept Doling Justice##2972 |goto Feralas 65.95,45.61
step
click Large Leather Backpacks##164953
.tip Clear Woodpaw enemies around the area before attempting to gather.	|only if hardcore
turnin The Woodpaw Gnolls##4131 |goto Feralas 73.31,56.31
accept The Writhing Deep##4135 |goto Feralas 73.31,56.31
step
use the Undelivered Parcel##11463
accept Thalanaar Delivery##4281
step
NOTE:
Incoming Cave Step
.tip The next step has you traveling into a cave with enemies that run away in fear quickly when at low health.
.tip Zukk'ash Stingers patrol the tunnels and may deal heavy damage upon death.
.tip Enemies also have larger than normal aggro radius, so it may require careful navigation as well.
.tip Not completing the quest will make it impossible to complete a few other quests in the guide.
.tip It will also end up making you need to grind 13,560 xp to catch up.
Click Here to Continue |confirm |q 4265 |future
|only if hardcore
step
Follow the path up |goto Feralas,72.11,62.68,40 |only if walking
Enter the cave at the bottom of the path |goto Feralas,73.17,63.88,7 |walk
Follow the path down |goto Feralas,72.69,64.56,7 |walk
click Zukk'ash Pod##164954
.tip Inside the cave.
.tip Watch for patrols and respawns while in the area.			|only if hardcore
.tip Enemies may run away in fear at low health.			|only if hardcore
.tip Zukk'ash Stingers deal heavy damage when they are about to die.	|only if hardcore
turnin The Writhing Deep##4135 |goto Feralas 72.08,63.75
accept Freed from the Hive##4265 |goto Feralas 72.08,63.75
step
Watch the dialogue
.tip Inside the cave.
.tip Watch for patrols and respawns while in the area.			|only if hardcore
.tip Enemies may run away in fear at low health.			|only if hardcore
.tip Zukk'ash Stingers deal heavy damage when they are about to die.	|only if hardcore
Free Raschal |q 4265/1 |goto Feralas 72.08,63.81
step
talk Faralorn##7942
.tip Inside the building.
.tip Buy enough ammo to fill your ammo bag, plus 10-12 extra stacks.
.tip You have a longer grind coming up soon.
Visit the Vendor |vendor Faralorn##7942 |goto Feralas 30.65,43.43 |q 2821
|only if Hunter
step
talk Pratt McGrubben##7852
turnin The Mark of Quality##2821 |goto Feralas 30.63,42.71
step
talk Angelas Moonbreeze##7900
.tip Inside the building.
turnin The High Wilderness##2982 |goto Feralas 31.83,45.61
accept The Sunken Temple##3445 |goto Feralas 31.83,45.61
step
talk Ginro Hearthkindle##7880
.tip Upstairs inside the building.
turnin Freed from the Hive##4265 |goto Feralas 31.86,45.13
accept A Hero's Welcome##4266 |goto Feralas 31.86,45.13
step
Enter the building |goto Feralas,30.76,45.23,15 |walk
talk Shandris Feathermoon##3936
.tip Inside the building.
turnin A Hero's Welcome##4266 |goto Feralas 30.28,46.17
accept Rise of the Silithid##4267 |goto Feralas 30.28,46.17
step
talk Yeh'kinya##8579
turnin Screecher Spirits##3520 |goto Tanaris 66.98,22.36
accept The Prophecy of Mosh'aru##3527 |goto Tanaris 66.98,22.36
|only if guideflag("ZFflag")
step
talk Chief Engineer Bilgewhizzle##7407
accept Divino-matic Rod##2768 |goto Tanaris 52.46,28.51
|only if guideflag("ZFflag")
step
talk Tran'rek##7876
accept Scarab Shells##2865 |goto Tanaris 51.57,26.76
|only if guideflag("ZFflag")
step
talk Trenton Lighthammer##7804
accept Troll Temper##3042 |goto Tanaris 51.42,28.75
|only if guideflag("ZFflag")
step
Enter the Zul'Farrak Dungeon with Your Group |goto Zul'Farrak/0,0.00,0.00,555 |c |q 3042
|only if guideflag("ZFflag")
stickystart "Collect_5_Uncracked_Scarab_Shell"
stickystart "Collect_20_Troll_Temper"
step
Inside the Zul'Farrak Dungeon:
kill Theka the Martyr##7272
.tip He is the second boss of the dungeon.
.tip Follow the path north and then go right when the path splits.
.tip Quickly go left afterwards and then north.
collect First Mosh'aru Tablet##10660 |q 3527/1
|only if guideflag("ZFflag")
step
label "Collect_Divino-matic_Rod"
Inside the Zul'Farrak Dungeon: |notinsticky
kill Sergeant Bly##7604
.tip He will be killable after you release them from captivity and clear the temple event.
collect Divino-matic Rod##8548 |q 2768/1
|only if guideflag("ZFflag")
step
Inside the Zul'Farrak Dungeon:
kill Hydromancer Velratha##7795
.tip Follow the path southeast to reach the large room with a pool in the center.
.tip She walks around this area.
collect Tiara of the Deep##9234 |q 2846/1 |only if haveq(2846)
collect Second Mosh'aru Tablet##10661 |q 3527/2
|only if guideflag("ZFflag")
step
Inside the Zul'Farrak Dungeon:
use the Mallet of Zul'Farrak##9240
.tip Clear the room.
.tip Use it near the gong atop the pool of water.
kill Gahz'rilla##7273
collect Gahz'rilla's Electrified Scale##8707 |q 2770/1
|only if guideflag("ZFflag") and haveq(2770)
step
label "Collect_5_Uncracked_Scarab_Shell"
Inside the Zul'Farrak Dungeon: |notinsticky
kill Scarab##7269+
.tip They are found all around the instance, but mostly in the scarab room with Theka the Martyr.
collect 5 Uncracked Scarab Shell##9238 |q 2865/1
|only if guideflag("ZFflag")
step
label "Collect_20_Troll_Temper"
Inside the Zul'Farrak Dungeon: |notinsticky
Kill enemies around this area
.tip These drop from troll enemies inside of Zul'Farrak.
.tip It will likely take multiple runs to complete.
collect 20 Troll Temper##9523 |q 3042/1
|only if guideflag("ZFflag")
step
Leave the Zul'Farak Dungeon
Click Here to Continue |confirm |q 3042
|only if guideflag("ZFflag")
step
talk Yeh'kinya##8579
turnin The Prophecy of Mosh'aru##3527 |goto Tanaris 66.98,22.36
|only if guideflag("ZFflag")
step
talk Chief Engineer Bilgewhizzle##7407
turnin Divino-matic Rod##2768 |goto Tanaris 52.46,28.51
|only if guideflag("ZFflag")
step
talk Tran'rek##7876
turnin Scarab Shells##2865 |goto Tanaris 51.57,26.76
|only if guideflag("ZFflag")
step
talk Trenton Lighthammer##7804
turnin Troll Temper##3042 |goto Tanaris 51.42,28.75
|only if guideflag("ZFflag")
step
talk Wizzle Brassbolts##4453
turnin Gahz'rilla##2770 |goto Thousand Needles 78.14,77.11
|only if guideflag("ZFflag") and readyq(2770)
step
Kill enemies around this area
.tip Inside and outside the cave.
.tip You will need to go to higher level zones soon, and there's not enough quests to get you to a high enough level.
.tip We are grinding for a while now, to reduce the amount you have to grind all at once later.
.tip If you prefer, you can run dungeons until you reach level 47.
.tip You are about to take a long flight to Darnassus, so grinding now is also to make sure your hearthstone is available to use to return quickly to Feralas afterward.
ding 47 |goto Feralas 26.09,67.26
You can buy arrows at [30.65,43.43]				|only if Hunter
|only if not hardcore
step
Kill enemies around this area
.tip You will need to go to higher level zones soon, and there's not enough quests to get you to a high enough level.
.tip We are grinding for a while now, to reduce the amount you have to grind all at once later.
.tip If you prefer, you can run dungeons until you reach level 47.
ding 47 |goto Feralas 26.39,54.22
You can buy arrows at [30.65,43.43]				|only if Hunter
|only if hardcore
step
label "Accept_Find_OOX_22"
Kill enemies around this area |notinsticky
collect OOX-22/FE Distress Beacon##8705 |n
.tip Any enemy in Feralas can drop this item.
use the OOX-22/FE Distress Beacon##8705
accept Find OOX-22/FE!##2766 |goto Feralas 26.39,54.22
|only if not guideflag("ZFflag")
step
NOTE:
Run Back to Feathermoon Stronghold
.tip Do NOT use your hearthstone to return to Feathermoon Stronghold.
.tip You are about to take a long flight to Darnassus, so you'll want to make sure your hearthstone is available to use to return quickly to Feralas afterward.
.tip If you reached level 47 and your hearthstone is still not ready to be used, continue grinding until it's ready.
.tip You have another very long grind when you return from Darnassus, but it is the last long grind you will have to do.
Click Here to Continue |confirm |q 4267
|only if not guideflag("ZFflag")
step
talk Faralorn##7942
.tip Inside the building.
.tip Buy enough ammo to fill your ammo bag, plus 18-20 extra stacks.
.tip You have a long grind coming up soon.
Visit the Vendor |vendor Faralorn##7942 |goto Feralas 30.65,43.43 |q 4267
|only if Hunter
step
talk Erelas Ambersky##7916
.tip Inside the building.
turnin Handle With Care##3022 |goto Teldrassil 55.50,92.05
accept Favored of Elune?##3661 |goto Teldrassil 55.50,92.05
step
talk Daryn Lightwind##7907
.tip Upstairs inside the building.
turnin In Search of Knowledge##2939 |goto Teldrassil 55.41,92.23
step
click Feralas: A History
.tip Upstairs inside the building.
accept Feralas: A History##2940 |goto Teldrassil 55.22,91.46
step
talk Daryn Lightwind##7907
.tip Upstairs inside the building.
turnin Feralas: A History##2940 |goto Teldrassil 55.41,92.23
accept The Borrower##2941 |goto Teldrassil 55.41,92.23
step
talk Kyrai##3561
.tip Upstairs inside the building.
.tip Stock up on poisons.
.tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Kyrai##3561 |goto Darnassus 32.55,19.74 |q 4267
|only if Rogue
step
talk Garryeth##4209
.tip Deposit these items into the bank.
bank A Short Note##9329 |goto Darnassus 39.60,41.98 |q 2941 |future
bank Yeh'kinya's Bramble##10699 |goto Darnassus 39.60,41.98 |q 3520 |future
bank Hippogryph Egg##8564 |goto Darnassus 39.60,41.98 |q 2741 |future
bank Ironfur Liver##6258 |goto Darnassus 39.60,41.98 |q 1452 |future
.tip You should have 3 of these.
bank Groddoc Liver##6259 |goto Darnassus 39.60,41.98 |q 1452 |future
.tip You should have 3 of these.
step
Cross the bridge |goto Darnassus,38.60,48.01,30 |only if walking
Enter the building |goto Darnassus,39.06,77.04,15 |walk
Run up the ramp |goto Darnassus,40.46,91.67,10 |walk
talk Gracina Spiritmight##7740
.tip Upstairs inside the building.
turnin Rise of the Silithid##4267 |goto Darnassus 41.85,85.62
step
talk Tyrande Whisperwind##7999
.tip Upstairs inside the building.
turnin Doling Justice##2972 |goto Darnassus 39.10,81.59
step
talk Jocaste##4146 |only if Hunter
talk Syurna##4163 |only if Rogue
talk Sildanair##4089 |only if Warrior
talk Denatharion##4218 |only if Druid
talk Jandria##4091 |only if Priest
trainer Jocaste##4146 |goto Darnassus/0 40.40,8.58 |only if Hunter |q 1452 |future
trainer Sildanair##4089 |goto Darnassus/0 61.78,42.28 |only if Warrior |q 1452 |future
trainer Syurna##4163 |goto Darnassus/0 36.97,21.86 |only if Rogue |q 1452 |future
trainer Denatharion##4218  |goto Darnassus/0 34.74,7.43 |only if Druid |q 1452 |future
trainer Jandria##4091 |goto Darnassus/0 37.91,82.80 |only if Priest |q 1452 |future
.tip In the basement of the tree. |only if Rogue
.tip Train your spells.
step
Kill enemies around this area
.tip Inside and outside the cave.
.tip You will need to go to higher level zones soon, and there's not enough quests to get you to a high enough level.
.tip We are grinding a lot now to get you to a good level to continue questing the rest of the way to 60.
.tip If you prefer, you can run dungeons.
.tip This is the last very long grind you have to do.
ding 48 |goto Feralas 26.09,67.26				|only if level < 48
ding 48,68000 |goto Feralas 26.09,67.26
You can buy arrows at [30.65,43.43]				|only if Hunter
|only if not hardcore
step
Kill enemies around this area
.tip You will need to go to higher level zones soon, and there's not enough quests to get you to a high enough level.
.tip We are grinding a lot now to get you to a good level to continue questing the rest of the way to 60.
.tip If you prefer, you can run dungeons.
.tip This is the last very long grind you have to do.
ding 48,68000 |goto Feralas 26.39,54.22
You can buy arrows at [30.65,43.43]				|only if Hunter
|only if hardcore
step
talk Falfindel Waywarder##4048
turnin Thalanaar Delivery##4281 |goto Feralas 89.64,46.57
]]
)
