local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Swamp of Sorrows (38-39)',
  {
    next = 'Leveling Guides\\Alterac Mountains (39-39)',
  },
  [[
step
talk Jasper Fel##1325
.tip Inside the building.
.tip Stock up on poisons.
.tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Jasper Fel##1325 |goto Stormwind City/0 78.32,58.97 |q 1448 |future
|only if Rogue
step
Enter the building |goto Stormwind City,63.60,22.83,10 |walk
talk Brohann Caskbelly##5384
.tip Inside the building.
accept In Search of The Temple##1448 |goto Stormwind City 64.33,20.66
step
Enter the building |goto Stormwind City,39.84,85.25,10 |walk
talk Angus Stern##1141
.tip Inside the building.
accept Morgan Stern##1260 |goto Stormwind City 41.50,89.39
step
Enter the building |goto Stormwind City,50.94,57.84,7 |walk
talk Frederick Stover##1298
buy Massive Longbow##11307 |n
.tip If you can afford it.
.tip It's a limited supply item, so it may not be for sale.
.tip You can't use it until level 42, but it's good to have waiting to use, and you can only buy it in Stormwind City and Ironforge.
.tip We will check vendors for it along the way, if it's not here right now.
.tip If you have better, skip this step.
Visit the Vendor |vendor Frederick Stover##1298 |goto Stormwind City 49.98,57.64 |q 1260
|only if Hunter and itemcount(11307) == 0
step
Enter the building |goto Stormwind City,29.14,74.17,10 |walk
talk Spackle Thornberry##5520
.tip Downstairs inside the building.
.tip If you can afford them.
.tip Buy all of the Grimoires for spells that are upgrades for the spells you use with your pet.
.tip After buying them, make sure to use them in your bags to learn the spells.
Visit the Vendor |vendor Spackle Thornberry##5520 |goto Stormwind City 25.66,77.66 |q 1260
|only if Warlock
step
Enter the building |goto Duskwood,75.56,45.37,10 |walk
talk Alyssa Eva##1673
.tip Inside the building.
.tip If you can afford it.
.tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Alyssa Eva##1673 |goto Duskwood 76.28,45.27 |q 1260
|only if Mage
step
NOTE:
Be very careful to avoid the Stonard Scouts
.tip They are currently bugged and will PvP flag you just for being near them.
.tip This will let horde players attack and kill your character for the next 5 minutes.
Click Here To Confirm |confirm
|only if hardcore
step
Follow the road through Deadwind Pass |goto Duskwood,87.73,40.68,40 |only if walking and not zone("Swamp of Sorrows")
Cross the bridge |goto Deadwind Pass/0,41.89,34.66,20 |only if walking and not zone("Swamp of Sorrows")
Continue following the road into Swamp of Sorrows |goto Deadwind Pass,52.04,43.41,30 |only if walking and not zone("Swamp of Sorrows")
Kill Whelp enemies around this area
.tip They look like tiny flying dragons.
.tip There's not enough whelps here to complete the quest without waiting for respawns.
.tip Kill all of the whelps you can find, then skip to the next step.
.tip We'll come back later to finish up the quest.
collect 10 Speck of Dream Dust##5803 |q 1116/1 |goto Swamp of Sorrows 14.74,60.20
step
NOTE:
Pick up all the gathering quests from the quest givers around the Harborage
talk Ocniir##45875
accept Ocniir's Beloved Rods##26913 |goto Swamp of Sorrows 29.53,35.14
step
talk Barthus##45877
accept Karabor Stew##26916 |goto Swamp of Sorrows 28.15,36.12
accept Eight-Legged Fillets##26917 |goto Swamp of Sorrows 28.15,36.12
accept A Real Kick##26918 |goto Swamp of Sorrows 28.15,36.12
step
talk Elder Ghast##11874
accept Skins of the Swamp##26920 |goto Swamp of Sorrows 26.97,40.45
.tip This quest has a follow-up that you'll pick up later with driftwood.
step
click Wanted: Spinnaret poster
accept Wanted: Spinnaret##26923 |goto Swamp of Sorrows 23.68,43.12
step
click Ocniir's Chest##250357
|goto Swamp of Sorrows 31.30,39.34
.tip This is the shipwreck south of the Harborage.
step
kill 10 Silt Crawler##922 |q 26916/1 |goto Swamp of Sorrows 45,55
.tip These are found along the eastern coast of the Swamp.
collect 10 Massive Crawler Claw##62780 |q 26916/1
step
kill 10 Deathstrike Tarantula##769 |q 26917/1 |goto Swamp of Sorrows 35,45
.tip These are found southeast of the Harborage.
collect 10 Engorged Spider Fillet##62781 |q 26917/1
step
collect 8 Fire Snap Chili Pepper##62782 |q 26918/1 |goto Swamp of Sorrows 25,40
.tip These are Fire Snap Chili plants scattered around the Swamp.
.tip Click on the plants to collect peppers.
step
kill 8 Young Sawtooth Crocolisk##1084 |q 26920/1 |goto Swamp of Sorrows 24.26,41.68
.tip You can find more around the area.
collect 8 Thick Crocolisk Skin##62785 |q 26920/1
step
kill 8 Swamp Jaguar##767 |q 26920/2 |goto Swamp of Sorrows 22.74,42.75
.tip You can find these around the swamp.
collect 8 Tough Jaguar Skin##62786 |q 26920/2
step
kill Spinnaret##45883 |q 26923/1 |goto Swamp of Sorrows 40,55
.tip This spider boss is found east of the Harborage.
step
Follow the path |goto Swamp of Sorrows,17.74,55.71,40 |only if walking and subzone("Itharius's Cave")
talk Watcher Biggs##5476
accept Encroaching Wildlife##1396 |goto Swamp of Sorrows 26.74,59.83
stickystart "Kill_Young_Sawtooth_Crocolisks"
stickystart "Kill_Sorrow_Spinners"
stickystart "Kill_Swamp_Jaguars"
step
path	follow strict;	loop;	ants curved;	dist 30
path	32.39,35.38		33.15,43.58		37.34,46.76		42.24,33.84
path	47.11,38.83		49.86,40.28		54.02,39.21		55.84,35.85
kill Noboru the Cudgel##5477
.tip He looks like a larger Lost One creature that walks around this area with 2 bodyguards.
collect Noboru's Cudgel##6196 |q 1392 |future
step
use Noboru's Cudgel##6196
accept Noboru the Cudgel##1392
step
talk Magtoor##1776
turnin Noboru the Cudgel##1392 |goto Swamp of Sorrows 25.99,31.40
accept Draenethyst Crystals##1389 |goto Swamp of Sorrows 25.99,31.40
step
label "Kill_Young_Sawtooth_Crocolisks"
kill 8 Young Sawtooth Crocolisk##1084 |q 1396/1 |goto Swamp of Sorrows 24.26,41.68
You can find more around: |notinsticky
[26.24,52.44]
[31.68,47.06]
[30.90,39.17]
[35.26,34.86]
step
label "Kill_Sorrow_Spinners"
kill 10 Sorrow Spinner##858 |q 1396/2 |goto Swamp of Sorrows 21.91,40.55
.tip They look like spiders.
You can find more around: |notinsticky
[26.91,46.17]
[24.13,61.24]
[38.10,30.72]
step
label "Kill_Swamp_Jaguars"
kill 10 Swamp Jaguar##767 |q 1396/3 |goto Swamp of Sorrows 22.74,42.75
You can find more around: |notinsticky
[30.59,51.52]
[37.17,47.91]
[43.06,42.32]
[37.77,38.04]
[37.85,31.20]
step
Kill Whelp enemies around this area
.tip They look like tiny flying dragons.
.tip Skip this step once you fully clear the area, we'll come back again.
collect 10 Speck of Dream Dust##5803 |q 1116/1 |goto Swamp of Sorrows 14.74,60.20
step
Follow the path |goto Swamp of Sorrows,17.74,55.71,40 |only if walking and subzone("Itharius's Cave")
talk Watcher Biggs##5476
turnin Encroaching Wildlife##1396 |goto Swamp of Sorrows 26.74,59.83
accept The Lost Caravan##1421 |goto Swamp of Sorrows 26.74,59.83
stickystart "Collect_Draenethyst_Crystals"
step
kill Ongeku##5622
.tip He walks around this area, and can spawn in multiple locations.
.tip Watch for enemies around the buildings here as they tend to aggro in groups. |only if hardcore
.tip Pull carefully while in the area. |only if hardcore
.tip Watch for patrols and respawns while in the area. |only if hardcore
collect Draenethyst Shard##6190 |q 1373/1 |goto Swamp of Sorrows 61.31,23.25
Also check around [65.12,22.22]
|only if not hardcore
step
click Caravan Chest##28024
.tip Watch for enemies around the buildings here as they tend to aggro in groups. |only if hardcore
.tip Pull carefully while in the area. |only if hardcore
.tip Watch for patrols and respawns while in the area. |only if hardcore
collect Wizards' Reagents##6170 |q 1421/1 |goto Swamp of Sorrows 64.46,18.34
step
talk Galen Goodward##5391
.tip This is an escort quest.
.tip If he's not here, someone may be escorting him.
.tip Wait until he respawns.
.tip Clear nearby enemies while waiting. |only if hardcore
.tip He walks through enemies to the south, so you may want to clear a path before accepting this quest.
accept Galen's Escape##1393 |goto Swamp of Sorrows 65.41,18.23 |noautoaccept
|only if not hardcore
step
Watch the dialogue
.tip Follow Galen Goodward and protect him as he walks.
.tip He eventually walks to this location.
Escort Galen Out of the Fallow Sanctuary |q 1393/1 |goto Swamp of Sorrows 53.05,29.64
|only if not hardcore
step
label "Collect_Draenethyst_Crystals"
click Draenethyst Crystal##22550+
.tip They look like large clusters of blue crystals on the ground around this area.
.tip Watch for enemies around the buildings here as they tend to aggro in groups. |only if hardcore |notinsticky
.tip Pull carefully while in the area. |only if hardcore |notinsticky
.tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
collect 6 Draenethyst Crystal##6071 |q 1389/1 |goto Swamp of Sorrows 55.74,27.60
You can find more around [63.50,22.72]
step
Search for the Temple of Atal'Hakkar |q 1448/1 |goto Swamp of Sorrows 66.68,49.62
step
click Galen's Strongbox##32569
turnin Galen's Escape##1393 |goto Swamp of Sorrows 47.81,39.76
|only if not hardcore
step
talk Magtoor##1776
turnin Draenethyst Crystals##1389 |goto Swamp of Sorrows 25.99,31.40
step
talk Watcher Biggs##5476
turnin The Lost Caravan##1421 |goto Swamp of Sorrows 26.74,59.83
step
talk Ocniir##45875
turnin Ocniir's Beloved Rods##26913 |goto Swamp of Sorrows 29.53,35.14
step
talk Barthus##45877
turnin Karabor Stew##26916 |goto Swamp of Sorrows 28.15,36.12
turnin Eight-Legged Fillets##26917 |goto Swamp of Sorrows 28.15,36.12
turnin A Real Kick##26918 |goto Swamp of Sorrows 28.15,36.12
step
talk Elder Ghast##11874
turnin Skins of the Swamp##26920 |goto Swamp of Sorrows 26.97,40.45
step
talk Wanted Master##45876
turnin Wanted: Spinnaret##26923 |goto Swamp of Sorrows 26.97,40.45
step
Kill Whelp enemies around this area
.tip They look like tiny flying dragons.
.tip If you don't finish in one clear, grind mobs in the area and come back once the whelps are respawned.
collect 10 Speck of Dream Dust##5803 |q 1116/1 |goto Swamp of Sorrows 14.74,60.20
step
talk Krazek##773
.tip Upstairs inside the building, on the top floor.
turnin Dream Dust in the Swamp##1116 |goto Stranglethorn Vale 26.94,77.21
step
Watch the dialogue
talk Krazek##773
.tip Upstairs inside the building, on the top floor.
accept Rumors for Kravel##1117 |goto Stranglethorn Vale 26.94,77.21
step
Enter the building |goto Stormwind City,50.94,57.84,7 |walk
talk Frederick Stover##1298
buy Massive Longbow##11307 |n
.tip If you can afford it.
.tip It's a limited supply item, so it may not be for sale.
.tip You can't use it until level 42, but it's good to have waiting to use, and you can only buy it in Stormwind City and Ironforge.
.tip We will check vendors for it along the way, if it's not here right now.
.tip If you have better, skip this step.
Visit the Vendor |vendor Frederick Stover##1298 |goto Stormwind City 49.98,57.64 |q 1448
|only if Hunter and itemcount(11307) == 0
step
Enter the building |goto Stormwind City,55.30,68.14,10 |walk
talk Olivia Burnside##2455
.tip Inside the building.
.tip Collect these items from the bank.
collect Karnitol's Satchel##6245 |goto Stormwind City 57.66,72.78 |q 1457
collect Bag of Water Elemental Bracers##3960 |goto Stormwind City 57.66,72.78 |q 602
step
talk Jasper Fel##1325
.tip Inside the building.
.tip You're about to travel to an area where there aren't poison vendors nearby.
.tip Stock up on poisons.
.tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Jasper Fel##1325 |goto Stormwind City/0 78.32,58.97 |q 1448
|only if Rogue
step
talk Olivia Burnside##2455
.tip Inside the building.
.tip Deposit these items into the bank.
bank Goblin Rumors##5804 |goto Stormwind City/0 57.66,72.78 |q 1117 |future
step
Enter the building |goto Stormwind City/0,54.07,59.02,10 |walk
talk Auctioneer Jaxon##15659
.tip Buy these items from the Auction House.
.tip If you can't get them, you can skip this step. They just make some quests easier to do later, but you can still get it done without them.
collect 2 Elixir of Water Breathing##5996 |goto Stormwind City/0 53.61,59.76 |q 668 |future
|only if not (Druid or Warlock)	and not selfmade
step
Enter the building |goto Stormwind City,73.64,43.52,10 |walk
talk Heinrich Stone##1324
.tip Inside the building.
buy Rondel##2534 |n
.tip If you can afford it.
.tip If you have better, skip this step.
Visit the Vendor |vendor Heinrich Stone##1324 |goto Stormwind City 74.37,42.56 |q 668 |future
|only if Rogue and itemcount(2534) == 0
step
Enter the building |goto Stormwind City,63.59,22.85,10 |walk
talk Brohann Caskbelly##5384
.tip Inside the building.
turnin In Search of The Temple##1448 |goto Stormwind City 64.33,20.66
accept To The Hinterlands##1449 |goto Stormwind City 64.33,20.66
step
Optional Route Change
.tip You can opt to do Scarlet Monastery around level 39 instead of grinding.
.tip This is highly recommended due to weapon upgrades from a quest. |only if Rogue or Warrior
.tip We will do Library, Armory, and Cathedral.
.tip This will mean slower leveling but it will be more fun and potentially give you gear upgrades.
.tip If you choose to do Scarlet Monastery, we will say when to accept and turnin dungeon quests that are worth doing in your route.
.tip We will also say when it is a good time to do the dungeon.
NOTE:
.tip This feature is currently experimental and may result in a full quest log. If this happens, please submit a feedback report so we can fix it!
.tip If you have a full quest log, we recommend abandoning any dungeon quests that can be shared by your party members later.
Click Here if you'd like to run Scarlet Monastery later |confirm SMflag
Click Here if you'd prefer to grind |confirm
step
talk Roetten Stonehammer##5637
.tip He walks around inside the building.
turnin The Karnitol Shipwreck##1457 |goto Ironforge 67.91,17.52
step
talk Prospector Stormpike##1356
.tip Inside the building.
accept Further Mysteries##525 |goto Ironforge 74.64,11.74
step
talk Librarian Mae Paledust##3979
accept Mythology of the Titans##1050 |goto Ironforge 74.97,12.46
|only if guideflag("SMflag")
step
Enter the building |goto Ironforge,72.16,67.56,7 |walk
talk Skolmin Goldfury##5122
buy Massive Longbow##11307 |n
.tip If you can afford it.
.tip It's a limited supply item, so it may not be for sale.
.tip You can't use it until level 42, but it's good to have waiting to use, and you can only buy it in Stormwind City and Ironforge.
.tip We will check vendors for it along the way, if it's not here right now.
.tip If you have better, skip this step.
Visit the Vendor |vendor Skolmin Goldfury##5122 |goto Ironforge 71.76,66.70 |q 500 |future
|only if Hunter and itemcount(11307) == 0
step
Enter the building |goto Ironforge,26.10,72.19,15 |walk
talk Auctioneer Redmuse##8720
.tip Inside the building.
.tip Buy these items from the Auction House.
.tip If you can't get them, you can kill enemies for them later, but it will likely take a long time.
.tip You need these for your Whirlwind weapon class quest, which gives a big weapon upgrade.
collect 8 Thundering Charm##4480 |goto Ironforge 24.16,74.67 |q 1714 |future
collect 8 Burning Charm##4479 |goto Ironforge 24.16,74.67 |q 1714 |future
collect 8 Cresting Charm##4481 |goto Ironforge 24.16,74.67 |q 1714 |future
collect 2 Nature Protection Potion##6052 |goto Ironforge 24.16,74.67 |q 1713 |future
.tip You will have to kill a level 40 elite enemy soon, which hits hard and deals only Nature damage.
.tip These will help you to have more time to kill it to be able to get a big weapon upgrade.
.tip Alternatively, if you can easily get a friend to help you kill it very soon, you can skip buying the potions.
|only if Warrior and not selfmade
step
kill Cresting Exile##2761+
collect 8 Cresting Charm##4481 |goto Arathi Highlands 66.71,30.04 |q 1714 |future
|only if Warrior
step
kill Thundering Exile##2762+
collect 8 Thundering Charm##4480 |goto Arathi Highlands 52.05,50.59 |q 1714 |future
|only if Warrior
step
kill Burning Exile##2760+
.tip Be careful to avoid Refuge Point while traveling here.
collect 8 Burning Charm##4479 |goto Arathi Highlands 25.40,30.28 |q 1714 |future
|only if Warrior
]]
)
