local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Burning Steppes (56-57)',
  {
    next = 'Leveling Guides\\Western Plaguelands (57-57)',
  },
  [[
step
talk Laris Geardawdle##9616
.tip Inside the building.
turnin A Little Slime Goes a Long Way##4512 |goto Ironforge 75.77,23.37
step
Enter the building |goto Ironforge,20.65,53.22,7 |walk
talk Innkeeper Firebrew##5111
.tip Inside the building.
home Ironforge |goto Ironforge 18.16,51.46
step
Enter the building |goto Ironforge,34.08,62.40,10 |walk
talk Bailey Stonemantle##2461
.tip Inside the building.
.tip Deposit these items into the bank.
bank Janice's Parcel##12724 |goto Ironforge 35.92,60.14 |q 5022
step
Leave the bank |goto Ironforge,34.29,62.11,10 |walk |only if subzone("Vault of Ironforge")
Enter the High Seat |goto Ironforge,44.57,49.50,10 |walk |only if not subzone("The High Seat")
talk Royal Historian Archesonus##8879
.tip Inside the building.
accept The Smoldering Ruins of Thaurissan##3702 |goto Ironforge 38.37,55.31
step
talk Royal Historian Archesonus##8879
.tip Inside the building.
Select _"I am ready, Historian Archesonus."_
Listen to the Story of Thaurissan |q 3702/1 |goto Ironforge 38.37,55.31
step
talk Royal Historian Archesonus##8879
.tip Inside the building.
turnin The Smoldering Ruins of Thaurissan##3702 |goto Ironforge 38.37,55.31
accept The Smoldering Ruins of Thaurissan##3701 |goto Ironforge 38.37,55.31
step
talk Tynnus Venomsprout##5169
.tip Stock up on poisons.
.tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Tynnus Venomsprout##5169 |goto Ironforge 52.94,13.66 |q 3823 |future
|only if Rogue
step
Follow the path up into Morgan's Vigil |goto Burning Steppes,82.85,63.33,20 |only if walking
talk Borgus Stoutarm##2299
fpath Morgan's Vigil |goto Burning Steppes 84.33,68.33
step
talk Oralius##9177
accept Extinguish the Firegut##3823 |goto Burning Steppes 84.56,68.68
accept FIFTY! YEP!##4283 |goto Burning Steppes 84.56,68.68
step
NOTE:
Incoming Important Quest
.tip The quest "Dragonkin Menace" is part of a huge chain of quests, but requires that you kill elite enemies.
.tip Skipping the quest will result in needing to grind 20,720 xp.
.tip Try to find help to do this quest, it is HIGHLY recommended.
Click Here to Continue |confirm |q 4182 |future
|only if hardcore
step
talk Helendis Riverhorn##9562
accept Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.94
.tip We are accepting this quest now so you get credit for killing Whelps. |only if hardcore
.tip Skip this if you never intend to find help doing this elite quest. |only if hardcore
stickystart "Kill_Firegut_Brutes"
stickystart "Kill_Firegut_Ogre_Mages"
step
kill 7 Firegut Ogre##7033 |q 3823/2 |goto Burning Steppes 75.39,38.44
.tip You can find more all around on this mountain, and in the caves on the mountain.
.tip Go out of your way to kill Firegut Ogres, they are more rare than the other types.
.tip Watch for patrols and respawns while in the area.	|only if hardcore
step
label "Kill_Firegut_Brutes"
kill 7 Firegut Brute##7035 |q 3823/3 |goto Burning Steppes 75.39,38.44
.tip You can find more all around on this mountain, and in the caves on the mountain. |notinsticky
.tip Watch for patrols and respawns while in the area.	|only if hardcore |notinsticky
step
label "Kill_Firegut_Ogre_Mages"
kill 15 Firegut Ogre Mage##7034 |q 3823/1 |goto Burning Steppes 75.39,38.44
.tip You can find more all around on this mountain, and in the caves on the mountain. |notinsticky
.tip Watch for patrols and respawns while in the area.	|only if hardcore |notinsticky
step
Follow the path up into Morgan's Vigil |goto Burning Steppes,82.85,63.33,20 |only if walking
talk Oralius##9177
turnin Extinguish the Firegut##3823 |goto Burning Steppes 84.56,68.68
accept Gor'tesh the Brute Lord##3824 |goto Burning Steppes 84.56,68.68
step
Follow the path up |goto Burning Steppes,63.93,29.93,20 |only if walking
talk Tinkee Steamboil##10267
accept Broodling Essence##4726 |goto Burning Steppes 65.24,24.00
step
talk Maxwort Uberglint##9536
accept Tablet of the Seven##4296 |goto Burning Steppes 65.16,23.92
step
Enter the cave |goto Burning Steppes,65.52,23.08,15 |walk
talk Yuka Screwspigot##9544
.tip Inside the cave.
turnin Yuka Screwspigot##4324 |goto Burning Steppes 66.06,21.95
stickystart "Kill_Black_Drake"
stickystart "Kill_Black_Wyrmkins"
stickystart "Kill_Black_Dragonspawns"
stickystart "Kill_Black_Broodlings"
step
use the Draco-Incarcinatrix 900##12284
.tip Use it on Broodling enemies around this area.
.tip They look like small flying dragons.
.tip They share spawn points with the scorpids and wolves, so kill those also, if you can't find any.
.tip Use the Draco-Incarcinatrix before pulling the whelp, or when it is casting fireball.
Kill Broodling enemies around this area
click Broodling Essence##175264+
.tip They look like red floating crystals that appear above their corpses after you kill them.
collect 8 Broodling Essence##12283 |q 4726/1 |goto Burning Steppes 72.83,28.41
.tip Be careful, avoid the elite enemies around the area. |only if hardcore
You can find more around: |notinsticky
[80.05,27.94]
[87.34,32.01]
[91.96,35.64]
step
Enter the cave |goto Burning Steppes,94.11,31.92,15 |walk
talk Cyrus Therepentous##9459
.tip Inside the cave.
accept A Taste of Flame##4022 |goto Burning Steppes 95.06,31.57
|only if not hardcore
step
talk Cyrus Therepentous##9459
.tip Inside the cave.
Select _"I do not posess proof any proof, Cyrus."_
kill Frenzied Black Drake##9461
.tip This dragon is a 54 elite and will immediately attack you.
.tip You may need help with this.
.tip The molt item is not group loot, so only one person can loot it.
collect Black Dragonflight Molt##10575 |q 4022/1 |goto Burning Steppes 95.06,31.57
|only if not hardcore
step
talk Cyrus Therepentous##9459
.tip Inside the cave.
Select _"I present you with proof of my deeds, Cyrus."_
Present the Proof |q 4022/2 |goto Burning Steppes 95.06,31.57
|only if not hardcore
step
talk Cyrus Therepentous##9459
.tip Inside the cave.
turnin A Taste of Flame##4022 |goto Burning Steppes 95.06,31.57
|only if not hardcore
step
label "Kill_Black_Drake"
kill Black Drake##7044 |q 4182/3 |goto Burning Steppes 86.33,30.69
.tip SKIP THIS STEP IF YOU WERE UNABLE TO FIND HELP |only if hardcore
.tip They look like large red dragons flying low to the ground around this area.
.tip If you have trouble, try to find someone to help you. |notinsticky
.tip It's important to get this quest completed. |notinsticky
Also check around: |notinsticky
[89.89,37.22]
[89.50,56.92]
[81.84,58.36]
step
label "Kill_Black_Wyrmkins"
kill 4 Black Wyrmkin##7041 |q 4182/4 |goto Burning Steppes 84.25,27.76
.tip SKIP THIS STEP IF YOU WERE UNABLE TO FIND HELP |only if hardcore
.tip If you have trouble, try to find someone to help you. |notinsticky
.tip It's important to get this quest completed. |notinsticky
You can find more around: |notinsticky
[88.83,39.34]
[91.82,54.43]
step
label "Kill_Black_Dragonspawns"
kill 10 Black Dragonspawn##7040 |q 4182/2 |goto Burning Steppes 84.25,27.76
.tip SKIP THIS STEP IF YOU WERE UNABLE TO FIND HELP |only if hardcore
.tip If you have trouble, try to find someone to help you. |notinsticky
.tip It's important to get this quest completed. |notinsticky
You can find more around: |notinsticky
[88.83,39.34]
[91.82,54.43]
step
label "Kill_Black_Broodlings"
kill 15 Black Broodling##7047 |q 4182/1 |goto Burning Steppes 72.83,28.41
.tip SKIP THIS STEP IF YOU WERE UNABLE TO FIND HELP |only if hardcore
.tip Be careful, avoid the elite enemies around the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[80.05,27.94]
[87.34,32.01]
[91.96,35.64]
[89.92,45.69]
[84.65,61.84]
stickystart "Recover_Information"
step
click Tablet of the Seven##169294
Choose _"Transcribe the tablet."_
collect Tablet Transcript##11470 |q 4296/1 |goto Burning Steppes 54.09,40.73
step
label "Recover_Information"
click Thaurissan Relic##153556+
.tip They look like cylindrical grey stones sitting upright on the ground around this area.
Recover #12# Information |q 3701/1 |goto Burning Steppes 68.42,37.33
You can find more around: |notinsticky
[66.04,44.05]
[62.21,40.68]
[58.93,42.59]
[57.80,37.02]
[52.89,35.96]
stickystart "Collect_Blackrock_Medallions"
step
kill Gor'tesh##9176
.tip He walks around this area, in and out of this building.
.tip Be careful.  He hits hard and has a guard that may pull with him.
.tip He hurts VERY hard and does a stun. You likely want to use a health potion and do not be greedy with it incase he stuns you when you're low. |only if hardcore
.tip Skip this step if you're not comfortable. |only if hardcore
.tip Watch for patrols and respawns while in the area.		|only if hardcore
collect Gor'tesh's Lopped Off Head##11080 |q 3824/1 |goto Burning Steppes 39.26,55.36
step
label "Collect_Blackrock_Medallions"
Kill Blackrock enemies around this area
.tip They look like orcs and wolves.
.tip You can find more inside the buildings around this area.
.tip Watch for patrols and respawns while in the area.	|only if hardcore
collect 50 Blackrock Medallion##11467 |q 4283/1 |goto Burning Steppes 39.31,55.42
You can find more around: |notinsticky
[43.90,56.18]
[49.30,55.43]
[52.98,53.87]
step
Follow the path up into Morgan's Vigil |goto Burning Steppes,82.85,63.33,20 |only if walking
talk Oralius##9177
turnin Gor'tesh the Brute Lord##3824 |goto Burning Steppes 84.56,68.67
accept Ogre Head On A Stick = Party##3825 |goto Burning Steppes 84.56,68.67
turnin FIFTY! YEP!##4283 |goto Burning Steppes 84.56,68.67
step
Destroy These Items:
.tip They are no longer needed.
trash Blackrock Medallion##11467 |goto Burning Steppes 85.82,68.95
step
talk Helendis Riverhorn##9562
turnin Dragonkin Menace##4182 |goto Burning Steppes 85.82,68.95
accept The True Masters##4183 |goto Burning Steppes 85.82,68.95
step
Enter the building |goto Redridge Mountains,29.49,46.11,10 |walk
talk Magistrate Solomon##344
.tip Inside the building.
turnin The True Masters##4183 |goto Redridge Mountains 29.99,44.45
accept The True Masters##4184 |goto Redridge Mountains 29.99,44.45
step
Leave the building |goto Redridge Mountains,29.49,46.11,10 |walk |only if subzone("Lakeshire Town Hall")
Enter the bank |goto Stormwind City,55.30,68.14,10 |walk
talk Olivia Burnside##2455
.tip Inside the building.
.tip Collect these items from the bank.
collect Janice's Parcel##12724 |goto Stormwind City 57.66,72.78 |q 5022
step
Enter the building |goto Stormwind City,47.79,31.24,10 |walk
talk Royal Factor Bathrilor##10782
.tip Upstairs inside the building.
turnin Better Late Than Never##5022 |goto Stormwind City 48.47,30.55
accept Good Natured Emma##5048 |goto Stormwind City 48.47,30.55
step
map Stormwind City
path	follow strict;	loop on;	ants curved;	dist 20;	markers none
path	52.46,41.98		48.29,49.03		50.15,51.53		55.04,47.69
path	57.64,47.70		59.73,51.45		57.66,55.16		60.62,60.33
path	57.16,54.48		57.05,54.37		55.65,53.48		52.74,55.15
path	50.88,51.60		49.66,51.59		48.32,48.32
talk Ol' Emma##3520
.tip She looks like an old human woman that walks in a counter-clockwise path around Stormwind City.
.tip This step's path will take you clockwise to help you find her faster.
.tip She sometimes stands upstairs inside the house that this path leads you to.
.tip Keep an eye on your minimap as you walk around, she will show up as a yellow dot.
turnin Good Natured Emma##5048
accept Good Luck Charm##5050
step
Enter Stormwind Keep |goto Stormwind City,69.09,28.71,15 |walk
talk Highlord Bolvar Fordragon##1748
.tip Inside the building.
turnin The True Masters##4184 |goto Stormwind City 78.22,17.99			|only if readyq(4184)
accept The True Masters##4185 |goto Stormwind City 78.22,17.99			|only if completedq(4184)
accept The First and the Last##6182 |goto Stormwind City 78.22,17.99
step
talk Lady Katrana Prestor##1749
.tip Inside the building.
Select _"Pardon the intrusion, Lady Prestor, but Highlord Bolvar suggested that I seek your advice."_
Seek Advice from Lady Prestor |q 4185/1 |goto Stormwind City 78.11,17.75
step
talk Highlord Bolvar Fordragon##1748
.tip Inside the building.
.tip He may be bugged if another player has recently completed the Onyxia event.
.tip If so, you can skip this quest but you will need to grind a bit later to make up for skipping a few quests.
turnin The True Masters##4185 |goto Stormwind City 78.22,17.99
accept The True Masters##4186 |goto Stormwind City 78.22,17.99
step
Leave Stormwind Keep |goto Stormwind City,69.01,28.80,15 |walk |only if subzone("Stormwind Keep")
Follow the path |goto Stormwind City,74.74,53.71,10 |only if walking
Enter the building |goto Stormwind City,77.12,58.01,10 |walk
talk Master Mathias Shaw##332
.tip Upstairs inside the building.
turnin The First and the Last##6182 |goto Stormwind City 75.79,59.85
accept Honor the Dead##6183 |goto Stormwind City 75.79,59.85
step
talk Master Mathias Shaw##332
.tip Upstairs inside the building.
turnin Honor the Dead##6183 |goto Stormwind City 75.79,59.85
accept Flint Shadowmore##6184 |goto Stormwind City 75.79,59.85
step
Leave the building |goto Stormwind City,77.12,58.01,10 |walk |only if subzone("SI:7")
Follow the path |goto Stormwind City,74.74,53.71,10 |only if walking and subzone("SI:7")
Enter the building |goto Redridge Mountains,29.49,46.11,10 |walk
talk Magistrate Solomon##344
.tip Inside the building.
turnin The True Masters##4186 |goto Redridge Mountains 29.99,44.45
accept The True Masters##4223 |goto Redridge Mountains 29.99,44.45
step
Leave the building |goto Redridge Mountains,29.49,46.11,10 |walk |only if subzone("Lakeshire Town Hall")
talk Marshal Maxwell##9560
turnin The True Masters##4223 |goto Burning Steppes 84.75,69.02
accept The True Masters##4224 |goto Burning Steppes 84.75,69.02
step
Follow the path up |goto Burning Steppes,63.96,29.79,20 |only if walking
talk Tinkee Steamboil##10267
turnin Broodling Essence##4726 |goto Burning Steppes 65.23,23.99
accept Felnok Steelspring##4808 |goto Burning Steppes 65.23,23.99
step
talk Maxwort Uberglint##9536
turnin Tablet of the Seven##4296 |goto Burning Steppes 65.15,23.91
step
talk Ragged John##9563
Select _"Official business, John.  I need some information about Marshal Windsor.  Tell me about the last time you saw him."_
Listen to Ragged John's Story |q 4224/1 |goto Burning Steppes 65.01,23.76
step
Kill enemies around this area
.tip You should already be level 57, or very close.					|only if not hardcore
.tip We are grinding here to catch up in XP after skipping a long quest chain.		|only if hardcore
ding 57 |goto Burning Steppes 62.67,40.88
step
Cross the hanging bridge and follow the path up |goto Burning Steppes,76.13,38.04,10 |only if walking
click Soft Dirt Mound
.tip On top of the mountain.
Plant Gor'tesh's Head |q 3825/1 |goto Burning Steppes 80.99,46.78
step
Follow the path up |goto Burning Steppes,82.85,63.31,20 |only if walking
talk Oralius##9177
turnin Ogre Head On A Stick = Party##3825 |goto Burning Steppes 84.56,68.67
step
talk Marshal Maxwell##9560
turnin The True Masters##4224 |goto Burning Steppes 84.74,69.01
step
Enter the building |goto Ironforge,34.08,62.40,10 |walk
talk Bailey Stonemantle##2461
.tip Inside the building.
.tip Collect these items from the bank.
collect Jaron's Pick##12891 |goto Ironforge 35.92,60.14 |q 5245
collect First Relic Fragment##12896 |goto Ironforge 35.92,60.14 |q 5245
collect Second Relic Fragment##12897 |goto Ironforge 35.92,60.14 |q 5245
collect Third Relic Fragment##12898 |goto Ironforge 35.92,60.14 |q 5245
collect Fourth Relic Fragment##12899 |goto Ironforge 35.92,60.14 |q 5245
collect Studies in Spirit Speaking##15790 |goto Ironforge 35.92,60.14 |q 6030
step
talk Bailey Stonemantle##2461
.tip Inside the building.
.tip Deposit these items into the bank.
bank Tinkee's Letter##12438 |goto Ironforge 35.92,60.14 |q 4808
step
Leave the bank |goto Ironforge,34.29,62.11,10 |walk |only if subzone("Vault of Ironforge")
Enter the High Seat |goto Ironforge,44.57,49.50,10 |walk |only if not subzone("The High Seat")
talk Royal Historian Archesonus##8879
.tip Inside the building.
turnin The Smoldering Ruins of Thaurissan##3701 |goto Ironforge 38.37,55.31
step
Enter the building |goto Ironforge,26.11,72.17,15 |walk
talk Auctioneer Redmuse##8720
.tip Inside the building.
.tip Buy these items from the auction house or collect them from your bank.
.tip You will turn them in for a lot of experience.
.tip If you have any in your bank, get them out before you buy more.
.tip If you can't get them, it's okay, but you may have to grind a bit later to make up for it.
collect 60 Wool Cloth##2592 |goto Ironforge 24.16,74.67 |q 7802 |future
collect 60 Silk Cloth##4306 |goto Ironforge 24.16,74.67 |q 7803 |future
collect 60 Mageweave Cloth##4338 |goto Ironforge 24.16,74.67 |q 7804 |future
collect 60 Runecloth##14047 |goto Ironforge 24.16,74.67 |q 7805 |future
|only if not selfmade
step
talk Mistina Steelshield##14723
accept A Donation of Wool##7802 |goto Ironforge 43.22,31.57 |instant
|only if itemcount(2592) >= 60
step
talk Mistina Steelshield##14723
accept A Donation of Silk##7803 |goto Ironforge 43.22,31.57 |instant
|only if itemcount(4306) >= 60
step
talk Mistina Steelshield##14723
accept A Donation of Mageweave##7804 |goto Ironforge 43.22,31.57 |instant
|only if itemcount(4338) >= 60
step
talk Mistina Steelshield##14723
accept A Donation of Runecloth##7805 |goto Ironforge 43.22,31.57 |instant
|only if itemcount(14047) >= 60
step
Enter the building |goto Ironforge,26.11,72.17,15 |walk
talk Auctioneer Redmuse##8720
.tip Inside the building.
.tip Buy these items from the auction house or collect them from your bank.
.tip You will turn them in for a lot of experience.
.tip If you have any in your bank, get them out before you buy more.
.tip If you can't get them, it's okay, but you may have to grind a bit later to make up for it.
collect 60 Wool Cloth##2592 |goto Ironforge 24.16,74.67 |q 7807 |future
collect 60 Silk Cloth##4306 |goto Ironforge 24.16,74.67 |q 7808 |future
collect 60 Mageweave Cloth##4338 |goto Ironforge 24.16,74.67 |q 7809 |future
collect 60 Runecloth##14047 |goto Ironforge 24.16,74.67 |q 7811 |future
|only if not selfmade
step
talk Bubulo Acerbus##14724
accept A Donation of Wool##7807 |goto Ironforge 74.09,48.22 |instant
|only if itemcount(2592) >= 60
step
talk Bubulo Acerbus##14724
accept A Donation of Silk##7808 |goto Ironforge 74.09,48.22 |instant
|only if itemcount(4306) >= 60
step
talk Bubulo Acerbus##14724
accept A Donation of Mageweave##7809 |goto Ironforge 74.09,48.22 |instant
|only if itemcount(4338) >= 60
step
talk Bubulo Acerbus##14724
accept A Donation of Runecloth##7811 |goto Ironforge 74.09,48.22 |instant
|only if itemcount(14047) >= 60
]]
)
