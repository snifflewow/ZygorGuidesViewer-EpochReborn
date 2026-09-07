local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Tanaris (48-49)',
  {
    next = 'Leveling Guides\\The Hinterlands (49-50)',
  },
  [[
step
talk Marin Noggenfogger##7564
accept The Thirsty Goblin##2605 |goto Tanaris 51.81,28.66
step
Enter the building |goto Tanaris,52.21,28.57,10 |walk
talk Gimblethorn##7799
.tip Inside the building.
.tip Collect these items from the bank.
collect A Short Note##9329 |goto Tanaris 52.30,28.91 |q 2941
collect Yeh'kinya's Bramble##10699 |goto Tanaris 52.30,28.91 |q 3520
collect Hippogryph Egg##8564 |goto Tanaris 52.30,28.91 |q 2741 |future
step
talk Chief Engineer Bilgewhizzle##7407
accept More Wastewander Justice##1691 |goto Tanaris 52.46,28.51
step
Enter the building |goto Tanaris,52.38,27.91,10 |walk
talk Innkeeper Fizzgrimble##7733
.tip Inside the building.
home Gadgetzan |goto Tanaris 52.51,27.91
step
talk Andi Lynn##11758
accept The Dunemaul Compound##5863 |goto Tanaris 52.82,27.40
step
click Egg-O-Matic##142071
accept The Super Egg-O-Matic##2741 |goto Tanaris 52.37,26.97 |instant
step
Open This Item:
.tip Open it for rewards, its no longer needed.
.tip You can turn in the egg for Curgle Cranklehop next to the Egg-o-Matic.
trash Egg Crate##8647 |goto Tanaris/0 52.36,26.90
step
talk Curgle Cranklehop##7763
turnin The Borrower##2941 |goto Tanaris 52.36,26.91
accept The Super Snapper FX##2944 |goto Tanaris 52.36,26.91
step
click Wanted Poster##142122
accept WANTED: Caliph Scorpidsting##2781 |goto Tanaris 51.84,27.02
accept WANTED: Andre Firebeard##2875 |goto Tanaris 51.84,27.02
step
talk Tran'rek##7876
accept Thistleshrub Valley##3362 |goto Tanaris 51.57,26.76
step
talk Senior Surveyor Fizzledowser##7724
accept Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48
|only if hardcore
step
use the Untapped Dowsing Widget##8584
.tip Avoid the elite enemies nearby this location while traveling here.
.tip Use it in the water.
.tip Two level 48 enemies appear after using the item.
.tip Be ready to run, if you can't kill the enemies.
collect Tapped Dowsing Widget##8585 |q 992/1 |goto Tanaris 39.09,29.17
|only if hardcore
step
talk Senior Surveyor Fizzledowser##7724
turnin Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48		|only if hardcore
accept Noxious Lair Investigation##82 |goto Tanaris 50.21,27.48
step
talk Haughty Modiste##15165
accept Pirate Hats Ahoy!##8365 |goto Tanaris 66.56,22.27
step
talk Yeh'kinya##8579
turnin Screecher Spirits##3520 |goto Tanaris 66.99,22.36
step
talk Jabbey##8139
.tip Inside the building.
.tip Buy enough ammo to fill your ammo bag, plus 12-15 extra stacks.
.tip You will be questing for a long time without an arrow vendor nearby.
Visit the Vendor |vendor Jabbey##8139 |goto Tanaris 67.01,21.99 |q 8365
|only if Hunter
step
Enter the building |goto Tanaris,66.99,23.87,10 |walk
talk Security Chief Bilgewhizzle##7882
.tip Inside the building.
accept Southsea Shakedown##8366 |goto Tanaris 67.06,23.89
step
talk Stoley##7881
.tip Inside the building.
accept Stoley's Shipment##2873 |goto Tanaris 67.11,23.98
stickystart "Kill_Wastewander_Rogues"
stickystart "Kill_Wastewander_Assassins"
stickystart "Kill_Wastewander_Shadow_Mages"
step
path	follow loose;	loop;	ants curved;	dist 40
path	63.84,31.89		63.30,37.23		62.29,37.83		59.52,41.19
path	58.71,38.17		61.87,33.42
kill Caliph Scorpidsting##7847
.tip He walks in a counter-clockwise pattern, so this path will help you find him faster.
.tip He walks with 2 stealthed guards with him, so be careful.
.tip If you have trouble, try to find someone to help you.
collect Caliph Scorpidsting's Head##8723 |q 2781/1
step
label "Kill_Wastewander_Rogues"
kill 8 Wastewander Rogue##5615 |q 1691/1 |goto Tanaris 60.87,32.74
.tip They are stealthed around this area.
.tip Wastelander Shadow Mages are ranged attackers with a minion that must be killed.	|only if hardcore
.tip Watch for patrols and respawns while around here.					|only if hardcore
You can find more around: |notinsticky
[61.84,34.67]
[59.99,37.02]
[58.85,36.63]
[58.81,39.22]
[60.52,39.06]
[63.40,37.65]
[64.43,39.57]
[65.32,36.89]
step
label "Kill_Wastewander_Assassins"
kill 6 Wastewander Assassin##5623 |q 1691/2 |goto Tanaris 60.87,32.74
.tip Wastelander Rogues may be stealthed.						|only if hardcore |notinsticky
.tip Wastelander Shadow Mages are ranged attackers with a minion that must be killed.	|only if hardcore |notinsticky
.tip Watch for patrols and respawns while around here.					|only if hardcore |notinsticky
You can find more around: |notinsticky
[61.84,34.67]
[59.99,37.02]
[58.85,36.63]
[58.81,39.22]
[60.52,39.06]
[63.40,37.65]
[64.43,39.57]
[65.32,36.89]
step
label "Kill_Wastewander_Shadow_Mages"
kill 10 Wastewander Shadow Mage##5617 |q 1691/3 |goto Tanaris 60.87,32.74
.tip Wastelander Rogues may be stealthed.						|only if hardcore |notinsticky
.tip Watch for patrols and respawns while around here.					|only if hardcore |notinsticky
You can find more around: |notinsticky
[61.84,34.67]
[59.99,37.02]
[58.85,36.63]
[58.81,39.22]
[60.52,39.06]
[63.40,37.65]
[64.43,39.57]
[65.32,36.89]
stickystart "Collect_Southsea_Pirate_Hats"
stickystart "Kill_Southsea_Pirates"
stickystart "Kill_Southsea_Freebooters"
stickystart "Kill_Southsea_Dock_Workers"
stickystart "Kill_Southsea_Swashbucklers"
stickystart "Collect_Ship_Schedule"
step
Enter the tunnel |goto Tanaris,68.62,41.46,20 |only if walking and not subzone("Lost Rigger Cove")
Enter the building |goto Tanaris,72.61,46.82,10 |walk
click Stolen Cargo##142181
.tip Upstairs inside the building.
collect Stoley's Shipment##9244 |q 2873/1 |goto Tanaris 72.19,46.77
step
kill Andre Firebeard##7883
.tip Try to pull him away to fight him alone.
.tip If you have trouble, try to find someone to help you.
collect Firebeard's Head##9246 |q 2875/1 |goto Tanaris 73.37,47.14
step
label "Collect_Southsea_Pirate_Hats"
Kill Southsea enemies around this area
collect 20 Southsea Pirate Hat##20519 |q 8365/1 |goto Tanaris 73.26,46.42
.tip Enemies may will flee when at low health.				|only if hardcore |notinsticky
.tip Avoid entering buildings when possible.				|only if hardcore |notinsticky
.tip Enemies tend to bunch up and pull in groups inside them.		|only if hardcore |notinsticky
You can find more around [72.29,44.64]
step
label "Kill_Southsea_Pirates"
kill 10 Southsea Pirate##7855 |q 8366/1 |goto Tanaris 73.26,46.42
.tip Enemies may will flee when at low health.				|only if hardcore |notinsticky
.tip Avoid entering buildings when possible.				|only if hardcore |notinsticky
.tip Enemies tend to bunch up and pull in groups inside them.		|only if hardcore |notinsticky
You can find more around [72.29,44.64]
step
label "Kill_Southsea_Freebooters"
kill 10 Southsea Freebooter##7856 |q 8366/2 |goto Tanaris 73.26,46.42
.tip Enemies may will flee when at low health.				|only if hardcore |notinsticky
.tip Avoid entering buildings when possible.				|only if hardcore |notinsticky
.tip Enemies tend to bunch up and pull in groups inside them.		|only if hardcore |notinsticky
You can find more around [72.29,44.64]
step
label "Kill_Southsea_Dock_Workers"
kill 10 Southsea Dock Worker##7857 |q 8366/3 |goto Tanaris 73.76,47.42
.tip Enemies may will flee when at low health.				|only if hardcore |notinsticky
.tip Avoid entering buildings when possible.				|only if hardcore |notinsticky
.tip Enemies tend to bunch up and pull in groups inside them.		|only if hardcore |notinsticky
.tip You can find more up on the wooden platforms nearby.
step
label "Kill_Southsea_Swashbucklers"
kill 10 Southsea Swashbuckler##7858 |q 8366/4 |goto Tanaris 75.19,45.96
.tip Enemies may will flee when at low health.				|only if hardcore |notinsticky
.tip Avoid entering buildings when possible.				|only if hardcore |notinsticky
.tip Enemies tend to bunch up and pull in groups inside them.		|only if hardcore |notinsticky
You can find more in the buildings around [72.96,47.07]
step
label "Collect_Ship_Schedule"
Kill Southsea enemies around this area
.tip Enemies will flee when at low health.				|only if hardcore |notinsticky
.tip Avoid entering buildings when possible.				|only if hardcore |notinsticky
.tip Enemies tend to bunch up and pull in groups inside them.		|only if hardcore |notinsticky
collect Pirate's Footlocker##9276 |n
use Pirate's Footlocker##9276+
collect Ship Schedule##9250 |goto Tanaris 73.26,46.42 |q 2876 |future
.tip It may take a long time to get it, but it is a good grind to do to get a lot of extra xp built up.
.tip If you grind over 2 bars of XP and still haven't found it, skip the quest.
You can find more around [72.29,44.64]
step
use the Ship Schedule##9250
accept Ship Schedules##2876
|only if itemcount(9250) > 0
step
talk Chief Engineer Bilgewhizzle##7407
turnin WANTED: Caliph Scorpidsting##2781 |goto Tanaris 52.46,28.51 |only if not hardcore
turnin More Wastewander Justice##1691 |goto Tanaris 52.46,28.51
step
talk Marvon Rivetseeker##7771
turnin The Sunken Temple##3445 |goto Tanaris 52.71,45.93
accept The Stone Circle##3444 |goto Tanaris 52.71,45.93
accept Gahz'ridian##3161 |goto Tanaris 52.71,45.93
step
Kill Centipaar enemies around this area
.tip Centipaar Swarmers summon adds as you fight them.	|only if hardcore
.tip Centipaar Workers run away in fear when at low health.	|only if hardcore
collect 5 Centipaar Insect Parts##8587 |q 82/1 |goto Tanaris 35.74,42.06
stickystart "Kill_Dunemaul_Brutes"
stickystart "Kill_Dunemaul_Enforcers"
step
Enter the cave |goto Tanaris,41.09,57.35,20 |walk
kill Gor'marok the Ravager##12046 |q 5863/3 |goto Tanaris 41.50,57.81
.tip Inside the small cave.
step
click Gahz'ridian##140971+
.tip They look like small piles of sand on the ground around this area.
collect 30 Gahz'ridian Ornament##8443 |q 3161/1 |goto Tanaris 40.45,72.67
You can find more around [46.96,65.87]
step
label "Kill_Dunemaul_Brutes"
kill 10 Dunemaul Brute##5474 |q 5863/1 |goto Tanaris 40.45,72.67
You can find more around: |notinsticky
[46.96,65.87]
[40.04,55.70]
step
label "Kill_Dunemaul_Enforcers"
kill 10 Dunemaul Enforcer##5472 |q 5863/2 |goto Tanaris 40.45,72.67
You can find more around: |notinsticky
[46.96,65.87]
[40.04,55.70]
stickystart "Kill_Gnarled_Thistleshrubs"
stickystart "Kill_Thistleshrub_Rootshapers"
step
kill Thistleshrub Dew Collector##5481+
collect Laden Dew Gland##8428 |q 2605/1 |goto Tanaris 29.97,66.48
You can find more around: |notinsticky
[28.18,64.79]
[30.54,64.66]
step
label "Kill_Gnarled_Thistleshrubs"
kill 8 Gnarled Thistleshrub##5490 |q 3362/1 |goto Tanaris 29.97,66.48
You can find more around: |notinsticky
[28.18,64.79]
[30.54,64.66]
step
label "Kill_Thistleshrub_Rootshapers"
kill 8 Thistleshrub Rootshaper##5485 |q 3362/2 |goto Tanaris 29.97,66.48
You can find more around: |notinsticky
[28.18,64.79]
[30.54,64.66]
step
Kill enemies around this area
.tip You should already be level 49, or pretty close.
.tip As you grind, keep an eye out for a turtle named Tooga, who offers a quest.
.tip Make a mental note of where he is, if you see him.  You will be searching for him in the next step.
ding 49 |goto Tanaris 29.97,66.48
You can find more around: |notinsticky
[28.18,64.79]
[30.54,64.66]
step
talk Tooga##5955
.tip He looks like a turtle that walks around this area.
.tip This is an escort quest.
.tip If you can't find him, someone may be escorting him.
.tip Just keep grinding enemies around this area until you find him.
accept Tooga's Quest##1560 |goto Tanaris 28.50,63.10 |noautoaccept
Also check around: |notinsticky
[29.97,66.48]
[30.54,64.66]
[31.79,74.15]
[29.58,74.73]
stickystart "Lead_Tooga_To_Torta"
step
talk Marvon Rivetseeker##7771
turnin Gahz'ridian##3161 |goto Tanaris 52.71,45.93 |notravel |only if haveq(1560)
turnin Gahz'ridian##3161 |goto Tanaris 52.71,45.93 |only if not haveq(1560)
step
label "Lead_Tooga_To_Torta"
Lead Tooga to Torta |q 1560/1 |goto Tanaris 66.57,25.67 |notravel
.tip He will follow you.
.tip Protect Tooga as you walk, and try to stay fairly close to him.
.tip If you get too far away from him, you will fail the quest.
.tip Torta looks like a turtle that walks around this area.
step
talk Torta##6015
.tip She looks like a turtle that walks around this area.
turnin Tooga's Quest##1560 |goto Tanaris 66.57,25.67
step
Enter the building |goto Tanaris,66.99,23.87,10 |walk
talk Security Chief Bilgewhizzle##7882
.tip Inside the building.
turnin WANTED: Andre Firebeard##2875 |goto Tanaris 67.06,23.89 |only if not hardcore
turnin Southsea Shakedown##8366 |goto Tanaris 67.06,23.89
turnin Ship Schedules##2876 |goto Tanaris 67.06,23.89
step
talk Stoley##7881
.tip Inside the building.
turnin Stoley's Shipment##2873 |goto Tanaris 67.11,23.97
accept Deliver to MacKinley##2874 |goto Tanaris 67.11,23.97
step
talk Yorba Screwspigot##9706
.tip Inside the building.
accept Yuka Screwspigot##4324 |goto Tanaris 67.03,24.01
step
talk Haughty Modiste##15165
turnin Pirate Hats Ahoy!##8365 |goto Tanaris 66.56,22.27
step
talk Marin Noggenfogger##7564
turnin The Thirsty Goblin##2605 |goto Tanaris 51.81,28.66
accept In Good Taste##2606 |goto Tanaris 51.81,28.66
step
Enter the building |goto Tanaris,52.21,28.57,10 |walk
talk Gimblethorn##7799
.tip Inside the building.
.tip Deposit these items into the bank.
bank Stoley's Bottle##9245 |goto Tanaris 52.30,28.91 |q 2874 |future
step
talk Sprinkle##7583
turnin In Good Taste##2606 |goto Tanaris 51.06,26.87
accept Sprinkle's Secret Ingredient##2641 |goto Tanaris 51.06,26.87
step
talk Alchemist Pestlezugg##5594
.tip Inside the building.
turnin Noxious Lair Investigation##82 |goto Tanaris 50.89,26.96
step
talk Senior Surveyor Fizzledowser##7724
accept The Scrimshank Redemption##10 |goto Tanaris 50.21,27.48
step
talk Tran'rek##7876
turnin Thistleshrub Valley##3362 |goto Tanaris 51.57,26.76
step
talk Andi Lynn##11758
turnin The Dunemaul Compound##5863 |goto Tanaris 52.82,27.40
step
use the OOX-17/TN Distress Beacon##8623
accept Find OOX-17/TN!##351
|only if itemcount(8623) > 0
step
talk Homing Robot OOX-17/TN##7784
.tip This NPC offers an escort quest.
.tip If it's not here, someone may be escorting it.
.tip Wait until it appears again.
turnin Find OOX-17/TN!##351 |goto Tanaris 60.23,64.72
step
Follow the path down |goto Tanaris,55.87,70.27,30 |only if walking
Enter the cave |goto Tanaris,55.78,68.91,10 |c |q 10
step
Follow the path down |goto Tanaris,55.93,68.37,7 |walk
Continue following the path down |goto Tanaris,56.17,68.34,7 |walk
Follow the path |goto Tanaris,56.55,68.72,7 |walk
Follow the path up |goto Tanaris,57.19,70.16,7 |walk
Follow the path down |goto Tanaris,57.61,70.67,7 |walk
Follow the path |goto Tanaris,57.38,71.30,7 |walk
click Scrimshank's Surveying Gear##144053
.tip Inside the cave.
.tip Hazzali Workers run away quickly when low health.		|only if hardcore
.tip Hazzali Swarmers spawn adds while you fight them.		|only if hardcore
.tip Watch for patrols and respawns while in the cave.		|only if hardcore
collect Scrimshank's Surveying Gear##8593 |q 10/1 |goto Tanaris 55.97,71.18
step
use the OOX-17/TN Distress Beacon##8623
accept Find OOX-17/TN!##351
|only if itemcount(8623) > 0
step
talk Homing Robot OOX-17/TN##7784
.tip This NPC offers an escort quest.
.tip If it's not here, someone may be escorting it.
.tip Wait until it appears again.
turnin Find OOX-17/TN!##351 |goto Tanaris/0 60.23,64.72
accept Rescue OOX-17/TN!##648 |goto Tanaris/0 60.23,64.72
step
Escort the OOX-17/TN
.tip This quest can be hard, you regularly have to fight waves of 3-4 enemies.
.tip Often others are looking to complete this escort too.
.tip Don't be afraid to run away or skip this step if it's too hard |only if hardcore
.tip You'll have more chances to do this again at a higher level |only if hardcore
Escort OOX-17/TN to Steamwheedle Port |q 648/1 |goto Tanaris/0 66.99,23.14
step
talk Senior Surveyor Fizzledowser##7724
turnin The Scrimshank Redemption##10 |goto Tanaris 50.21,27.48
accept Insect Part Analysis##110 |goto Tanaris 50.21,27.48
step
talk Alchemist Pestlezugg##5594
.tip Inside the building.
turnin Insect Part Analysis##110 |goto Tanaris 50.89,26.96
accept Insect Part Analysis##113 |goto Tanaris 50.89,26.96
step
talk Senior Surveyor Fizzledowser##7724
turnin Insect Part Analysis##113 |goto Tanaris 50.21,27.48
accept Rise of the Silithid##162 |goto Tanaris 50.21,27.48
step
Enter the building |goto Tanaris,52.21,28.57,10 |walk
talk Gimblethorn##7799
.tip Inside the building.
.tip Deposit these items into the bank.
bank Insect Analysis Report##8594 |goto Tanaris 52.30,28.91 |q 162 |future
]]
)
