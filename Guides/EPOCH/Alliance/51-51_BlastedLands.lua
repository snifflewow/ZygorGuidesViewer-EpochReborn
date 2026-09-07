local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Blasted Lands (51-51)',
  {
    image = ZGV.IMAGESDIR .. 'Blasted Lands',
    condition_suggested = function()
      return level == 51 and not completedq(2877)
    end,
    next = 'Leveling Guides\\Western Plaguelands (51-52)',
    hardcore = true,
  },
  [[
step
Enter the building |goto Blasted Lands 66.40,18.98 < 10 |walk
talk Ambassador Ardalan##7826
|tip Inside the building, at the top.
accept Petty Squabbles##2783 |goto Blasted Lands 67.57,19.29
step
Leave the building |goto Blasted Lands 66.40,18.98 < 10 |walk |only if subzone("Nethergarde Keep") and _G.IsIndoors()
Leave Nethergarde Keep |goto Blasted Lands 62.83,19.77 < 30 |only if walking and subzone("Nethergarde Keep")
talk Fallen Hero of the Horde##7572
turnin Petty Squabbles##2783 |goto Swamp of Sorrows 34.29,66.13
accept A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.13
step
talk Fallen Hero of the Horde##7572
Select _"Please continue, Hero..."_
Listen to a Tale of Sorrow |q 2801/1 |goto Swamp of Sorrows 34.29,66.13
step
talk Fallen Hero of the Horde##7572
turnin A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.13
step
_Note_
Keep an eye out while in this zone!
|tip Teremus the Devourer is a level 60 dragon boss that patrols this zone.
|tip Regularly spin your camera around to check for him.
|tip If he aggros you it is near guaranteed death.
Click Here To Confirm |confirm
|only if hardcore
step
talk Bloodmage Drazial##7505
accept Snickerfang Jowls##2581 |goto Blasted Lands 50.55,14.21
accept A Boar's Vitality##2583 |goto Blasted Lands 50.55,14.21
accept The Decisive Striker##2585 |goto Blasted Lands 50.55,14.21
step
talk Bloodmage Lynnore##7506
accept The Basilisk's Bite##2601 |goto Blasted Lands 50.64,14.30
accept Vulture's Vigor##2603 |goto Blasted Lands 50.64,14.30
stickystart "Collect_Blasted_Boar_Lungs"
stickystart "Collect_Scorpok_Pincers"
stickystart "Collect_Basilisk_Brains"
stickystart "Collect_Vulture_Gizzards"
stickystart "Collect_Snickerfang"
step
label "Collect_Vulture_Gizzards"
kill Black Slayer##5982+
|tip Bonepickers will also drop the quest item.
|tip They look like vultures.
|tip You will collect enough of these to turn in all 5 quests at once. |notinsticky
|tip These usually take the longest to collect, by far.
|tip Go out of your way to camp the vulture spawns and kill other mobs while they respawn.
|tip You can try to buy them from the auction house, if you don't want to spend the time to collect them. |only if not selfmade
collect 14 Vulture Gizzard##8396 |goto Blasted Lands 48.50,19.78 |q 2603
You can find more around: |notinsticky
[45.45,35.25]
[53.42,37.61]
[55.04,43.80]
[59.33,42.05]
[56.46,36.51]
[58.82,27.97]
[62.28,26.43]
step
label "Collect_Basilisk_Brains"
Kill Redstone enemies around this area
|tip They look like basilisks.
|tip These should be your second priority after vultures.
|tip They share spawn locations with other enemies. |notinsticky
|tip They share spawns with the boars. |notinsticky
|tip You will collect enough of these to turn in all 5 quests at once. |notinsticky
collect 11 Basilisk Brain##8394 |goto Blasted Lands 55.08,28.94 |q 2601
You can find more around: |notinsticky
[61.75,27.98]
[59.71,43.76]
step
label "Collect_Blasted_Boar_Lungs"
Kill Boar enemies around this area
|tip They share spawn locations with the basilisks. |notinsticky
|tip If you can't find any at these locations, kill other enemies to get them to spawn. |notinsticky
|tip You will collect enough of these to turn in all 5 quests at once. |notinsticky
collect 6 Blasted Boar Lung##8392 |goto Blasted Lands 57.51,28.74 |q 2583
You can find more around: |notinsticky
[61.82,28.49]
[59.11,35.83]
[59.52,43.48]
step
label "Collect_Snickerfang"
Kill Snickerfang enemies around this area
|tip They look like hyenas.
|tip They share spawn locations with the scorpions. |notinsticky
|tip If you can't find any at these locations, kill other enemies to get them to spawn.
|tip You will collect enough of these to turn in all 5 quests at once. |notinsticky
collect 5 Snickerfang Jowl##8391 |goto Blasted Lands 47.21,21.18 |q 2581
You can find more around: |notinsticky
[44.82,24.87]
[45.44,35.35]
[50.96,38.09]
step
label "Collect_Scorpok_Pincers"
kill Scorpok Stinger##5988+
|tip They look like scorpions.
|tip They share spawn locations with the hyenas. |notinsticky
|tip If you can't find any at these locations, kill other enemies to get them to spawn. |notinsticky
|tip You will collect enough of these to turn in all 5 quests at once. |notinsticky
collect 6 Scorpok Pincer##8393 |goto Blasted Lands 49.10,18.12 |q 2585
You can find more around: |notinsticky
[45.29,21.33]
[44.61,29.11]
[52.04,30.03]
[56.81,21.17]
step
talk Kum'isha the Collector##7363
|tip He walks around this area.
accept Everything Counts In Large Amounts##3501 |goto Blasted Lands 51.80,35.64
|only if itemcount(10593) > 0
step
talk Kum'isha the Collector##7363
|tip He walks around this area.
turnin Everything Counts In Large Amounts##3501 |goto Blasted Lands 51.80,35.64
|only if haveq(3501) or completedq(3501)
step
talk Bloodmage Lynnore##7506
turnin The Basilisk's Bite##2601 |goto Blasted Lands 50.64,14.30
turnin Vulture's Vigor##2603 |goto Blasted Lands 50.64,14.30
step
talk Bloodmage Drazial##7505
turnin Snickerfang Jowls##2581 |goto Blasted Lands 50.55,14.21
turnin A Boar's Vitality##2583 |goto Blasted Lands 50.55,14.21
turnin The Decisive Striker##2585 |goto Blasted Lands 50.55,14.21
step
talk Curator Thorius##8256
|tip He walks around this area inside the building.
turnin Proof of Deed##3182 |goto Ironforge 72.01,15.53
turnin Suntara Stones##3368 |goto Ironforge 72.01,15.53
accept At Last!##3201 |goto Ironforge 72.01,15.53
step
talk Laris Geardawdle##9616
|tip Inside the building.
accept A Little Slime Goes a Long Way##4512 |goto Ironforge 75.77,23.37
step
Enter the building |goto Ironforge 53.24,7.33 < 7 |walk
talk Jubahl Corpseseeker##6382
|tip Inside the building.
|tip If you can afford them.
|tip Buy all of the Grimoires for spells that are upgrades for the spells you use with your pet.
|tip After buying them, make sure to use them in your bags to learn the spells.
Visit the Vendor |vendor Jubahl Corpseseeker##6382 |goto Ironforge 52.70,6.08 |q 3448
|only if Warlock
step
Enter the building |goto Ironforge 20.65,53.22 < 7 |walk
talk Innkeeper Firebrew##5111
|tip Inside the building.
home Ironforge |goto Ironforge 18.16,51.46
step
Enter the building |goto Ironforge 26.18,72.17 < 15 |walk
talk Auctioneer Redmuse##8720
|tip Inside the building.
|tip Buy it from the Auction House.
|tip It is needed for a quest in Un'Goro Crater.
|tip If you can't get one, it's okay, but you will need to skip a quest later.
collect Mithril Casing##10561 |goto Ironforge 24.16,74.67 |q 4244 |future
|only if not selfmade
step
map Ironforge
path	follow strict;	loop on;	ants curved;	dist 30;	markers none
path	57.32,78.92		50.14,81.06		39.59,79.17		34.35,74.44
path	24.69,55.32		24.38,38.36		27.70,25.23		32.24,22.90
path	34.74,33.94		40.38,37.68		48.22,31.09		55.91,35.09
path	57.34,48.56		48.22,57.86		46.33,47.76		39.94,44.41
path	38.43,38.33		34.49,32.86		33.42,21.18		39.45,12.40
path	44.31,10.79		53.02,10.57		58.98,13.76		70.47,33.88
path	71.16,44.77		70.12,55.01		67.38,65.14
talk Courier Hammerfall##10877
|tip He looks like a dwarf that walks in a counter-clockwise path around Ironforge.
|tip This step's path will take you clockwise to help you find him faster.
accept A Call to Arms: The Plaguelands!##5090
step
Enter the building |goto Ironforge 34.09,62.38 < 10 |walk
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Deposit these items into the bank.
bank Mithril Casing##10561 |goto Ironforge 35.92,60.14 |q 4244 |future
bank Black Dragonflight Molt##10575 |goto Ironforge 35.92,60.14 |q 4022 |future
bank Drawing Kit##10445 |goto Ironforge 35.92,60.14 |q 3449 |future
bank Standard Issue Flare Gun##10444 |goto Ironforge 35.92,60.14 |q 3449 |future
step
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Collect these items from the bank.
collect Super Snapper FX##9328 |goto Ironforge 35.92,60.14 |q 2944
collect Snapshot of Gammerita##9330 |goto Ironforge 35.92,60.14 |q 2944
collect 15 Wildkin Feather##10819 |goto Ironforge 35.92,60.14 |q 3661
step
talk Tynnus Venomsprout##5169
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Tynnus Venomsprout##5169 |goto Ironforge 52.94,13.66 |q 3201
|only if Rogue
step
talk Mountaineer Pebblebitty##3836
turnin At Last!##3201 |goto Loch Modan 18.19,84.00
step
Enter the building |goto The Hinterlands 11.00,45.67 < 10 |walk
talk Gryphon Master Talonaxe##5636
|tip Inside the building.
turnin The Altar of Zul##2989 |goto The Hinterlands 9.76,44.48
|only if not hardcore
step
Leave the building |goto The Hinterlands 11.00,45.67 < 10 |walk |only if subzone("Aerie Peak") and _G.IsIndoors()
Enter the building |goto The Hinterlands 14.19,45.18 < 30 |walk |only if not subzone("Wildhammer Keep")
talk Fraggar Thundermantle##7884
|tip Inside the building.
turnin Skulk Rock Clean-up##2877 |goto The Hinterlands 14.83,44.56
]]
)
