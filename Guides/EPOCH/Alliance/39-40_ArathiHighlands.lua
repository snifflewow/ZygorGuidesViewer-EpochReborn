local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Arathi Highlands (39-40)',
  {
    next = 'Leveling Guides\\Dustwallow Marsh (40-40)',
  },
  [[
step
NOTE:
Save Cloth in Your Bank as You Level
.tip Once you are close to reaching level 60, you will need 240 of each type of cloth.
.tip As you level and collect Mageweave Cloth naturally from killing enemies while following the guide, make sure you deposit the cloth into a bank whenever you are near one.
.tip This will give you about 40,000 quick and easy xp to help you get to level 60 faster in the longer later levels.
Click Here to Continue |confirm
|only if level < 60
step
map Hillsbrad Foothills
path follow strict; loop off; ants straight; dist 40; markers none
path	55.64,19.67	55.67,24.84	55.96,29.02	57.76,36.69	62.45,41.43
path	65.74,42.56	68.19,45.57	72.49,48.23	77.21,53.20	80.37,55.32
path	81.99,56.91
map Arathi Highlands
path	20.22,29.62	21.63,31.75	22.57,34.04	22.76,38.68	23.72,43.33
path	25.44,46.63	26.54,49.19	31.09,51.86	34.82,52.25	38.27,53.51
path	39.53,54.77	43.02,55.12	45.37,58.95	46.82,59.78	48.79,59.23
path	50.81,59.99	52.10,61.37	55.34,62.36	56.58,62.96	57.64,62.70
path	59.19,62.94	60.56,61.21	61.12,59.49	60.24,59.11
kill Forsaken Courier##2714
.tip She walks one-way on the road from Go'Shek Farms in Arathi Highlands to Tarren Mill in Hillsbrad Foothills.
.tip She walks with a group of 4 bodyguards with her.
.tip Kite her away from her bodyguards, so you can fight her alone.
.tip If she makes it to Tarren Mill, she respawns at the small house in Arathi Highlands and starts the walk over again.
.tip If you make it to the small house in Arathi Highlands, and still haven't found her, kill orcs nearby the house until she spawns.
.tip If you have trouble, try to find someone to help you.
.tip The Sealed Folder is not a guaranteed drop, you may need to kill her more than once.
collect Sealed Folder##4482 |q 658/1
step
talk Apprentice Kryten##2788
accept Worth Its Weight in Gold##691 |goto Arathi Highlands 46.20,47.75
step
click Shards of Myzrael##138492
accept The Princess Trapped##642 |goto Arathi Highlands 62.50,33.80
step
Avoid Hammerfall |goto Arathi Highlands,72.95,40.77,50 |only if walking
Kill Drywhisker enemies around this area
.tip You can find more in the cave at the top of the path referenced below.
.tip You turn this quest in at the very back of the cave, start clearing your way towards the end once you have 9 of the Motes.
.tip Be mindful of your surroundings. |only if hardcore
.tip Specifically, watch out for Drywhisker Surveyors as they are casters that deal heavy damage. |only if hardcore
collect 12 Mote of Myzrael##4435 |q 642/1 |goto Arathi Highlands 76.13,44.11
You can find more:
Around [78.07,35.28]
Up the path that starts at [80.84,39.91]
step
Follow the path up |goto Arathi Highlands,80.90,39.96,10 |only if walking and not _G.IsIndoors()
Enter the cave |goto Arathi Highlands,82.66,36.16,15 |walk |only if not _G.IsIndoors()
click Iridescent Shards
.tip Upstairs inside the cave.
.tip Watch for patrols and respawns while in the cave.		|only if hardcore
.tip Drywhisker Surveyors are casters that deal heavy damage.	|only if hardcore
turnin The Princess Trapped##642 |goto Arathi Highlands 84.31,30.92
accept Stones of Binding##651 |goto Arathi Highlands 84.31,30.92
step
Leave the cave |goto Arathi Highlands,82.69,36.21,15 |walk |only if subzone("Drywhisker Gorge") and _G.IsIndoors()
Avoid Hammerfall |goto Arathi Highlands,73.48,41.26,50 |only if walking and (subzone("Drywhisker Gorge") or subzone("Hammerfall"))
click Stone of East Binding##2691
collect Cresting Key##4484 |q 651/2 |goto Arathi Highlands 66.75,29.75
step
talk Quae##2712
turnin Hints of a New Plague?##658 |goto Arathi Highlands 60.19,53.85
accept Hints of a New Plague?##657 |goto Arathi Highlands 60.19,53.85
step
NOTE:
Incoming Escort Quest
.tip This quest has enemies that will ambush you in 2's and 3's.
.tip The difficulty may vary depending on the levels of control your class has.
.tip Skipping this will result in a loss of 6,400 xp.
.tip Be sure to turn in the quest before the escort if you decide not to do the quest.
Click Here to Continue |confirm |q 660 |future
|only if hardcore
step
talk Kinelory##2713
.tip This is an escort quest.
.tip If she's not here, someone may be escorting her.
.tip Wait for her to respawn.
turnin Hints of a New Plague?##657 |goto Arathi Highlands 60.24,53.92
accept Hints of a New Plague?##660 |goto Arathi Highlands 60.24,53.92 |noautoaccept
step
Watch the dialogue
.tip Follow Kinelory and protect her as she walks.
.tip She eventually walks back to this location.
.tip If you have trouble, try to find someone to help you.
Protect Kinelory |q 660/1 |goto Arathi Highlands 60.24,53.92
step
talk Quae##2712
turnin Hints of a New Plague?##660 |goto Arathi Highlands 60.19,53.85
accept Hints of a New Plague?##661 |goto Arathi Highlands 60.19,53.85
stickystart "Collect_Witherbark_Medicine_Pouches"
stickystart "Collect_Witherbark_Tusks"
step
Enter the cave |goto Arathi Highlands,68.32,75.18,15 |walk
kill Witherbark Shadow Hunter##2557+
.tip Inside the cave.
.tip These tend to have a low drop rate.
.tip Watch for patrols and respawns while in the cave.		|only if hardcore
.tip Enemies may run away in fear at low health.		|only if hardcore
.tip Destroy totems that Witherbark Witch Doctores create.	|only if hardcore
.tip Witherbark Axe Throwers are ranged attackers.		|only if hardcore
collect Shadow Hunter Knife##5040 |q 691/3 |goto Arathi Highlands 67.59,78.45
.tip Be careful not to accidentally sell this to a vendor.
step
label "Collect_Witherbark_Medicine_Pouches"
Leave the cave |goto Arathi Highlands,68.32,75.18,15 |walk |only if subzone("Witherbark Village") and _G.IsIndoors()
kill Witherbark Witch Doctor##2555+
.tip Inside and outside the cave. |notinsticky
.tip Be mindful of your surroundings as it's easy to be overwhelmed. |only if hardcore |notinsticky
.tip Witherbark Witch Doctors, Axe Throwers and Headhunters are all ranged enemies to look out for. |only if hardcore |notinsticky
collect 4 Witherbark Medicine Pouch##4522 |q 691/2 |goto Arathi Highlands 66.66,64.37
You can find more outside the cave around: |notinsticky
[61.45,72.04]
[64.79,72.83]
[70.29,68.39]
[72.11,64.09]
[70.82,60.27]
step
label "Collect_Witherbark_Tusks"
Kill Witherbark enemies around this area |notinsticky
.tip Inside and outside the cave. |notinsticky
.tip Be mindful of your surroundings as it's easy to be overwhelmed. |only if hardcore |notinsticky
.tip Witherbark Witch Doctors, Axe Throwers and Headhunters are all ranged enemies to look out for. |only if hardcore |notinsticky
collect 10 Witherbark Tusk##4503 |q 691/1 |goto Arathi Highlands 66.66,64.37
You can find more outside the cave around: |notinsticky
[61.45,72.04]
[64.79,72.83]
[70.29,68.39]
[72.11,64.09]
[70.82,60.27]
step
click Stone of Outer Binding##2690
collect Thundering Key##4485 |q 651/3 |goto Arathi Highlands 52.04,50.77
step
talk Apprentice Kryten##2788
turnin Worth Its Weight in Gold##691 |goto Arathi Highlands 46.20,47.75
step
talk Skuerto##2789
accept Wand over Fist##693 |goto Arathi Highlands 46.65,47.01
step
Leave Refuge Pointe |goto Arathi Highlands,43.94,50.56,30 |only if walking and subzone("Refuge Pointe")
Enter the cave |goto Arathi Highlands,53.75,77.37,15 |walk
Follow the path |goto Arathi Highlands,54.63,79.26,10 |walk
kill Kor'gresh Coldrage##2793
.tip Inside the cave.
collect Trelane's Wand of Invocation##4525 |q 693/1 |goto Arathi Highlands 54.75,81.87
step
Leave the cave |goto Arathi Highlands,53.68,77.23,15 |walk |only if subzone("Boulderfist Hall") and _G.IsIndoors()
Kill enemies around this area
.tip Getting this far into level 39 will allow you to reach level 40 after turning in quests soon.
.tip You are about to have to complete a fairly difficult escort quest, and a handful of quests underwater, so it will help to be a level higher.
ding 39,80000 |goto Arathi Highlands 52.56,75.33
step
Leave the cave |goto Arathi Highlands,53.68,77.23,15 |walk |only if subzone("Boulderfist Hall") and _G.IsIndoors()
talk Skuerto##2789
turnin Wand over Fist##693 |goto Arathi Highlands 46.65,47.01
step
talk Vikki Lonsav##2808
.tip Buy enough ammo to fill your ammo bag, plus 4-6 extra stacks.
.tip You will be questing for a while without access to an ammo vendor.
Visit the Vendor |vendor Vikki Lonsav##2808 |goto Arathi Highlands 46.45,47.60 |q 651
|only if Hunter
step
Leave Refuge Pointe |goto Arathi Highlands,43.94,50.56,30 |only if walking and subzone("Refuge Pointe")
click Stone of West Binding
collect Burning Key##4483 |q 651/1 |goto Arathi Highlands 25.45,30.16
step
click Stone of Inner Binding##2702
turnin Stones of Binding##651 |goto Arathi Highlands 36.19,57.37
step
Follow the path |goto Arathi Highlands,31.22,65.35,30 |only if walking and not subzone("Faldir's Cove")
Enter the tunnel |goto Arathi Highlands,21.58,75.61,15 |only if walking and not subzone("Faldir's Cove")
Leave the tunnel |goto Arathi Highlands,22.00,79.55,15 |only if walking and not subzone("Faldir's Cove")
talk Lolo the Lookout##2766
.tip He walks around this area.
accept Land Ho!##663 |goto Arathi Highlands 31.78,82.70
step
talk Shakes O'Breen##2610
turnin Land Ho!##663 |goto Arathi Highlands 32.28,81.38
step
talk First Mate Nilzlix##2767
.tip He walks around this area.
accept Deep Sea Salvage##662 |goto Arathi Highlands 32.77,81.47
step
talk Captain Steelgut##2769
accept Drowned Sorrows##664 |goto Arathi Highlands 34.00,80.79
step
talk Professor Phizzlethorpe##2768
.tip This is an escort quest.
.tip If he's not here, someone may be escorting him.
.tip Wait until he respawns.
accept Sunken Treasure##665 |goto Arathi Highlands 33.87,80.55 |noautoaccept
step
Watch the dialogue
.tip Follow Professor Phizzlethorpe as he walks.
.tip He eventually walks back to this location.
Kill the enemies that attack
.tip Two level 40 water elementals will attack.
.tip They will be immune to Frost damage.
.tip If you have trouble, try to find someone to help you.
Defend Professor Phizzlethorpe |q 665/1 |goto Arathi Highlands 33.87,80.55
step
talk Doctor Draxlegauge##2774
turnin Sunken Treasure##665 |goto Arathi Highlands 33.86,80.45
accept Sunken Treasure##666 |goto Arathi Highlands 33.86,80.45
step
Equip the Goggles of Gem Hunting
.tip They should be in your bags.
Click Here After Equipping The Goggles |confirm |q 666
step
use an Elixir of Water Breathing##5996
.tip You should have these from purchasing them earlier in the guide from the auction house in Stormwind City.
Gain Water Breathing |havebuff Water Breathing##7178 |goto Arathi Highlands 28.42,84.79 |q 666
|only if not (Druid or Warlock) and itemcount(5996) > 0 and not selfmade
stickystart "Collect_Elven_Gems"
stickystart "Kill_Daggerspine_Sorceresses"
stickystart "Kill_Daggerspine_Raiders"
step
click Maiden's Folly Log##2709
.tip It looks like a large brown book in a grey metal cauldron.
.tip On the middle floor of the sunken ship.
collect Maiden's Folly Log##4489 |q 662/2 |goto Arathi Highlands 23.41,85.10
step
click Maiden's Folly Charts##2707
.tip It looks like a tan scroll laying flat on a wooden ledge.
.tip On the middle floor of the sunken ship.
collect Maiden's Folly Charts##4487 |q 662/1 |goto Arathi Highlands 23.04,84.51
step
click Spirit of Silverpine Charts##2708
.tip It looks like a tan scroll laying flat on a wooden crate next to a cannon.
.tip On the middle floor of the sunken ship.
collect Spirit of Silverpine Charts##4488 |q 662/3 |goto Arathi Highlands 20.45,85.60
step
click Spirit of Silverpine Log##2710
.tip It looks like an open book laying on the ground.
.tip At the very bottom of the ship.
collect Spirit of Silverpine Log##4490 |q 662/4 |goto Arathi Highlands 20.65,85.10
step
label "Collect_Elven_Gems"
click Calcified Elven Gem##2712+
.tip They look like large gray stones on the ground underwater around this area.
.tip If you are wearing the Goggles of Gem Hunting, they will appear on your minimap as yellow dots.
collect 10 Elven Gem##4492 |q 666/1 |goto Arathi Highlands 25.03,85.70
You can find more around: |notinsticky
[24.65,90.70]
[18.60,90.36]
[19.70,84.18]
step
label "Kill_Daggerspine_Sorceresses"
kill 3 Daggerspine Sorceress##2596 |q 664/2 |goto Arathi Highlands 22.83,87.29
.tip Underwater around this area. |notinsticky
step
label "Kill_Daggerspine_Raiders"
kill 10 Daggerspine Raider##2595 |q 664/1 |goto Arathi Highlands 22.83,87.29
.tip Underwater around this area. |notinsticky
step
talk First Mate Nilzlix##2767
.tip He walks around this area.
turnin Deep Sea Salvage##662 |goto Arathi Highlands 32.80,81.48
step
talk Captain Steelgut##2769
turnin Drowned Sorrows##664 |goto Arathi Highlands 34.00,80.79
step
talk Doctor Draxlegauge##2774
turnin Sunken Treasure##666 |goto Arathi Highlands 33.85,80.45
.tip The Gnomish Zapper reward may be a decent upgrade.	|only if Priest
accept Sunken Treasure##668 |goto Arathi Highlands 33.85,80.45
step
Equip Your Regular Head Armor
Click Here After Equipping Your Regular Head Armor |confirm |q 668
step
talk Shakes O'Breen##2610
turnin Sunken Treasure##668 |goto Arathi Highlands 32.29,81.38
accept Sunken Treasure##669 |goto Arathi Highlands 32.29,81.38
step
talk Phin Odelic##2711
turnin Hints of a New Plague?##661 |goto Hillsbrad Foothills 50.34,59.04
step
NOTE:
You Have Access to Stronger Ammo
.tip Now that you're level 40, you can purchase stronger bullets or arrows.
.tip When you restock ammo at vendors, make sure to buy level 40 ammo.
Click Here to Continue |confirm |q 669
|only if Hunter
step
Enter the building |goto Stormwind City,43.02,34.40,10 |walk
talk Duthorian Rall##6171
.tip Inside the building.
accept The Tome of Nobility##1661 |goto Stormwind City 39.81,29.80
|only if Paladin
step
talk Duthorian Rall##6171
.tip Inside the building.
turnin The Tome of Nobility##1661 |goto Stormwind City 39.81,29.80
|only if Paladin
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 1286 |future
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 1286 |future
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock |q 1286 |future
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 1286 |future
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue |q 1286 |future
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 1286 |future
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 1286 |future
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 1286 |future
.tip Inside the tower. |only if Mage
.tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
.tip He patrols inside. |only if Priest
.tip In the basement. |only if Warlock
.tip Train your spells.
.tip This is a good time to go buy your mount. |only if not Paladin or Warlock
step
Enter the building |goto Stormwind City,29.14,74.17,10 |walk
talk Spackle Thornberry##5520
.tip Downstairs inside the building.
.tip If you can afford them.
.tip Buy all of the Grimoires for spells that are upgrades for the spells you use with your pet.
.tip After buying them, make sure to use them in your bags to learn the spells.
Visit the Vendor |vendor Spackle Thornberry##5520 |goto Stormwind City 25.66,77.66 |q 669
|only if Warlock
step
talk Librarian Mae Paledust##3979
turnin Mythology of the Titans##1050 |goto Ironforge 74.97,12.46
|only if guideflag("SMflag")
]]
)
