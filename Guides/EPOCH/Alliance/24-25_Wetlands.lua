local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Wetlands (24-25)',
  {
    next = 'Leveling Guides\\Duskwood (25-27)',
  },
  [[
step
Follow the path |goto Stormwind City,74.74,53.70,10 |only if walking
Enter the building |goto Stormwind City,77.14,58.02,10 |walk
talk Master Mathias Shaw##332
.tip Upstairs inside the building.
accept Mathias and the Defias##2360 |goto Stormwind City 75.78,59.85
|only if Rogue
step
talk Thor##523
fpath Sentinel Hill |goto Westfall 56.56,52.64
|only if Rogue
step
talk Agent Kearnen##7024
turnin Mathias and the Defias##2360 |goto Westfall 68.49,70.08
accept Klaven's Tower##2359 |goto Westfall 68.49,70.08
|only if Rogue
step
collect Defias Tower Key##7923 |q 2359/2 |goto Westfall 71.63,73.91
.tip Use your "Pickpocket" ability on a Malformed Defias Drone.
.tip He walks around this area.
|only if Rogue
step
Enter the building |goto Westfall,69.97,74.07,10 |walk
click Duskwood Chest##123214
.tip Upstairs inside the building, on the top level.
.tip You will get a debuff after opening it.
.tip Use your "Sap" ability on Klaven Mortwake nearby before clicking the chest.
.tip He is elite, but you should be fine.
.tip If you have trouble, try to find someone to help you.
collect Klaven Mortwake's Journal##7908 |q 2359/1 |goto Westfall 70.41,73.93
|only if Rogue
step
Leave the building |goto Westfall,69.95,74.04,10 |walk |only if zone("Westfall") and _G.IsIndoors()
Follow the path |goto Stormwind City,74.74,53.70,10 |only if walking
Enter the building |goto Stormwind City,77.14,58.02,10 |walk
talk Master Mathias Shaw##332
.tip Upstairs inside the building.
turnin Klaven's Tower##2359 |goto Stormwind City 75.78,59.85
accept The Touch of Zanzil##2607 |goto Stormwind City 75.78,59.85
|only if Rogue
step
talk Doc Mixilpixil##7207
.tip Downstairs inside the building.
turnin The Touch of Zanzil##2607 |goto Stormwind City 78.04,58.77
accept The Touch of Zanzil##2608 |goto Stormwind City 78.04,58.77
|only if Rogue
step
Watch the dialogue
.tip Use the "/lay" emote (type it in your chat) while targeting Doc Mixilpixil.
Complete the Diagnosis |q 2608/1 |goto Stormwind City 78.04,58.77
|only if Rogue
step
talk Doc Mixilpixil##7207
.tip Downstairs inside the building.
turnin The Touch of Zanzil##2608 |goto Stormwind City 78.04,58.77
|only if Rogue
step
Remove the Touch of Zanzil |nobuff Touch of Zanzil##9991
.tip You will still have the "Touch of Zanzil" debuff.
.tip There is a quest to remove the debuff.
.tip The quest makes you gather items in Stormwind City, but gathering the items can cost a lot of silver.
.tip To remove the buff without doing the quest and wasting money, you have 2 options:
.tip If you have First Aid leveled, create an "Anti-Venom" and use it on yourself.
.tip You can also try to buy one from the Auction House, they're usually cheap. |only if not selfmade
.tip Alternatively, try to ask a Druid player to use their "Cure Poison" ability on you.
|only if Rogue
step
talk Jasper Fel##1325
.tip Inside the building, on the middle floor.
.tip Stock up on Dust of Decay and Empty Vials, at least 20 of each.
.tip You will use these to create poisons soon to use on your weapon to help you deal more damage.
.tip The poisons only last for 30 minutes, so you want to have enough to be able to always poison your weapon.
Visit the Vendor |vendor Jasper Fel##1325 |goto Stormwind City 78.32,58.98 |q 484 |future
|only if Rogue
step
Enter the building |goto Ironforge,27.69,12.34,20 |walk
talk Milstaff Stormeye##2489
.tip Inside the building.
learnspell Teleport: Ironforge##3562 |goto Ironforge 25.50,7.07
|only if Mage
step
Enter the building |goto Ironforge,30.43,26.37,7 |walk
talk Ginny Longberry##5151
.tip Inside the building.
.tip If you can afford it.
.tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Ginny Longberry##5151 |goto Ironforge 31.32,27.79 |q 484 |future
|only if Mage
step
take the boat to Wetlands
step
talk James Halloran##2094
.tip He walks around this area.
accept Young Crocolisk Skins##484 |goto Wetlands 8.51,55.71
step
talk Karl Boran##1242
.tip He walks around this area.
accept Claws from the Deep##279 |goto Wetlands 8.31,58.53
step
talk First Mate Fitzsimmons##1239
accept The Third Fleet##288 |goto Wetlands 10.89,59.67
accept The Greenwarden##463 |goto Wetlands 10.89,59.67
step
Enter the building |goto Wetlands,10.79,59.76,10 |walk
talk Innkeeper Helbrek##1464
.tip He walks around inside the building.
home Deepwater Tavern |goto Wetlands 10.70,60.95
step
talk Innkeeper Helbrek##1464
.tip He walks around inside the building.
buy Flagon of Mead##2594 |q 288/1 |goto Wetlands 10.70,60.95
step
talk Archaeologist Flagongut##2911
.tip Upstairs inside the building.
turnin The Absent Minded Prospector##942 |goto Wetlands 10.84,60.43
step
talk Junder Brokk##3182  |goto Wetlands 10.80,60.20
accept Oars O'er the Bay##26818
step
Leave the building |goto Wetlands,10.79,59.77,10 |walk |only if subzone("Deepwater Tavern")
talk First Mate Fitzsimmons##1239
turnin The Third Fleet##288 |goto Wetlands 10.89,59.67
step
talk Edwina Monzor##1462
.tip She walks around this area.
.tip If you need any more, only buy enough level 10 ammo to get you to level 25.
.tip You will switch to level 25 ammo at level 25.
.tip Buy enough level 25 ammo to fill your ammo bag, and save it in your bags to switch to it later, once you hit level 25 soon.
Visit the Vendor |vendor Edwina Monzor##1462 |goto Wetlands/0 11.11,58.33 |q 463
|only if Hunter
step
talk Sida##2111
accept Digging Through the Ooze##470 |goto Wetlands 11.80,57.99
step
Enter the building |goto Wetlands,10.30,56.30,15 |walk
talk Neal Allen##1448
.tip Inside the building.
buy Bronze Tube##4371 |n
.tip If you can afford it.
.tip It may not be for sale, since it's a limited supply item.
.tip This item is needed for a quest later on in Duskwood.
Visit the Vendor |vendor Neal Allen##1448 |goto Wetlands 10.75,56.75 |q 174 |future
|only if itemcount(4371) == 0
step
talk Andrew Porter##45814  |goto Wetlands 13.30,54.30
turnin Oars O'er the Bay##26818
stickystart "Kill_Young_Crocs"
stickystart "Slay_Bluegill_Murlocs"
step
Leave the building |goto Wetlands,10.30,56.30,15 |walk |only if subzone("Menethil Keep")
Leave Menethil Harbor |goto Wetlands,10.96,54.57,30 |only if walking and subzone("Menethil Harbor")
kill Gobbler##1259
.tip He looks like a grey murloc that walks around this area.
.tip Watch for patrols and respawns while in the area. |only if hardcore
collect Gobbler's Head##3618 |q 279/2 |goto Wetlands 17.99,40.38
step
label "Slay_Bluegill_Murlocs"
Kill Bluegill enemies around this area
.tip They look like murlocs.
.tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
.tip Enemies near huts will likely pull in groups, so avoid if possible. |only if hardcore |notinsticky
Slay #12# Bluegill Murlocs |q 279/1 |goto Wetlands 13.64,39.55
Also check around: |notinsticky
[14.45,41.53]
[14.86,35.88]
stickystop "Kill_Young_Crocs"
step
Kill enemies around this area
.tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
.tip Enemies near huts will likely pull in groups, so avoid if possible. |only if hardcore |notinsticky
.tip You should already be close to reaching level 25.
ding 25 |goto Wetlands 16.87,40.02
step
NOTE:
You Have Access to Stronger Ammo
.tip Now that you're level 25, you can purchase stronger bullets or arrows.
.tip When you restock ammo at vendors, make sure to buy level 25 ammo.
.tip Destroy all of your level 10 ammo, and use the level 25 ammo you bought earlier.
Click Here to Continue |confirm |q 279
|only if Hunter
stickystart "Kill_Young_Crocs"
step
talk Fradd Swiftgear##2682
.tip He walks around this area.
buy Bronze Tube##4371 |n
.tip If you can afford it.
.tip It may not be for sale, since it's a limited supply item.
.tip This item is needed for a quest later on in Duskwood.
Visit the Vendor |vendor Fradd Swiftgear##2682 |goto Wetlands 26.40,25.76 |q 174 |future
|only if itemcount(4371) == 0
step
talk Wounded Burndural Messenger##45969  |goto Wetlands 41.50,38.70
accept Message to Menethil##27021 |goto Wetlands 49.91,39.37
step
talk Einar Stonegrip##2093
accept Daily Delivery##469 |goto Wetlands 49.91,39.37
step
talk Rethiel the Greenwarden##1244
turnin The Greenwarden##463 |goto Wetlands 56.37,40.40
accept Tramping Paws##276 |goto Wetlands 56.37,40.40
step
Kill Black Ooze enemies on the way south. |goto Wetlands,66.20,53.00,100 |c |or
.tip This step will skip if you reach the waypoint without finding the bag.
.tip Don't worry, you'll have more chances later.
collect Sida's Bag##3349 |q 470/1 |or
step
label "Kill_Young_Crocs"
Leave the building |goto Wetlands,10.30,56.30,15 |walk |only if subzone("Menethil Keep")
Leave Menethil Harbor |goto Wetlands,10.96,54.57,30 |only if walking and subzone("Menethil Harbor")
kill Young Wetlands Crocolisk##1417+
.tip Go out of your way to kill Young Wetlands Crocolisks as you quest.
.tip The droprate for this quest can be low.
collect 4 Young Crocolisk Skin##3397 |q 484/1 |goto Wetlands 51.00,37.20
You can find more around: |notinsticky
[20.01,46.59]
[27.47,40.25]
[34.44,36.03]
stickystart "Kill_Mosshide_Gnolls"
step
kill 10 Mosshide Mongrel##1008 |q 276/2 |goto Wetlands 61.18,57.60
.tip Avoid pulling from the camp areas if possible. |only if hardcore
.tip Enemies around there tend to pull in groups. |only if hardcore
.tip Watch for patrols and respawns while in the area. |only if hardcore
You can find more around: |notinsticky
[64.11,63.15]
[62.39,70.70]
[55.68,74.52]
step
label "Kill_Mosshide_Gnolls"
kill 15 Mosshide Gnoll##1007 |q 276/1 |goto Wetlands 64.11,63.15
.tip Avoid pulling from the camp areas if possible. |only if hardcore |notinsticky
.tip Enemies around there tend to pull in groups. |only if hardcore |notinsticky
.tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[62.39,70.70]
[55.68,74.52]
step
click Musquash Root
collect Musquash Root##2784 |q 335/2 |goto Wetlands 64.76,75.29
|only if Warlock
step
Kill Black Ooze enemies on the way north. |goto Wetlands,56.37,40.40,60 |c |or
.tip This step will skip if you reach the waypoint without finding the bag.
.tip Don't worry, you'll have more chances later.
collect Sida's Bag##3349 |q 470/1 |or
step
talk Rethiel the Greenwarden##1244
turnin Tramping Paws##276 |goto Wetlands 56.37,40.40
accept Fire Taboo##277 |goto Wetlands 56.37,40.40
step
Check Your Hearthstone
.tip The next step will instruct you to jump off of a bridge into the water.
.tip Afterwards, the guide assumes you will hearth back to Menethil Harbor.
.tip If your Hearthstone is not ready to use, you will have to swim a long way and it takes a while, so grind until it's ready.
.tip If you don't want to wait at all, skip the next 2 guide steps.
.tip You will have to skip a handful of quests worth about 10,000 xp.
Click Here to Continue |confirm |q 637 |future
|only if C_Container.GetItemCooldown(6948) > 0
step
Cross the bridge |goto Wetlands,51.11,11.59,30 |only if walking
Jump off the bridge into the water |goto Wetlands,50.65,8.53,15 |only if walking
click Waterlogged Letter##2656
.tip It looks like a rolled up white scroll in the hand of a dead dwarf.
.tip Underwater.
collect Waterlogged Envelope##4433 |goto Arathi Highlands 44.29,92.88 |q 637 |future |notravel
step
use Waterlogged Envelope##4433
accept Sully Balloo's Letter##637 |goto Wetlands 11.80,57.99
use Hearthstone##6948
step
talk Sida##2111
turnin Digging Through the Ooze##470 |goto Wetlands 11.80,57.99
step
Enter the building |goto Wetlands,10.30,56.30,15 |walk
talk Neal Allen##1448
.tip Inside the building.
buy Bronze Tube##4371 |n
.tip If you can afford it.
.tip It may not be for sale, since it's a limited supply item.
.tip This item is needed for a quest later on in Duskwood.
Visit the Vendor |vendor Neal Allen##1448 |goto Wetlands 10.75,56.75 |q 174 |future
|only if itemcount(4371) == 0
step
talk Karl Boran##1242
.tip He walks around this area.
turnin Claws from the Deep##279 |goto Wetlands 8.31,58.53
step
Leave the building |goto Wetlands,10.30,56.30,15 |walk |only if subzone("Menethil Keep")
talk James Halloran##2094
.tip He walks around this area.
turnin Young Crocolisk Skins##484 |goto Wetlands 8.51,55.71
turnin Daily Delivery##469 |goto Wetlands 8.51,55.71
step
talk Valstag Ironjaw##2086  |goto Wetlands 10.10,56.90
turnin Message to Menethil##27021
step
fly to Ironforge
step
Run up the stairs and enter the building |goto Ironforge,61.32,88.18,7 |walk
talk Buliwyf Stonehand##11865
.tip Inside the building.
.tip This will allow you to equip two-handed axes.
Train Two-Handed Axes |complete weaponskill("TH_AXE") > 0 |goto Ironforge 61.17,89.52
|only if Paladin
step
Run up the stairs and enter the building |goto Ironforge,50.21,7.54,7 |walk
talk Gerrig Bonegrip##2786
.tip Inside the building.
turnin The Powers Below##968 |goto Ironforge 50.83,5.62
|only if haveq(968) or completedq(968)
step
talk Gearcutter Cogspinner##5175
buy Bronze Tube##4371 |n
.tip If you can afford it.
.tip It may not be for sale, since it's a limited supply item.
.tip This item is needed for a quest later on in Duskwood.
Visit the Vendor |vendor Gearcutter Cogspinner##5175 |goto Ironforge 67.84,42.50 |q 174 |future
|only if itemcount(4371) == 0
step
talk Lomac Gearstrip##4081
turnin An Old Colleague##1072 |goto Ironforge 72.10,51.89
step
talk Sara Balloo##2695
turnin Sully Balloo's Letter##637 |goto Ironforge 63.48,67.29
step
Watch the dialogue
talk Sara Balloo##2695
accept Sara Balloo's Plea##683 |goto Ironforge 63.48,67.29
step
Follow the path |goto Ironforge,44.57,49.55,10 |walk
talk King Magni Bronzebeard##2784
turnin Sara Balloo's Plea##683 |goto Ironforge 39.11,56.17
accept A King's Tribute##686 |goto Ironforge 39.11,56.17
step
Follow the path |goto Ironforge,44.57,49.55,10 |walk |only if subzone("The High Seat")
Run up the stairs and enter the building |goto Ironforge,38.53,85.78,7 |walk
talk Grand Mason Marblesten##2790
.tip He walks around inside the building.
turnin A King's Tribute##686 |goto Ironforge 39.03,88.02
accept A King's Tribute##689 |goto Ironforge 39.03,88.02
step
talk Dink##7312 |only if Mage
talk Regnus Thundergranite##5117 |only if Hunter
talk Bilban Tosslespanner##5114 |only if Warrior
talk Toldren Deepiron##5143 |only if Priest
talk Brandur Ironhammer##5149 |only if Paladin
talk Fenthwick##5167 |only if Rogue
trainer Dink##7312 |goto Ironforge/0 27.10,8.49 |only if Mage |q 689
trainer Regnus Thundergranite##5117 |goto Ironforge/0 69.86,82.94 |only if Hunter |q 689
trainer Bilban Tosslespanner##5114 |goto Ironforge/0 65.92,88.39 |only if Warrior |q 689
trainer Fenthwick##5167 |goto Ironforge/0 51.49,15.33 |only if Rogue |q 689
trainer Toldren Deepiron##5143 |goto Ironforge/0 25.19,10.76 |only if Priest |q 689
trainer Brandur Ironhammer##5149 |goto Ironforge/0 23.11,6.14 |only if Paladin |q 689
.tip Inside the building.
.tip Train your spells.
step
Enter the building |goto Ironforge,27.69,12.34,20 |walk
talk Milstaff Stormeye##2489
.tip Inside the building.
learnspell Teleport: Ironforge##3562 |goto Ironforge 25.50,7.07
|only if Mage
step
Enter the building |goto Ironforge,30.43,26.37,7 |walk
talk Ginny Longberry##5151
.tip Inside the building.
.tip If you can afford it.
.tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Ginny Longberry##5151 |goto Ironforge 31.32,27.79 |q 484 |future
|only if Mage
step
talk Billibub Cogspinner##5519
buy Bronze Tube##4371 |n
.tip If you can afford it.
.tip It may not be for sale, since it's a limited supply item.
.tip This item is needed for a quest later on in Duskwood.
Visit the Vendor |vendor Billibub Cogspinner##5519 |goto Stormwind City 55.21,7.05 |q 174 |future
|only if itemcount(4371) == 0
step
fly to Stormwind
talk Collin Mauren##4078
turnin A Scroll from Mauren##1075 |goto Stormwind City 43.09,80.38
step
Enter the building |goto Stormwind City,29.14,74.17,10 |walk
talk Gakin the Darkbinder##6122
.tip Downstairs inside the building.
turnin Heartswood##1738 |goto Stormwind City 25.26,78.56
accept The Binding##1739 |goto Stormwind City 25.26,78.56
|only if Warlock
step
use Heartswood Core##6913
.tip Use it while standing on the pink symbol on the ground.
.tip Further downstairs inside the building, inside the crypt.
kill Summoned Succubus##5677 |q 1739/1 |goto Stormwind City 25.11,77.46
|only if Warlock
step
talk Gakin the Darkbinder##6122
.tip Downstairs inside the building, in the basement above the crypt.
turnin The Binding##1739 |goto Stormwind City 25.25,78.56
|only if Warlock
step
talk Spackle Thornberry##5520
.tip Downstairs inside the building.
.tip If you can afford them.
.tip Buy all of the Grimoires for spells that are upgrades for the spells you use with your pet.
.tip After buying them, make sure to use them in your bags to learn the spells.
Visit the Vendor |vendor Spackle Thornberry##5520 |goto Stormwind City 25.66,77.66 |q 66 |future
|only if Warlock
step
talk Ursula Deline##5495
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20
|only if Warlock
step
NOTE:
Be Prepared to Fight Waves of Enemies
.tip When you accept the quest in the next step, you will have to protect and NPC from 3 waves of level 17-18 enemies.
.tip First Wave - 3 enemies.
.tip Second Wave - 4 enemies.
.tip Third Wave - 5 enemies.
.tip Remember to heal and use your defensive abilities when needed, preferably during the ladder waves.
.tip Bring food and water to eat and drink between the waves.
.tip You should be able to complete the quest at this level.
Click Here to Continue |confirm |q 1650
|only if Paladin
step
Follow the path up through the mountains |goto Westfall,52.64,72.27,50 |only if walking
Follow the path around the mountain |goto Westfall,38.44,82.68,20 |only if walking
talk Daphne Stilwell##6182
.tip She walks around this area.
turnin The Tome of Valor##1650 |goto Westfall 42.33,88.64
accept The Tome of Valor##1651 |goto Westfall 42.33,88.64
|only if Paladin
step
Watch the dialogue
Kill the enemies that attack in waves
.tip You will be attacked by 3 waves of level 17 - 18 enemies.
.tip First Wave - 3 enemies.
.tip Second Wave - 4 enemies.
.tip Third Wave - 5 enemies.
.tip Remember to heal and use your defensive abilities when needed, preferably during the ladder waves.
.tip Eat and drink between the waves.
.tip You should be able to complete the quest at this level.
Protect Daphne Stilwell |q 1651/1 |goto Westfall 42.33,88.64
|only if Paladin
step
talk Daphne Stilwell##6182
.tip She walks around this area.
turnin The Tome of Valor##1651 |goto Westfall 41.68,89.09
accept The Tome of Valor##1652 |goto Westfall 41.68,89.09
|only if Paladin
]]
)
