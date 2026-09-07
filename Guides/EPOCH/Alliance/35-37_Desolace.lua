local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Desolace (35-37)',
  {
    image = ZGV.IMAGESDIR .. 'Desolace',
    condition_suggested = function()
      return level >= 35 and level <= 37 and not completedq(1187)
    end,
    next = 'Leveling Guides\\Stranglethorn Vale (37-38)',
    hardcore = true,
  },
  [[
step
talk Fahran Silentblade##3969
|tip Inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Fahran Silentblade##3969 |goto Ashenvale 36.49,49.46 |q 1453
|only if Rogue
step
talk Innkeeper Lyshaerya##11103
|tip Inside the building.
home Nijel's Point |goto Desolace 66.27,6.56
step
talk Brother Anton##1182
|tip Inside the building.
accept Down the Scarlet Path##261 |goto Desolace 66.52,7.91
step
talk Kreldig Ungor##5638
turnin Reclaimers' Business in Desolace##1453 |goto Desolace 66.20,9.63
accept The Karnitol Shipwreck##1454 |goto Desolace 66.20,9.63
accept Reagents for Reclaimers Inc.##1458 |goto Desolace 66.20,9.63
step
talk Captain Pentigast##5396
accept Strange Alliance##1382 |goto Desolace 66.66,10.93
step
talk Corporal Melkins##5752
accept Centaur Bounty##1387 |goto Desolace 66.74,10.87
step
talk Vahlarriel Demonslayer##5642
accept Vahlarriel's Search##1437 |goto Desolace 66.44,11.82
step
Follow the path west |goto Desolace 36.3,45.4 < 20 |walk
talk Mannoroc Warden##46091
accept Remnants of the Nether##27258 |goto Desolace 36.3,45.4
accept Wanted: Wilfiz Silverbit##27265 |goto Desolace 36.3,45.4
|tip Both quests are in the Mannoroc Coven area. Wilfiz is found north of the coven.
step
collect 10 Remnants of the Nether##63126 |q 27258/1 |goto Desolace 36.3,45.4
|tip These drop from demons in Mannoroc Coven.
|tip You can collect them while doing other quests in this area.
step
kill Wilfiz Silverbit##46097 |q 27265/1 |goto Desolace 51.3,68.6
|tip He's found north of Mannoroc Coven.
stickystart "Collect_Hatefury_Horns"
step
Follow the path down |goto Desolace 67.05,13.04 < 20 |only if walking and subzone("Nijel's Point")
Kill Hatefury enemies around this area
collect 10 Hatefury Claw##6246 |q 1458/1 |goto Desolace 75.60,23.34
|tip Hatefury Rogues will pop in and out of stealth periodically. |only if hardcore |notinsticky
You can find more around: |notinsticky
[79.65,19.76]
[77.19,15.26]
[72.61,18.28]
step
label "Collect_Hatefury_Horns"
Kill Hatefury enemies around this area |notinsticky
collect 10 Hatefury Horn##6247 |q 1458/2 |goto Desolace 75.60,23.34
|tip Hatefury Rogues will pop in and out of stealth periodically. |only if hardcore |notinsticky
You can find more around: |notinsticky
[79.65,19.76]
[77.19,15.26]
[72.61,18.28]
step
Kill enemies around this area
|tip Getting this far into level 35 will allow you to reach level 36 after turning in quests soon.
|tip Hatefury Rogues will pop in and out of stealth periodically. |only if hardcore |notinsticky
ding 35,64500 |goto Desolace 75.60,23.34
You can find more around: |notinsticky
[79.65,19.76]
[77.19,15.26]
[72.61,18.28]
step
Follow the path up into Nijel's Point |goto Desolace 67.43,15.57 < 20 |only if walking
talk Kreldig Ungor##5638
turnin Reagents for Reclaimers Inc.##1458 |goto Desolace 66.20,9.63
accept Reagents for Reclaimers Inc.##1459 |goto Desolace 66.20,9.63
stickystart "Collect_Aged_Kodo_Hides"
stickystart "Collect_Scorp_Venom"
step
click Malem Chest##50961
turnin Vahlarriel's Search##1437 |goto Desolace 56.54,17.83
accept Vahlarriel's Search##1465 |goto Desolace 56.54,17.83
step
talk Bibbly F'utzbuckle##11438
|tip He walks around this area.
accept Bone Collector##5501 |goto Desolace 62.33,38.98
accept Massive Profits##27253 |goto Desolace 62.33,38.98
|tip Do this quest along with the Kodo Roundup coming up.
step
talk Azore Aldamort##11863
accept Sceptre of Light##5741 |goto Desolace 38.88,27.17
stickystop "Collect_Scorp_Venom"
stickystop "Collect_Aged_Kodo_Hides"
step
click Karnitol's Chest##35251
turnin The Karnitol Shipwreck##1454 |goto Desolace 36.11,30.45
accept The Karnitol Shipwreck##1455 |goto Desolace 36.11,30.45
step
click Rackmore's Log##177787
|tip It's a small book on the ground.
accept Claim Rackmore's Treasure!##6161 |goto Desolace 36.07,30.41
step
Kill Drysnap enemies around this area
|tip They look like lobsters underwater around this area.
|tip Pull enemies to the top of the water so your breath meter doesn't deteriorate while fighting. |only if hardcore
collect Rackmore's Silver Key##15878 |q 6161/1 |goto Desolace 32.78,31.37
stickystart "Collect_Aged_Kodo_Hides"
stickystart "Collect_Scorp_Venom"
step
Leave the water |goto Desolace 36.05,31.01 < 40 |only if walking and subzone("Sar'theris Strand")
talk Smeed Scrabblescrew##11596
|tip Avoid Ghost Walker Post as you travel here.
accept Kodo Roundup##5561 |goto Desolace 60.86,61.86
step
collect 3 Fossilised Gallbladder##63124 |q 27253/1 |goto Desolace 54.45,63.19
|tip These are found in large kodo skeletons around the Kodo Graveyard.
|tip Look for the largest skeleton remains and right-click them.
stickystart "Collect_Kodo_Bones"
step
use the Kodo Kombobulator##13892
|tip Use it on Kodo enemies around this area.
|tip You can find more all around this bone graveyard area.
Tame #5# Kodos |q 5561/1 |goto Desolace 54.45,63.19
|tip You must bring them back to Smeed Scrabblescrew to tame them.
|tip Talk to the kodos after you bring them to Smeed Scrabblescrew.
Bring the Kodos back to [60.73,61.96]
Gather more Kodos from here [54.45,63.19]
step
talk Smeed Scrabblescrew##11596
turnin Kodo Roundup##5561 |goto Desolace 60.86,61.86
step
talk Bibbly F'utzbuckle##11438
turnin Massive Profits##27253 |goto Desolace 62.33,38.98
step
label "Collect_Kodo_Bones"
click Kodo Bones##176751
|tip They look like large white horned animal skulls on the ground around this area.
|tip A Kodo Apparition may appear and attack you.
collect 10 Kodo Bone##13703 |q 5501/1 |goto Desolace 51.31,58.04
step
label "Collect_Aged_Kodo_Hides"
kill Aged Kodo##4700+
collect 3 Aged Kodo Hide##6249 |q 1459/2 |goto Desolace 51.41,58.45
stickystop "Collect_Scorp_Venom"
stickystart "Collect_CentaurEars"
step
label "Reach_Friendly_Reputation_With_The_Gelkis_Clan_Centaur"
Kill Magram enemies around this area
|tip The ones in the outskirts of the village are a bit lower level and easier to grind.
|tip Be careful to avoid the Magram Pack Runners that walk around this area with 2 high level hyena guards.
|tip Magram Stormers are ranged attackers that deal heavy damage.						|only if hardcore
Reach Friendly Reputation with the Gelkis Clan Centaur |q 1382/1 |goto Desolace 70.30,73.77
stickystop "Collect_CentaurEars"
stickystart "Collect_Scorp_Venom"
step
talk Doomfang##46083
|tip He is in the Magram Village area.
accept An End To Dread##27237 |goto Desolace 70.30,73.77
step
Follow the road |goto Desolace 50.33,75.54 < 30 |only if walking
talk Mannoroc Warden##46091
turnin Remnants of the Nether##27258 |goto Desolace 36.3,45.4
|tip On the way to Uthek, travel to Mannoroc Coven to turnin first.
step
Follow the road |goto Desolace 50.33,75.54 < 30 |only if walking
talk Uthek the Wise##5397
turnin Strange Alliance##1382 |goto Desolace 36.23,79.25
accept Raid on the Kolkar##1384 |goto Desolace 36.23,79.25
step
talk Kreldig Ungor##5638
turnin The Karnitol Shipwreck##1455 |goto Desolace 66.20,9.63
accept The Karnitol Shipwreck##1456 |goto Desolace 66.20,9.63
turnin Reagents for Reclaimers Inc.##1459 |goto Desolace 66.20,9.63
step
talk Corporal Melkins##5752
turnin Centaur Bounty##1387 |goto Desolace 66.74,10.87
step
talk Vahlarriel Demonslayer##5642
turnin Vahlarriel's Search##1465 |goto Desolace 66.44,11.82
accept Vahlarriel's Search##1438 |goto Desolace 66.44,11.82
stickystop "Collect_Scorp_Venom"
stickystart "Collect_CentaurEars"
step
Kill Kolkar enemies around this area
|tip Watch for patrols and respawns here.				|only if hardcore
|tip Kolkar Windchasers are ranged attackers that deal heavy damage.	|only if hardcore
|tip Enemies may run away in fear when at low health.			|only if hardcore
collect 10 Crude Charm##6079 |q 1384/1 |goto Desolace 70.03,41.94
You can find more around: |notinsticky
[72.07,47.01]
[73.61,50.00]
step
label "Collect_CentaurEars"
Kill Centaur enemies around this area. |notinsticky
|tip Watch for patrols and respawns here.	|only if hardcore |notinsticky
|tip Enemies may run away in fear when at low health. |only if hardcore |notinsticky
collect 15 Centaur Ear##6067 |q 1387/1 |goto Desolace 70.03,41.94
stickystart "Collect_Scorp_Venom"
step
talk Bibbly F'utzbuckle##11438
|tip He walks around this area.
turnin Bone Collector##5501 |goto Desolace 62.33,38.98
step
Follow the path |goto Desolace 56.06,29.54 < 10 |only if walking
kill Burning Blade Seer##13019
|tip At the top of the tower.
|tip Watch for patrols and respawns while in the area. |only if hardcore
|tip Burning Blade Adepts/Augurs are ranged attackers that deal heavy damage |only if hardcore
|tip Be careful while traveling through the area. |only if hardcore
|tip Enemies are often hidden around corners resulting in undesirable adds in fights. |only if hardcore
collect Sceptre of Light##15750 |q 5741/1 |goto Desolace 55.17,30.15
stickystop "Collect_Scorp_Venom"
step
Enter the building |goto Desolace 55.48,27.83 < 10 |walk
|tip Watch for the patrol that walks counter clock-wise around this building. |only if hardcore
talk Dalinda Malem##5644
|tip Inside the building.
|tip If she's not here, someone may be escorting her.
|tip Wait until she respawns.
turnin Vahlarriel's Search##1438 |goto Desolace 54.86,26.13
accept Search for Tyranis##1439 |goto Desolace 54.86,26.13
step
Leave the building |goto Desolace 55.48,27.83 < 10 |walk
Enter the building |goto Desolace 53.73,29.42 < 10 |walk
|tip Watch for the patrol that walks clock-wise around this building. |only if hardcore
kill Tyranis Malem##5643
|tip Inside the building.
|tip Try to pull him toward the building entrance, so you don't accidentally aggro other enemies.
collect Tyranis' Pendant##6767 |q 1439/1 |goto Desolace 53.01,29.08
step
Leave the building |goto Desolace 53.73,29.42 < 10 |walk
Enter the building |goto Desolace 55.48,27.83 < 10 |walk
|tip Watch for the patrol that walks counter clock-wise around this building. |only if hardcore
talk Dalinda Malem##5644
|tip Inside the building.
|tip If she's not here, someone may be escorting her.
|tip Wait until she respawns.
|tip Clear enemies inside the building if you end up having to wait. |only if hardcore
turnin Search for Tyranis##1439 |goto Desolace 54.86,26.13
accept Return to Vahlarriel##1440 |goto Desolace 54.86,26.13 |noautoaccept
|tip This is an escort quest.
|tip Kill all enemies in this room before starting the quest.
step
Watch the dialogue
|tip Follow Dalinda Malem and protect her as she walks.
|tip She eventually walks to this location.
Rescue Dalinda Malem |q 1440/1 |goto Desolace 58.26,30.95
step
talk Azore Aldamort##11863
turnin Sceptre of Light##5741 |goto Desolace 38.89,27.17
accept Book of the Ancients##6027 |goto Desolace 38.89,27.17
stickystart "Collect_Karnitols_Satchel"
step
click Serpent Statue
|tip You will be attacked immediately, so make sure you are ready before hand.
kill Lord Kragaru##12369
|tip He's level 38, but you should be able to kill him at this level.
|tip If you have trouble, try to find someone to help you.
collect Book of the Ancients##15803 |q 6027/1 |goto Desolace 28.19,6.62
step
click Rackmore's Chest##177786
|tip On the ground at the base of the tree.
|tip Enemies around this area may run away when at low health.			|only if hardcore
|tip Destroy totems that Slitherblade Oracles summon.				|only if hardcore
|tip Slitherblade Sorceress' are ranged attackers that deal heavy damage.	|only if hardcore
turnin Claim Rackmore's Treasure!##6161 |goto Desolace 30.00,8.70
step
label "Collect_Karnitols_Satchel"
Kill Slitherblade enemies around this area
|tip Only Slitherblade Tidehunters and Slitherblade Sea Witches will drop the quest item.
|tip They share spawn points with other types of naga on this island.
|tip Kill all types of naga on this island, to try to get more to spawn.
|tip This drop rate is very low but it is worth doing, it is not advised to skip this step.
|tip Enemies around this area may run away when at low health.			|only if hardcore |notinsticky
|tip Destroy totems that Slitherblade Oracles summon.				|only if hardcore |notinsticky
|tip Slitherblade Sorceress' are ranged attackers that deal heavy damage.	|only if hardcore |notinsticky
collect Karnitol's Satchel##6245 |q 1456/1 |goto Desolace 28.19,6.62
You can find more underwater around [32.18,9.57]
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 37.
|tip Grinding a bit here will reduce the amount you have to grind all at once later.
|tip Enemies around this area may run away when at low health.			|only if hardcore
|tip Destroy totems that Slitherblade Oracles summon.				|only if hardcore
|tip Slitherblade Sorceress' are ranged attackers that deal heavy damage.	|only if hardcore
ding 37 |goto Desolace 28.92,7.85
step
Kill Slitherblade enemies around this area
|tip Underwater.
|tip Pull enemies to the top of the water so your breath meter doesn't deteriorate while fighting. |only if hardcore
collect Rackmore's Golden Key##15881 |q 6161/2 |goto Desolace 35.20,24.86
step
Follow the path up |goto Desolace 40.99,28.91 < 20 |only if walking
talk Azore Aldamort##11863
turnin Book of the Ancients##6027 |goto Desolace 38.89,27.17
stickystart "Collect_Scorp_Venom"
step
Follow the path through the mountains |goto Desolace 41.53,65.03 < 70 |only if walking and not subzone("Gelkis Village")
talk Uthek the Wise##5397
turnin Raid on the Kolkar##1384 |goto Desolace 36.22,79.25
accept Stealing Supplies##1370 |goto Desolace 36.22,79.25
step
Follow the road |goto Desolace 47.02,75.18 < 40 |only if walking and not subzone("Magram Village")
click Sack of Meat##22245+
|tip They look like tan leather bags on the ground near the buildings around this area.
|tip Not all of the tan bags you see will be clickable.
|tip The ones in the outskirts of the village are a bit lower level and easier to grind.			|notinsticky
|tip Be careful to avoid the Magram Pack Runners that walk around this area with 2 high level hyena guards.	|notinsticky
|tip Magram Stormers are ranged attackers that deal heavy damage.						|only if hardcore |notinsticky
collect 6 Crudely Dried Meat##6069 |q 1370/1 |goto Desolace 70.90,75.47
step
kill 30 Undead Ravager##11561 |q 261/1 |goto Desolace 63.96,91.95
|tip They look like brown skeletons.
|tip This quest can be hard at this level, skip it if you don't feel safe. You will get another chance later. |only if hardcore
|tip We recommend trying to complete this quest now if you want to run Scarlet Monastery at level 39-40. |only if hardcore
|tip Watch for respawns while in the area.	|only if hardcore
You can find more around: |notinsticky
[59.78,89.83]
[64.52,82.42]
step
talk Mannoroc Warden##46091
|tip Travel to Mannoroc Coven north of the village.
turnin Wanted: Wilfiz Silverbit##27265 |goto Desolace 36.3,45.4
turnin An End To Dread##27237 |goto Desolace 36.3,45.4
step
Follow the road |goto Desolace 48.39,75.67 < 40 |only if walking and not subzone("Gelkis Village")
talk Uthek the Wise##5397
turnin Stealing Supplies##1370 |goto Desolace 36.22,79.25
accept Ongeku##1373 |goto Desolace 36.22,79.25 |only if not hardcore
step
label "Collect_Scorp_Venom"
Kill Scorpashi enemies as you quest.
'|kill Scorpashi Snapper##4696, Scorpashi Lasher##4697, Scorpashi Venomlash##4699
|tip These scorpions share spawn points with basilisk enemies, so kill those too, if you can't find any.
collect 10 Scorpashi Venom##6248 |q 1459/1 |goto Desolace 72.00,31.00
You can find more around: |notinsticky
[65.00,23.00]
[59.00,21.00]
step
talk Kreldig Ungor##5638
turnin The Karnitol Shipwreck##1456 |goto Desolace 66.20,9.63
accept The Karnitol Shipwreck##1457 |goto Desolace 66.20,9.63
turnin Reagents for Reclaimers Inc.##1459 |goto Desolace 66.20,9.63
step
talk Vahlarriel Demonslayer##5642
turnin Return to Vahlarriel##1440 |goto Desolace 66.44,11.82
step
talk Brother Anton##1182
|tip Inside the building.
turnin Down the Scarlet Path##261 |goto Desolace 66.52,7.91
accept Down the Scarlet Path##1052 |goto Desolace 66.52,7.91
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect Kravel's Parts##5800 |goto Tanaris 52.30,28.91 |q 1112
step
talk Gimblethorn##7799
|tip Inside the building.
|tip Deposit these items into the bank.
bank Karnitol's Satchel##6245 |goto Tanaris 52.30,28.91 |q 1457 |future
step
talk Kravel Koalbeard##4452
turnin Parts for Kravel##1112 |goto Thousand Needles 77.79,77.26
step
Watch the dialogue
talk Kravel Koalbeard##4452
accept Delivery to the Gnomes##1114 |goto Thousand Needles 77.79,77.27
step
talk Fizzle Brassbolts##4454
turnin Delivery to the Gnomes##1114 |goto Thousand Needles 78.06,77.12
step
talk Kravel Koalbeard##4452
accept The Rumormonger##1115 |goto Thousand Needles 77.79,77.27
step
talk Pozzik##4630
turnin Goblin Sponsorship##1183 |goto Thousand Needles 80.18,75.88
accept The Eighteenth Pilot##1186 |goto Thousand Needles 80.18,75.88
step
talk Razzeric##4706
turnin The Eighteenth Pilot##1186 |goto Thousand Needles 80.33,76.09
accept Razzeric's Tweaking##1187 |goto Thousand Needles 80.33,76.09
]]
)
