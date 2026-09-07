local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Duskwood (31-32)',
  {
    image = ZGV.IMAGESDIR .. 'Duskwood',
    condition_suggested = function()
      return level >= 31 and level <= 32 and not completedq(222)
    end,
    next = 'Leveling Guides\\Stranglethorn Vale (32-32)',
    hardcore = true,
  },
  [[
step
talk Shoni the Shilent##6579
accept Gyrodrillmatic Excavationators##2928 |goto Stormwind City 55.51,12.50
|only if guideflag("Gnomerflag")
step
talk Klockmort Spannerspan##6169
accept Essential Artificials##2924  |goto Ironforge 67.98,46.13
|only if guideflag("Gnomerflag")
step
talk Tinkmaster Overspark##7944
turnin Tinkmaster Overspark##2923 |goto Ironforge 69.56,50.32 |only if haveq(2923)
accept Save Techbot's Brain!##2922 |goto Ironforge 69.56,50.32
|only if guideflag("Gnomerflag")
step
talk Gnoarn##6569
accept The Day After##2927 |goto Ironforge 69.18,50.56
|only if guideflag("Gnomerflag")
step
talk Master Mechanic Castpipe##7950
accept Data Rescue##2930 |goto Ironforge 69.82,48.08
|only if guideflag("Gnomerflag")
step
talk High Tinker Mekkatorque##7937
accept The Grand Betrayal##2929 |goto Ironforge 68.76,48.96
|only if guideflag("Gnomerflag")
step
Run up the stairs and enter the building |goto Ironforge 44.78,8.50 < 7 |walk
talk Hjoldir Stoneblade##5170
|tip Downstairs inside the building.
buy Flamberge##2521 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Hjoldir Stoneblade##5170 |goto Ironforge 44.99,6.79 |q 322
|only if Paladin and itemcount(2521) == 0
step
Enter the building |goto Dun Morogh 45.97,48.83 < 5 |walk
talk Ozzie Togglevolt##1268
|tip Inside the building.
turnin The Day After##2927 |goto Dun Morogh 45.88,49.38
accept Gnogaine##2926 |goto Dun Morogh 45.88,49.38
|only if guideflag("Gnomerflag")
stickystart "LeadenCollection"
step
Enter the building |goto Dun Morogh/0 24.29,39.77 < 7 |walk
Ride the elevator down |goto Dun Morogh/0 23.41,39.21 < 10 |walk
Follow the path |goto Dun Morogh/0 21.98,36.73 < 10 |walk
Kill Addled enemies around this area with your group
collect White Punch Card##9279 |goto Gnomeregan/0 43.27,52.87 |q 2930 |future
|only if guideflag("Gnomerflag")
step
kill Techbot##6231
collect Techbot's Memory Core##9277 |q 2922/1 |goto Gnomeregan/0 43.11,52.81
|only if guideflag("Gnomerflag")
step
Run up the stairs |goto Gnomeregan/0 43.20,52.87 < 7 |only if walking
Cross the bridge |goto Gnomeregan/0 43.38,53.01 < 10 |only if walking
click Matrix Punchograph 3005-A
Choose _"Acquire Higher Level Access Card"_
collect Yellow Punch Card##9280 |goto Gnomeregan/0 43.37,52.89 |q 2930 |future
|only if guideflag("Gnomerflag")
step
label "LeadenCollection"
use the Empty Leaden Collection Phial##9283
|tip Use it on Irradiated Invaders or Irradiated Pillagers.
collect Full Leaden Collection Phial##9284 |q 2926/1 |goto Gnomeregan/0 43.38,53.23
You can find more around [43.08,53.54]
|only if guideflag("Gnomerflag")
step
_Note_
|tip Some groups do not want to run all the way back to turn this quest in.
|tip It is okay to skip this step if so, the quest does not have good rewards or experience.
|tip We will turn in Gnogaine later.
Enter the building |goto Dun Morogh 45.97,48.83 < 5 |walk
talk Ozzie Togglevolt##1268
|tip Inside the building.
turnin Gnogaine##2926 |goto Dun Morogh 45.88,49.38
accept The Only Cure is More Green Glow##2962 |goto Dun Morogh 45.88,49.38
|only if guideflag("Gnomerflag")
step
Enter the building |goto Dun Morogh/0 24.29,39.77 < 7 |walk
Ride the elevator down |goto Dun Morogh/0 23.41,39.21 < 10 |walk
Follow the path |goto Dun Morogh/0 21.98,36.73 < 10 |walk
Follow the path |goto Dun Morogh/0 19.93,36.02 < 10 |walk
Enter the Gnomeregan Dungeon with Your Group |goto Gnomeregan/0 0.00,0.00 < 500 |c |q 2928
|only if guideflag("Gnomerflag")
stickystart "Collect_24_Robo-Mechanical_Guts"
stickystart "Collect_12_Essential_Artificial"
step
_Inside the Gnomeregan Dungeon:_
click Matrix Punchograph 3005-B
|tip Stay on the upper levels of The Hall of Gears and follow the path around to the southwest to enter The Dormitory.
|tip After entering The Dormitory, follow the path around to the left to continue to The Dormitory's lower level.
|tip It is up against the wall in the lowest level of The Dormitory area.
Choose _"Acquire Higher Level Access Card"_
collect Blue Punch Card##9282 |q 2930 |future
|only if guideflag("Gnomerflag")
step
_Inside the Gnomeregan Dungeon:_
kill Viscous Fallout##7079
|tip It is the first boss of the dungeon.
|tip It is in the lower level of the Hall of Gears.
|tip Leave The Dormitory and reenter The Hall of Gears and then jump down to the lower level.
use the Heavy Leaden Collection Phial##9364
|tip Use it on a living Irradiated Slime.
collect High Potency Radioactive Fallout##9365 |q 2962/1
|only if guideflag("Gnomerflag")
step
_Inside the Gnomeregan Dungeon:_
kill Electrocutioner 6000##6235
|tip He is the third boss of the dungeon.
|tip He is in the center of the upper level of the Launch Bay.
|tip Follow the west path from The Hall of Gears to enter the Launch Bay.
collect Workshop Key##6893 |q 2930 |future
|only if guideflag("Gnomerflag")
step
_Inside the Gnomeregan Dungeon:_
click Matrix Punchograph 3005-C
|tip It's up in the Launch Bay platform, with Electrocutioner 6000.
Choose _"Acquire Higher Level Access Card"_
collect Red Punch Card##9281 |q 2930 |future
|only if guideflag("Gnomerflag")
step
_Inside the Gnomeregan Dungeon:_
click Miatrix Punchograph 3005-D
|tip It is found in the lower level of the Engineering Labs, along with Crowd Pummeler 9-60.
|tip Stay on the upper level of the Launch Bay and follow the southeast path to reach the Engineering Labs.
|tip After entering the Engineering Labs, go left and follow it a short distance to ride an elevator down to the lower level.
|tip It is on the opposite side of the large structure in the center of the room after getting off the elevator.
Choose _"Acquire Higher Level Access Card"_
collect Prismatic Punch Card##9316 |q 2930/1
|only if guideflag("Gnomerflag")
step
label "Collect_24_Robo-Mechanical_Guts"
_Inside the Gnomeregan Dungeon:_ |notinsticky
Kill enemies around this area
collect 24 Robo-mechanical Guts##9309 |q 2928/1
|only if guideflag("Gnomerflag")
step
label "Collect_12_Essential_Artificial"
_Inside the Gnomeregan Dungeon:_ |notinsticky
click Artificial Extrapolator##142344+
|tip They look like square upright machines scattered all over the instance.
collect 12 Essential Artificial##9278 |q 2924/1
|only if guideflag("Gnomerflag")
step
_Inside the Gnomeregan Dungeon:_
kill Mekgineer Thermaplugg##7800 |q 2929/1
|tip He is the last boss of the dungeon.
|tip Leave the Engineering Labs through the lower level and follow the southwest path up and out, then continue west after the path splits.
|only if guideflag("Gnomerflag")
step
use Grime-Encrusted Ring##9326
accept Grime-Encrusted Ring##2945
|only if itemcount(9326) > 0
step
click The Sparklematic 5200##142487
|tip Head back to the Dormatory.
|tip You may have to click on multiple Sparklematics to get the quest.
turnin Grime-Encrusted Ring##2945 |only if haveq(2945)
accept Return of the Ring##2947 |only if completedq(2945)
accept The Sparklematic 5200!##2952 |instant
|only if guideflag("Gnomerflag")
step
Leave the Gnomeregan Dungeon
Click Here to Continue |confirm |q 2928
|only if guideflag("Gnomerflag")
step
Enter the building |goto Dun Morogh 45.97,48.83 < 5 |walk
talk Ozzie Togglevolt##1268
|tip Inside the building.
turnin Gnogaine##2926 |goto Dun Morogh 45.88,49.38 |only if readyq(2926)
turnin The Only Cure is More Green Glow##2962 |goto Dun Morogh 45.88,49.38 |only if readyq(2962)
|only if guideflag("Gnomerflag")
step
collect Silver Bar##2842 |q 2948/2 |goto Ironforge 24.16,74.67 |future
collect Moss Agate##1206 |q 2948/3 |goto Ironforge 24.16,74.67 |future
|tip You can buy these items from the Auction House
|only if guideflag("Gnomerflag") and haveq(2947)
step
talk Talvash del Kissel##6826
turnin Return of the Ring##2947 |goto Ironforge/0 36.35,3.61
accept Gnome Improvement##2948 |goto Ironforge/0 36.35,3.61
turnin Gnome Improvement##2948 |goto Ironforge/0 36.35,3.61
|only if completedq(2945)
step
talk Klockmort Spannerspan##6169
turnin Essential Artificials##2924 |goto Ironforge 67.98,46.13
|only if guideflag("Gnomerflag")
step
talk Tinkmaster Overspark##7944
turnin Save Techbot's Brain!##2922 |goto Ironforge 69.56,50.32
|only if guideflag("Gnomerflag")
step
talk Master Mechanic Castpipe##7950
turnin Data Rescue##2930 |goto Ironforge 69.82,48.08
|only if guideflag("Gnomerflag")
step
talk High Tinker Mekkatorque##7937
turnin The Grand Betrayal##2929 |goto Ironforge 68.76,48.96
|only if guideflag("Gnomerflag")
step
Enter the building |goto Ironforge 66.36,82.45 < 10 |walk
talk Pilot Longbeard##2092
|tip Inside the building.
accept The Brassbolts Brothers##1179 |goto Ironforge 72.73,94.01
step
Enter the building |goto Ironforge 30.43,26.37 < 7 |walk
talk Ginny Longberry##5151
|tip Inside the building.
|tip If you can afford it.
|tip Stock up on a couple of Runes of Teleportation to use to travel faster while leveling.
Visit the Vendor |vendor Ginny Longberry##5151 |goto Ironforge 31.32,27.79 |q 322
|only if Mage
step
talk Shoni the Shilent##6579
turnin Gyrodrillmatic Excavationators##2928 |goto Stormwind City 55.51,12.50
|only if guideflag("Gnomerflag")
step
Enter the building |goto Stormwind City 51.82,13.27 < 10 |walk
talk Grimand Elmore##1416
|tip Inside the building.
turnin Blessed Arm##322 |goto Stormwind City 51.76,12.06
accept Armed and Ready##325 |goto Stormwind City 51.76,12.06
|tip You may not be able to accept this quest if you skipped previous quests in the chain.
step
Enter the building |goto Stormwind City 43.05,34.48 < 10 |walk
talk Archbishop Benedictus##1284
|tip Inside the building.
turnin Cleansing the Eye##293 |goto Stormwind City 39.59,27.25
step
talk Thomas##4982
|tip He walks around this area inside the building.
accept The Missing Diplomat##1274 |goto Stormwind City 40.37,29.40
step
Leave the building |goto Stormwind City 43.05,34.48 < 10 |walk |only if subzone("Cathedral of Light")
Enter the building |goto Stormwind City 69.07,28.77 < 15 |walk
Follow the path |goto Stormwind City 77.88,21.14 < 10 |walk
talk Bishop DeLavey##4960
|tip Inside the building.
turnin The Missing Diplomat##1274 |goto Stormwind City 78.30,25.44
accept The Missing Diplomat##1241 |goto Stormwind City 78.30,25.44
step
Follow the path |goto Stormwind City 77.01,19.25 < 15 |walk |only if subzone("Stormwind Keep")
Leave the building |goto Stormwind City 69.07,28.77 < 10 |walk |only if subzone("Stormwind Keep")
Follow the path |goto Stormwind City 60.27,68.37 < 30 |only if walking
talk Jorgen##4959
turnin The Missing Diplomat##1241 |goto Stormwind City 73.17,78.42
accept The Missing Diplomat##1242 |goto Stormwind City 73.17,78.42
step
Enter the building |goto Stormwind City 56.65,57.72 < 7 |walk
talk Woo Ping##11867
|tip This will allow you to equip two-handed swords.
Train Two-Handed Swords |complete weaponskill("TH_SWORD") > 0 |goto Stormwind City 57.13,57.71
|only if Hunter
step
talk Marda Weller##1287
buy Heavy Quiver##7371 |n
|tip If you can afford it.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 1242
|only if Hunter and itemcount(7371) == 0
step
talk Marda Weller##1287
buy Heavy Crossbow##15809 |n
|tip If you can afford it.
|tip If you have better, skip this step.
Visit the Vendor |vendor Marda Weller##1287 |goto Stormwind City 57.38,56.77 |q 1242
|only if Hunter and itemcount(15809) == 0
step
Enter the building |goto Stormwind City 59.96,64.19 < 10 |walk
talk Elling Trias##482
|tip Upstairs inside the building.
turnin The Missing Diplomat##1242 |goto Stormwind City 59.91,64.17
accept The Missing Diplomat##1243 |goto Stormwind City 59.91,64.17
step
Enter the building |goto Stormwind City 55.30,68.13 < 10 |walk
talk Olivia Burnside##2455
|tip Inside the building.
|tip Deposit these items into the bank.
bank Crate of Crash Helmets##5849 |goto Stormwind City 57.66,72.78 |q 1179 |future |only if haveq(1179) or completedq(1179)
bank Musquash Root##2784 |goto Stormwind City 57.66,72.78 |q 335 |future |only if haveq(335) or completedq(335)
step
talk Olivia Burnside##2455
|tip Inside the building.
|tip Collect these items from the bank.
collect A Torn Journal Page##916 |goto Stormwind City 57.66,72.78 |q 74 |only if haveq(74) or completedq(74)
collect Bottle of Zombie Juice##1451 |goto Stormwind City 57.66,72.78 |q 159 |only if haveq(159) or completedq(159)
step
talk Collin Mauren##4078
turnin Retrieval for Mauren##1078 |goto Stormwind City 43.09,80.39
step
talk Malissa##3135
|tip Walking around here.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Malissa##3135 |goto Duskwood 79.44,44.44 |q 181 |future
|only if Rogue
step
Enter the building |goto Duskwood 79.79,47.69 < 10 |walk
talk Viktori Prism'Antras##276
|tip Inside the building.
accept Look To The Stars##181 |goto Duskwood 79.80,48.02
step
talk Calor##663
|tip He walks around this area in front of the building.
accept Worgen in the Woods##173 |goto Duskwood 75.30,48.05
step
talk Commander Althea Ebonlocke##264
|tip She walks around this area.
accept The Night Watch##58 |goto Duskwood 73.60,46.90
step
Enter the building |goto Duskwood 73.83,46.02 < 10 |walk
talk Innkeeper Trelayne##6790
|tip Inside the building.
home Darkshire |goto Duskwood 73.87,44.41
step
Leave the building |goto Duskwood 73.83,46.02 < 10 |c |q 1243
|only if subzone("Scarlet Raven Tavern")
step
map Duskwood
path follow strictbounce; loop off; ants straight; dist 30; markers none
path	74.82,44.16	74.53,41.22	73.87,39.60	72.74,38.35	72.28,37.28
path	72.24,35.19	72.58,33.53	73.31,32.54
talk Watcher Backus##840
|tip He walks back and forth along this road.
turnin The Missing Diplomat##1243
accept The Missing Diplomat##1244
step
kill 6 Nightbane Shadow Weaver##533 |q 173/1 |goto Duskwood 61.99,40.65
|tip These share a spawn with other Nightbane enemies around this area. |only if hardcore
You can find more around [64.69,46.79]
step
talk Calor##663
|tip He walks around this area in front of the building.
turnin Worgen in the Woods##173 |goto Duskwood 75.30,48.05
accept Worgen in the Woods##221 |goto Duskwood 75.30,48.05
stickystart "Kill_Nightbane_Dark_Runners"
step
Kill Nightbane enemies around this area
|tip They look like worgen.
collect An Old History Book##2794 |goto Duskwood 61.76,41.04 |q 337 |future
You can find more around [63.76,50.90]
step
use An Old History Book##2794
accept An Old History Book##337	|goto Duskwood 61.76,41.04
|only if itemcount(337) > 0
step
label "Kill_Nightbane_Dark_Runners"
kill 12 Nightbane Dark Runner##205 |q 221/1 |goto Duskwood 61.76,41.04
|tip These share a spawn with other Nightbane enemies around this area. |only if hardcore
You can find more around [63.76,50.90]
step
talk Marshal Haggard##294
turnin The Legend of Stalvan##74 |goto Elwynn Forest 84.61,69.38
accept The Legend of Stalvan##75 |goto Elwynn Forest 84.61,69.38
step
Enter the building |goto Elwynn Forest 85.12,69.70 < 10 |walk
click Marshal Haggard's Chest
|tip Upstairs inside the building.
|tip You will be attacked.
collect A Faded Journal Page##921 |q 75/1 |goto Elwynn Forest 85.69,69.55
step
Leave the building |goto Elwynn Forest 85.11,69.71 < 10 |walk |only if subzone("Eastvale Logging Camp") and _G.IsIndoors()
talk Marshal Haggard##294
turnin The Legend of Stalvan##75 |goto Elwynn Forest 84.61,69.38
accept The Legend of Stalvan##78 |goto Elwynn Forest 84.61,69.38
step
talk Abercrombie##289
|tip Inside the building.
turnin Juice Delivery##159 |goto Duskwood 28.11,31.47
accept Ghoulish Effigy##133 |goto Duskwood 28.11,31.47
|tip This is part of a questline that starts in the "Duskwood (25-27)" guide.
stickystart "Kill_Plague_Spreaders"
step
Kill enemies around this area
|tip Inside and outside the crypt.
|tip Only enemies that look like ghouls will drop the quest item.
collect 7 Ghoul Rib##884 |q 133/1 |goto Duskwood 23.63,34.92
step
Kill enemies around this area
|tip Only enemies that look like ghouls will drop the quest item.
collect 10 Ghoul Fang##1129 |q 101/1 |goto Duskwood 23.63,34.92
|tip Watch for respawns while in the area. |only if hardcore
You can find more inside the crypt at [23.59,34.89]
step
label "Kill_Plague_Spreaders"
kill 20 Plague Spreader##604 |q 58/1 |goto Duskwood 23.63,34.92
|tip Inside and outside the crypt. |notinsticky
|tip They share spawn points with the other ghouls inside the crypt, so kill those too, if you can't find any.
step
Leave the crypt |goto Duskwood 23.63,34.92 < 15 |walk |only if subzone("Dawning Wood Catacombs") and _G.IsIndoors()
talk Abercrombie##289
|tip Inside the building.
turnin Ghoulish Effigy##133 |goto Duskwood 28.11,31.47
accept Ogre Thieves##134 |goto Duskwood 28.11,31.47
step
Enter the building |goto Duskwood 23.88,71.75 < 10 |walk
click Defias Strongbox##21052
|tip Inside the building.
collect Defias Docket##5947 |q 1244/1 |goto Duskwood 23.93,72.07
step
click Abercrombie's Crate##119
collect Abercrombie's Crate##1349 |q 134/1 |goto Duskwood 33.42,76.34
step
Enter the cave |goto Duskwood 34.08,77.02 < 15 |walk
Follow the path |goto Duskwood 36.78,77.62 < 10 |walk
Continue following the path |goto Duskwood 36.83,81.89 < 10 |walk
kill Zzarc' Vul##300
|tip Inside the cave.
|tip He can spawn in multiple locations inside the cave, so if he's not here, search around.
|tip Watch out for casters aggroing from far away as well as inconsistent respawns. |only if hardcore
collect Ogre's Monocle##1968 |q 181/1 |goto Duskwood 36.81,83.79
step
Leave the cave |goto Duskwood 34.08,77.02 < 15 |walk |only if subzone("Vul'Gol Ogre Mound") and _G.IsIndoors()
Follow the path up to leave the ogre area |goto Duskwood 31.34,67.17 < 20 |only if walking and subzone("Vul'Gol Ogre Mound")
talk Abercrombie##289
|tip Inside the building.
turnin Ogre Thieves##134 |goto Duskwood 28.11,31.47
accept Note to the Mayor##160 |goto Duskwood 28.11,31.47
step
click A Weathered Grave##61
|tip Leave the crypt, if you went inside there in the previous step.
accept The Weathered Grave##225 |goto Duskwood 17.72,29.08
step
talk Sven Yorgen##311
turnin Armed and Ready##325 |goto Duskwood 7.78,34.07
step
Kill enemies around this area
|tip Inside and outside the crypt.
|tip Getting this far into level 31 will allow you to reach level 32 after turning in quests soon.
|tip You will be hearthing back to Darkshire in the next step, so it doesn't matter where you end up completing this step.
ding 31,39000 |goto Duskwood 23.63,34.92
step
Enter the building |goto Duskwood 75.57,45.37 < 10 |walk
talk Madame Eva##265
|tip She walks around this area inside the building.
turnin The Totem of Infliction##101 |goto Duskwood 75.81,45.29
|only if readyq(101)
step
talk Tavernkeep Smitts##273
|tip He walks around this area inside the building.
turnin The Legend of Stalvan##78 |goto Duskwood 73.78,44.48
accept The Legend of Stalvan##79 |goto Duskwood 73.78,44.48
step
Leave the building |goto Duskwood 73.83,46.01 < 10 |walk |only if subzone("Scarlet Raven Tavern")
talk Commander Althea Ebonlocke##264
|tip She walks around this area.
turnin The Night Watch##58 |goto Duskwood 73.59,46.89
turnin The Legend of Stalvan##79 |goto Duskwood 73.59,46.89
accept The Legend of Stalvan##80 |goto Duskwood 73.59,46.89
step
Enter the building |goto Duskwood 72.92,46.81 < 10 |walk
talk Clerk Daltry##267
|tip He walks around this area inside the building.
turnin The Legend of Stalvan##80 |goto Duskwood 72.52,46.85
accept The Legend of Stalvan##97 |goto Duskwood 72.52,46.85
step
talk Sirra Von'Indi##268
|tip Inside the building.
turnin The Weathered Grave##225 |goto Duskwood 72.64,47.62
accept Morgan Ladimore##227 |goto Duskwood 72.64,47.62
step
talk Lord Ello Ebonlocke##263
|tip Inside the building.
turnin Note to the Mayor##160 |goto Duskwood 71.93,46.42
accept Translate Abercrombie's Note##251 |goto Duskwood 71.93,46.42
step
talk Sirra Von'Indi##268
|tip He walks around inside the building.
turnin Translate Abercrombie's Note##251 |goto Duskwood 72.64,47.62
accept Wait for Sirra to Finish##401 |goto Duskwood 72.64,47.62
step
Watch the dialogue
talk Sirra Von'Indi##268
|tip He walks around inside the building.
turnin Wait for Sirra to Finish##401 |goto Duskwood 72.64,47.62
accept Translation to Ello##252 |goto Duskwood 72.64,47.62
step
talk Lord Ello Ebonlocke##263
|tip Inside the building.
turnin Translation to Ello##252 |goto Duskwood 71.93,46.42
step
_Destroy This Item:_
|tip It is no longer needed.
trash Translated Letter from The Embalmer##3248	|goto Duskwood 72.93,46.80
step
Leave the building |goto Duskwood 72.93,46.80 < 10 |walk |only if subzone("Darkshire Town Hall")
talk Commander Althea Ebonlocke##264
|tip She walks around this area.
turnin The Legend of Stalvan##97 |goto Duskwood 73.59,46.89
accept The Legend of Stalvan##98 |goto Duskwood 73.59,46.89
turnin Morgan Ladimore##227 |goto Duskwood 73.59,46.89
step
_Destroy This Item:_
|tip It is no longer needed.
trash The Story of Morgan Ladimore##2154 |goto Duskwood 75.30,48.05
step
talk Calor##663
|tip He walks around this area in front of the building.
turnin Worgen in the Woods##221 |goto Duskwood 75.30,48.05
accept Worgen in the Woods##222 |goto Duskwood 75.30,48.05
step
map Duskwood
path follow strictbounce; loop off; ants straight; dist 30; markers none
path	74.82,44.16	74.53,41.22	73.87,39.60	72.74,38.35	72.28,37.28
path	72.24,35.19	72.58,33.53	73.31,32.54
talk Watcher Backus##840
|tip He walks back and forth along this road.
turnin The Missing Diplomat##1244
accept The Missing Diplomat##1245
step
kill Stalvan Mistmantle##315
|tip Inside, or just outside, the building.
collect Mistmantle Family Ring##3629 |q 98/1 |goto Duskwood 77.35,36.19
step
click Tear of Tilloa##321
collect Tear of Tilloa##2779 |q 335/1 |goto Duskwood 78.35,35.95
step
Enter the building |goto Duskwood 75.55,45.37 < 10 |walk
talk Madame Eva##265
|tip She walks around this area inside the building.
turnin The Legend of Stalvan##98 |goto Duskwood 75.82,45.29
step
Enter the building |goto Duskwood 79.79,47.69 < 10 |walk
talk Viktori Prism'Antras##276
|tip Inside the building.
turnin Look To The Stars##181 |goto Duskwood 79.80,48.02
stickystart "Kill_Nightbane_Vile_Fangs"
step
kill 8 Nightbane Tainted One##920 |q 222/2 |goto Duskwood 73.03,75.08
|tip Inside the mine.
|tip Try to stay near the entrance. |only if hardcore
|tip Watch for patrols and respawns while in the area. |only if hardcore
step
label "Kill_Nightbane_Vile_Fangs"
kill 8 Nightbane Vile Fang##206 |q 222/1 |goto Duskwood 72.57,71.13
|tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
|tip Outside the mine.
]]
)
