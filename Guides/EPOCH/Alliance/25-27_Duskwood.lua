local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Duskwood (25-27)',
  {
    next = 'Leveling Guides\\Redridge Mountains (27-28)',
  },
  [[
step
talk Malissa##3135
.tip Walking around here.
.tip Stock up on poisons.
.tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Malissa##3135 |goto Duskwood 79.44,44.44 |q 66 |future
|only if Rogue
step
Enter the building |goto Duskwood,75.55,45.37,10 |walk
talk Madame Eva##265
.tip She walks around this area inside the building.
accept The Legend of Stalvan##66 |goto Duskwood 75.82,45.29
accept The Totem of Infliction##101 |goto Duskwood 75.82,45.29
step
talk Allison##45731
accept A Matter of Life and Death##26711 |goto Duskwood 77.7,52.2
.tip Look for small flowers around Duskwood as you quest.
.tip They look like tiny flowers on the ground and are easy to miss.
step
collect 8 Brightwood Bloom##62530 |q 26711/1 |goto Duskwood 70,50
.tip These are small flowers scattered throughout Duskwood.
.tip You can collect them while doing other quests in the zone.
.tip Check around the roads and open areas.
step
talk Steven Black##10062
.tip Stable your permanent pet.
.tip You are about to tame a temporary pet soon, so you can learn "Bite 4".
Click Here to Continue |confirm |goto Duskwood 74.02,46.11 |q 101
|only if Hunter
step
NOTE:
Tame a Black Ravager
.tip Use your "Tame Beast" ability on a Black Ravager.
.tip They look like black wolves around this area.
.tip Make sure to tame a regular "Black Ravager", and not the Young or Mastiff variants.
Learn the "Bite 4" Pet Ability
.tip Kill enemies around this area until you see a message in your chat saying you learned "Bite 4".
.tip You will teach "Bite 4" to your permanent pet soon.
Click Here to Continue |confirm |goto Duskwood 67.90,32.14 |q 101
|only if Hunter
step
talk Steven Black##10062
.tip Abandon your temporary pet and get your permanent pet from the stable.
.tip Teach "Bite 4" to your permanent pet.
Click Here to Continue |confirm |goto Duskwood 74.02,46.11 |q 101
|only if Hunter
step
Enter the building |goto Duskwood,73.83,46.02,10 |walk
talk Innkeeper Trelayne##6790
.tip Inside the building.
home Darkshire |goto Duskwood 73.87,44.41
step
Leave the building |goto Duskwood,73.83,46.02,10 |walk |only if subzone("Scarlet Raven Tavern")
talk Commander Althea Ebonlocke##264
.tip She walks around this area.
accept The Night Watch##56 |goto Duskwood 73.60,46.90
step
Enter the building |goto Duskwood,72.93,46.81,10 |walk
talk Clerk Daltry##267
.tip He walks around this area inside the building.
turnin The Legend of Stalvan##66 |goto Duskwood 72.52,46.85
accept The Legend of Stalvan##67 |goto Duskwood 72.52,46.85
step
talk Gavin Gnarltree##225
.tip He walks around this area.
buy Merciless Axe##12249 |n
.tip If you can afford it.
.tip You will use it when you reach level 26.
.tip It may not be available to buy, since it's a limited supply item.
.tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 163 |future
|only if Warrior and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
.tip He walks around this area.
buy Merciless Axe##12249 |n
.tip If you can afford it.
.tip You will use it when you reach level 26.
.tip It may not be available to buy, since it's a limited supply item.
.tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 163 |future
|only if Paladin and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
.tip He walks around this area.
buy Broad Bladed Knife##12247 |n
.tip If you can afford it.
.tip You will use it when you reach level 27.
.tip It may not be available to buy, since it's a limited supply item.
.tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 163 |future
|only if Rogue and itemcount(12247) == 0
step
Enter the building |goto Duskwood,75.23,48.26,10 |walk
talk Elaine Carevin##633
.tip Inside the building.
accept Raven Hill##163 |goto Duskwood 75.33,48.69
accept The Hermit##165 |goto Duskwood 75.33,48.69
accept Deliveries to Sven##164 |goto Duskwood 75.33,48.69
step
talk Felicia Maline##2409
fpath Darkshire |goto Duskwood 77.49,44.29
step
talk Herble Baubbletump##3133
buy Bronze Tube##4371 |n
.tip If you can afford it.
.tip It may not be for sale, since it's a limited supply item.
.tip You need this item now for a quest in the next guide step.
.tip If you haven't been able to buy one while following the guide so far, fly to Stormwind City and buy one from the auction house. |only if not selfmade
collect Bronze Tube##4371 |goto Duskwood 77.99,48.33 |q 174 |future
step
Enter the building |goto Duskwood,79.78,47.69,10 |walk
talk Viktori Prism'Antras##276
.tip Inside the building.
accept Look To The Stars##174 |goto Duskwood 79.80,48.02
step
talk Viktori Prism'Antras##276
.tip Inside the building.
turnin Look To The Stars##174 |goto Duskwood 79.80,48.02
accept Look To The Stars##175 |goto Duskwood 79.80,48.02
step
Enter the building |goto Duskwood,81.67,59.14,10 |walk
talk Blind Mary##302
.tip She walks around inside the building.
turnin Look To The Stars##175 |goto Duskwood 81.99,59.09
accept Look To The Stars##177 |goto Duskwood 81.99,59.09
stickystart "Kill_Skeletal_Mages"
stickystart "Kill_Skeletal_Warriors"
step
Enter the building |goto Duskwood,80.33,71.10,10 |walk
kill Insane Ghoul##511
.tip He walks around inside the building.
.tip He may also leave the building and walk around the graveyard.
.tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
.tip Skeletal mages may aggro from a decent distance. |only if hardcore |notinsticky
collect Mary's Looking Glass##1946 |q 177/1 |goto Duskwood 80.94,71.40
step
label "Kill_Skeletal_Mages"
kill 6 Skeletal Mage##203 |q 56/2 |goto Duskwood 79.42,70.31
.tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
.tip Skeletal mages may aggro from a decent distance. |only if hardcore |notinsticky
step
label "Kill_Skeletal_Warriors"
kill 8 Skeletal Warrior##48 |q 56/1 |goto Duskwood 79.42,70.31
.tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
.tip Skeletal mages may aggro from a decent distance. |only if hardcore |notinsticky
step
Kill enemies around this area
.tip You should already be very close to reaching level 26.
.tip Watch for patrols and respawns while in the area. |only if hardcore |notinsticky
.tip Skeletal mages may aggro from a decent distance. |only if hardcore |notinsticky
ding 26 |goto Duskwood 79.42,70.31
step
Follow the road |goto Duskwood,72.18,59.00,50 |only if walking and (subzone("Tranquil Gardens Cemetery") or subzone("Darkshire"))
talk Jitters##288
.tip He walks around this area.
turnin Raven Hill##163 |goto Duskwood 18.16,56.51
accept Jitters' Growling Gut##5 |goto Duskwood 18.16,56.51
step
talk Sven Yorgen##311
turnin Deliveries to Sven##164 |goto Duskwood 7.78,34.07
accept Sven's Revenge##95 |goto Duskwood 7.78,34.07
step
talk Lars##893
accept Wolves at Our Heels##226 |goto Duskwood 7.71,33.20
stickystart "Kill_Rabid_Dire_Wolves"
step
map Duskwood
path follow smart; loop off; ants straight; dist 50; markers none
path	11.81,29.39	15.57,24.64	18.51,23.95	23.24,26.03	29.03,26.73
path	33.15,23.17	37.32,19.68	45.37,18.08
kill 12 Starving Dire Wolf##213 |q 226/1
.tip You can find them all along the coast of the river.
step
label "Kill_Rabid_Dire_Wolves"
map Duskwood
path follow smart; loop off; ants straight; dist 50; markers none
path	11.81,29.39	15.57,24.64	18.51,23.95	23.24,26.03	29.03,26.73
path	33.15,23.17	37.32,19.68	45.37,18.08
kill 8 Rabid Dire Wolf##565 |q 226/2
.tip You can find them all along the coast of the river. |notinsticky
step
talk Abercrombie##289
.tip Inside the building.
turnin The Hermit##165 |goto Duskwood 28.11,31.47
accept Supplies from Darkshire##148 |goto Duskwood 28.11,31.47
stickystart "Collect_Gooey_Spider_Legs"
step
kill Black Widow Hatchling##930+
collect 5 Vial of Spider Venom##1130 |q 101/2 |goto Duskwood 31.85,35.93
You can find more around: |notinsticky
[28.46,48.96]
[32.20,55.11]
step
label "Collect_Gooey_Spider_Legs"
kill Black Widow Hatchling##930+
collect 6 Gooey Spider Leg##2251 |goto Duskwood 31.85,35.93 |q 93 |future
.tip Be careful not to accidentally sell these to a vendor.
You can find more around: |notinsticky
[28.46,48.96]
[32.20,55.11]
step
Leave the crypt |goto Duskwood,23.59,34.89,15 |walk |only if subzone("Dawning Wood Catacombs") and _G.IsIndoors()
talk Lars##893
turnin Wolves at Our Heels##226 |goto Duskwood 7.71,33.20
step
talk Thor##523
fpath Sentinel Hill |goto Westfall 56.55,52.64
step
Enter the building |goto Westfall,42.22,66.90,10 |walk
click Old Footlocker
.tip Inside the building.
turnin The Legend of Stalvan##67 |goto Westfall 41.51,66.73
accept The Legend of Stalvan##68 |goto Westfall 41.51,66.73
step
talk Chef Grual##272
.tip He walks around this area inside the building.
turnin Jitters' Growling Gut##5 |goto Duskwood 73.78,43.45
accept Dusky Crab Cakes##93 |goto Duskwood 73.78,43.45
step
talk Chef Grual##272
.tip He walks around this area inside the building.
turnin Dusky Crab Cakes##93 |goto Duskwood 73.78,43.45
accept Return to Jitters##240 |goto Duskwood 73.78,43.45
step
Destroy or Sell These Items:
.tip They are no longer needed.
trash Gooey Spider Leg##2251 |goto Duskwood 73.82,46.01
step
Leave the building |goto Duskwood,73.82,46.01,10 |walk |only if subzone("Scarlet Raven Tavern")
talk Commander Althea Ebonlocke##264
.tip She walks around this area.
turnin The Night Watch##56 |goto Duskwood 73.59,46.90
accept The Night Watch##57 |goto Duskwood 73.59,46.90
step
Enter the building |goto Duskwood,72.93,46.81,10 |walk
talk Clerk Daltry##267
.tip He walks around this area inside the building.
turnin The Legend of Stalvan##68 |goto Duskwood 72.52,46.85
accept The Legend of Stalvan##69 |goto Duskwood 72.52,46.85
step
talk Gavin Gnarltree##225
.tip He walks around this area.
buy Merciless Axe##12249 |n
.tip If you can afford it.
.tip It may not be available to buy, since it's a limited supply item.
.tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 101
|only if Warrior and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
.tip He walks around this area.
buy Merciless Axe##12249 |n
.tip If you can afford it.
.tip It may not be available to buy, since it's a limited supply item.
.tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 101
|only if Paladin and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
.tip He walks around this area.
buy Broad Bladed Knife##12247 |n
.tip If you can afford it.
.tip You will use it when you reach level 27.
.tip It may not be available to buy, since it's a limited supply item.
.tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 101
|only if Rogue and itemcount(12247) == 0
step
Enter the building |goto Duskwood,75.57,45.37,10 |walk
talk Madame Eva##265
.tip She walks around this area inside the building.
turnin Supplies from Darkshire##148 |goto Duskwood 75.81,45.29
accept Ghost Hair Thread##149 |goto Duskwood 75.81,45.29
step
Enter the building |goto Duskwood,79.78,47.69,10 |walk
talk Viktori Prism'Antras##276
.tip Inside the building.
turnin Look To The Stars##177 |goto Duskwood 79.80,48.02
step
Enter the building |goto Duskwood,81.68,59.13,10 |walk
talk Blind Mary##302
.tip She walks around inside the building.
turnin Ghost Hair Thread##149 |goto Duskwood 81.98,59.09
accept Return the Comb##154 |goto Duskwood 81.98,59.09
step
Enter the building |goto Duskwood,75.57,45.37,10 |walk
talk Madame Eva##265
.tip She walks around this area inside the building.
turnin Return the Comb##154 |goto Duskwood 75.81,45.29
accept Deliver the Thread##157 |goto Duskwood 75.81,45.29
step
click Mound of loose dirt
.tip Be careful, there are stealthed enemies around this area.
turnin Sven's Revenge##95 |goto Duskwood 49.86,77.70
accept Sven's Camp##230 |goto Duskwood 49.86,77.70
step
Follow the road |goto Duskwood,43.59,65.05,40 |only if walking and subzone("The Yorgen Farmstead")
talk Jitters##288
.tip He walks around this area.
turnin Return to Jitters##240 |goto Duskwood 18.14,56.52
step
talk Sven Yorgen##311
turnin Sven's Camp##230 |goto Duskwood 7.78,34.07
accept The Shadowy Figure##262 |goto Duskwood 7.78,34.07
step
talk Abercrombie##289
.tip Inside the building.
turnin Deliver the Thread##157 |goto Duskwood 28.11,31.47
accept Zombie Juice##158 |goto Duskwood 28.11,31.47
step
Enter the building |goto Elwynn Forest,42.95,65.64,10 |walk
talk Innkeeper Farley##295
.tip Inside the building.
turnin The Legend of Stalvan##69 |goto Elwynn Forest 43.77,65.80
accept The Legend of Stalvan##70 |goto Elwynn Forest 43.77,65.80
step
click Storage Chest
.tip Upstairs inside the building.
collect An Undelivered Letter##910 |q 70/1 |goto Elwynn Forest 44.29,65.82
step
Leave the building |goto Elwynn Forest,42.95,65.64,10 |walk |only if subzone("Lion's Pride Inn")
talk Caretaker Folsom##297
turnin The Legend of Stalvan##70 |goto Stormwind City 29.58,61.93
accept The Legend of Stalvan##72 |goto Stormwind City 29.58,61.93
step
click Sealed Crate
turnin The Legend of Stalvan##72 |goto Stormwind City 29.46,61.58
accept The Legend of Stalvan##74 |goto Stormwind City 29.46,61.58
step
Enter the building |goto Stormwind City,29.15,74.15,10 |walk
talk Zardeth of the Black Claw##1435
.tip Downstairs inside the building.
accept A Noble Brew##335 |goto Stormwind City 26.45,78.66
step
Leave the building |goto Stormwind City,29.15,74.15,10 |walk |only if subzone("The Slaughtered Lamb")
Run through Duskwood |goto Duskwood,77.7,52.2,10 |walk
talk Allison##45731
turnin A Matter of Life and Death##26711 |goto Duskwood 77.7,52.2
accept A Matter of Life and Death##26712 |goto Duskwood 77.7,52.2
.tip This quest chain will be completed later. Set aside the items you've collected and continue with other quests.
step
Enter the building |goto Duskwood,75.55,45.37,10 |walk
talk Madame Eva##265
.tip She walks around this area inside the building.
turnin The Shadowy Figure##262 |goto Duskwood 75.81,45.29
accept The Shadowy Search Continues##265 |goto Duskwood 75.81,45.29
step
talk Gavin Gnarltree##225
.tip He walks around this area.
buy Merciless Axe##12249 |n
.tip If you can afford it.
.tip It may not be available to buy, since it's a limited supply item.
.tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 265
|only if Warrior and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
.tip He walks around this area.
buy Merciless Axe##12249 |n
.tip If you can afford it.
.tip It may not be available to buy, since it's a limited supply item.
.tip If you have better, skip this step.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 265
|only if Paladin and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
.tip He walks around this area.
buy Broad Bladed Knife##12247 |n
.tip If you can afford it.
.tip You will use it when you reach level 27.
.tip It may not be available to buy, since it's a limited supply item.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 265
|only if Rogue and itemcount(12247) == 0
step
Enter the building |goto Duskwood,72.92,46.81,10 |walk
talk Clerk Daltry##267
.tip He walks around this area inside the building.
turnin The Shadowy Search Continues##265 |goto Duskwood 72.53,46.85
accept Inquire at the Inn##266 |goto Duskwood 72.53,46.85
step
Enter the building |goto Duskwood,73.82,46.03,10 |walk
talk Tavernkeep Smitts##273
.tip He walks around this area inside the building.
turnin Inquire at the Inn##266 |goto Duskwood 73.78,44.48
accept Finding the Shadowy Figure##453 |goto Duskwood 73.78,44.48
turnin Zombie Juice##158 |goto Duskwood 73.78,44.48
accept Gather Rot Blossoms##156 |goto Duskwood 73.78,44.48
step
Leave the building |goto Duskwood,73.82,46.03,10 |walk |only if subzone("Scarlet Raven Tavern")
talk Jitters##288
.tip He walks around this area.
turnin Finding the Shadowy Figure##453 |goto Duskwood 18.14,56.52
accept Return to Sven##268 |goto Duskwood 18.14,56.52
stickystart "Kill_Skeletal_Fiends"
stickystart "Kill_Skeletal_Horrors"
step
Kill Skeletal enemies around this area
.tip Only Skeletal Fiends and Skeletal Horrors will drop the quest item.
.tip Watch for respawns while in the area. |only if hardcore |notinsticky
collect 8 Rot Blossom##1598 |q 156/1 |goto Duskwood 15.20,44.97
You can find more around: |notinsticky
[21.50,47.70]
[22.93,43.21]
step
Kill Skeletal enemies around this area
collect 10 Skeleton Finger##2378 |q 101/3 |goto Duskwood 15.20,44.97
step
label "Kill_Skeletal_Fiends"
kill 15 Skeletal Fiend##531 |q 57/1 |goto Duskwood 15.20,44.97
.tip Watch for respawns while in the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[21.50,47.70]
[22.93,43.21]
step
label "Kill_Skeletal_Horrors"
kill 15 Skeletal Horror##202 |q 57/2 |goto Duskwood 15.20,44.97
.tip Watch for respawns while in the area. |only if hardcore |notinsticky
You can find more around: |notinsticky
[21.50,47.70]
[22.93,43.21]
step
Kill enemies around this area
.tip You should already be level 27, or very close.
.tip Watch for respawns while in the area. |only if hardcore |notinsticky
ding 27 |goto Duskwood 15.20,44.97
You can find more around: |notinsticky
[21.50,47.70]
[22.93,43.21]
step
talk Sven Yorgen##311
turnin Return to Sven##268 |goto Duskwood 7.78,34.06
accept Proving Your Worth##323 |goto Duskwood 7.78,34.06
step
NOTE:
During the Next Few Steps
.tip Beware Mor'Ladim, who is a level 35 elite golden skeleton that walks along the road inside Raven Hill.
.tip The quest in the next few steps can be dangerous, requiring you to enter into a dangerous crypt.
.tip You may want to skip the quest, unless you have help, or feel confident you can handle it.
.tip If you skip the quest, abandon the "Prove Your Worth" quest.
.tip You will miss out on the rest of the quest line if you skip, requiring you grind more later.
Click Here to Continue |confirm |q 323
|only if hardcore
stickystart "Kill_Skeletal_Healers"
stickystart "Kill_Skeletal_Raiders"
step
Enter the crypt |goto Duskwood,15.88,38.73,7 |walk
kill 3 Skeletal Warder##785 |q 323/3 |goto Duskwood 15.53,37.02
.tip Inside the crypt.
.tip Be careful of Mor'Ladim, a level 35 elite skeleton who walks around this area outside the crypt.
.tip Watch for respawns while in the area. |only if hardcore |notinsticky
You can find more inside the crypt around [16.01,34.05]
step
label "Kill_Skeletal_Healers"
kill 3 Skeletal Healer##787 |q 323/2 |goto Duskwood 15.87,38.73
.tip Inside the crypt. |notinsticky
.tip You can find more outside the crypt. |notinsticky
.tip Be careful of Mor'Ladim, a level 35 elite skeleton who walks around this area outside the crypt. |notinsticky
.tip Watch for respawns while in the area. |only if hardcore |notinsticky
You can find more inside the crypt around [16.01,34.05]
step
label "Kill_Skeletal_Raiders"
Run up the stairs |goto Duskwood,15.44,37.59,10 |walk |only if subzone("Dawning Wood Catacombs") and _G.IsIndoors()
Leave the crypt |goto Duskwood,15.87,38.73,10 |walk |only if subzone("Dawning Wood Catacombs") and _G.IsIndoors()
kill 15 Skeletal Raider##1110 |q 323/1 |goto Duskwood 15.87,38.73
.tip Inside and outside the crypt. |notinsticky
.tip They share spawns with other enemies inside the crypt. |notinsticky
.tip They can also spawn around the house ontop of the hill. |notinsticky
.tip Be careful of Mor'Ladim, a level 35 elite skeleton who walks around this area outside the crypt. |notinsticky
step
Run up the stairs |goto Duskwood,15.44,37.59,10 |walk |only if subzone("Dawning Wood Catacombs") and _G.IsIndoors()
Leave the crypt |goto Duskwood,15.87,38.73,10 |walk |only if subzone("Dawning Wood Catacombs") and _G.IsIndoors()
talk Sven Yorgen##311
turnin Proving Your Worth##323 |goto Duskwood 7.78,34.06
accept Seeking Wisdom##269 |goto Duskwood 7.78,34.06
step
talk Tavernkeep Smitts##273
.tip He walks around this area inside the building.
turnin Gather Rot Blossoms##156 |goto Duskwood 73.78,44.48
accept Juice Delivery##159 |goto Duskwood 73.78,44.48
step
Leave the building |goto Duskwood,73.83,46.01,10 |walk |only if subzone("Scarlet Raven Tavern")
talk Commander Althea Ebonlocke##264
.tip She walks around this area.
turnin The Night Watch##57 |goto Duskwood 73.60,46.90
step
Optional Route Change
.tip You can opt to do The Stockades around level 28 instead of grinding.
.tip This will mean slower leveling but it will be more fun and potentially give you gear upgrades.
.tip If you choose to do The Stockades, we will say when to accept and turnin dungeon quests that are worth doing in your route.
.tip We will also say when it is a good time to do the dungeon.
NOTE:
.tip This feature is currently experimental and may result in a full quest log. If this happens, please submit a feedback report so we can fix it!
.tip If you have a full quest log, we recommend abandoning any dungeon quests that can be shared by your party members later.
Click Here if you'd like to run The Stockades later |confirm Stockflag
Click Here if you'd prefer to grind |confirm
step
Enter the building |goto Duskwood,72.88,46.83,5 |walk
talk Councilman Millstipe##270
.tip He walks around inside the building.
accept Crime and Punishment##377 |goto Duskwood 71.92,47.79
|only if guideflag("Stockflag")
step
talk Gavin Gnarltree##225
.tip He walks around this area.
buy Merciless Axe##12249 |n
.tip If you can afford it.
.tip It may not be available to buy, since it's a limited supply item.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 159
|only if Warrior and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
.tip He walks around this area.
buy Merciless Axe##12249 |n
.tip If you can afford it.
.tip It may not be available to buy, since it's a limited supply item.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 159
|only if Paladin and itemcount(12249) == 0
step
talk Gavin Gnarltree##225
.tip He walks around this area.
buy Broad Bladed Knife##12247 |n
.tip If you can afford it.
.tip It may not be available to buy, since it's a limited supply item.
Visit the Vendor |vendor Gavin Gnarltree##225 |goto Duskwood 73.60,50.04 |q 159
|only if Rogue and itemcount(12247) == 0
step
collect 5 Fresh Bone Powder##62531 |q 26712/1 |goto Duskwood 75,42
.tip You can find these on the undead creatures in the Duskwood graveyards.
.tip Collect them from any undead in the zone.
.tip You can also collect them while doing other quests.
step
talk Allison##45731
turnin A Matter of Life and Death##26712 |goto Duskwood 77.7,52.2
]]
)
