local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Searing Gorge (50-51)',
  {
    image = ZGV.IMAGESDIR .. 'Searing Gorge',
    condition_suggested = function()
      return level >= 50 and level <= 51 and not completedq(3182)
    end,
    next = 'Leveling Guides\\Blasted Lands (51-51)',
    hardcore = true,
  },
  [[
step
Enter the Badlands |goto Loch Modan 46.94,78.53 < 50 |only if walking and hardcore and not zone("Searing Gorge")
Follow the path up into Thorium Point |goto Searing Gorge 31.51,33.47 < 60 |only if walking and hardcore and not zone("Searing Gorge")
click Wanted/Missing/Lost & Found##179827
accept STOLEN: Smithing Tuyere and Lookout's Spyglass##7728 |goto Searing Gorge 37.63,26.53
accept JOB OPPORTUNITY: Culling the Competition##7729 |goto Searing Gorge 37.63,26.53
step
talk Hansel Heavyhands##14627
accept Curse These Fat Fingers##7723 |goto Searing Gorge 38.57,27.80
accept Fiery Menace!##7724 |goto Searing Gorge 38.57,27.80
accept Incendosaurs? Whateverosaur is More Like It##7727 |goto Searing Gorge 38.57,27.80
step
talk Lanie Reed##2941
fpath Thorium Point |goto Searing Gorge 37.94,30.86
|only if hardcore
step
talk Kalaran Windblade##8479
accept Divine Retribution##3441 |goto Searing Gorge 39.05,38.99
step
talk Kalaran Windblade##8479
Select _"Tell me what drives this vengeance?"_
Listen to Kalaran's Story |q 3441/1 |goto Searing Gorge 39.05,38.99
step
talk Kalaran Windblade##8479
turnin Divine Retribution##3441 |goto Searing Gorge 39.05,38.99
accept The Flawless Flame##3442 |goto Searing Gorge 39.05,38.99
stickystart "Collect_Smithing_Lookout"
stickystart "Collect_Grimesilt_Outhouse_Key"
stickystart "Collect_Golem_Oil"
stickystart "Collect_Hearts_Of_Flame"
stickystart "Kill_Greater_Lava_Spiders"
stickystart "Kill_Heavy_War_Golems"
step
label "Collect_Smithing_Tuyere"
kill Dark Iron Steamsmith##5840+
|tip Prioritize this step heavily.
|tip They have a roughly 5 minute respawn time and a low drop rate.
|tip Work on the other quests around this area while waiting for them to respawn.
collect Smithing Tuyere##18959 |q 7728/1 |goto Searing Gorge 39.13,49.64
You can find more around [42.86,51.59]
step
label "Collect_Smithing_Lookout"
kill Dark Iron Lookout##8566+
|tip They are around the watch towers on the cliff surrounding the huge pit.
|tip There are not many of these and should be your second priority for clears after Steamsmiths.
collect Lookout's Spyglass##18960 |q 7728/2 |goto Searing Gorge 33.03,53.44
You can find more around: |notinsticky
[35.40,59.82]
[43.47,63.52]
[52.47,57.97]
step
label "Collect_Golem_Oil"
Kill enemies around this area
|tip Only Tempered War Golems, Heavy War Golems, and Magma Elementals will drop the quest item.
|tip Prioritize Magma elementals where possible. |notinsticky
collect 4 Golem Oil##10511 |q 3442/2 |goto Searing Gorge 48.59,38.32
You can find more around: |notinsticky
[43.27,39.20]
[36.56,40.58]
[32.26,46.19]
[25.43,53.98]
[31.52,72.23]
step
label "Collect_Hearts_Of_Flame"
Kill Elemental enemies around this area
|tip Heavy War Golems will not drop this quest item.
|tip Prioritize Magma elementals where possible. |notinsticky
collect 4 Heart of Flame##10509 |q 3442/1 |goto Searing Gorge 42.58,38.58
You can find more around: |notinsticky
[39.22,41.58]
[31.18,43.67]
[25.43,53.98]
[31.52,72.23]
step
talk Kalaran Windblade##8479
turnin The Flawless Flame##3442 |goto Searing Gorge 39.05,38.99
accept Forging the Shaft##3443 |goto Searing Gorge 39.05,38.99
stickystart "Collect_Thorium_Plated_Daggers"
step
label "Kill_Greater_Lava_Spiders"
kill 20 Greater Lava Spider##5858 |q 7724/1 |goto Searing Gorge 28.78,44.44
You can find more around: |notinsticky
[29.23,55.00]
[29.51,72.50]
step
label "Kill_Heavy_War_Golems"
kill 20 Heavy War Golem##5854 |q 7723/1	|goto Searing Gorge 32.42,49.43
You can find more around: |notinsticky
[37.02,42.98]
[47.99,38.64]
step
Jump down onto the metal walkway here |goto Searing Gorge 49.32,43.74 < 15 |only if walking
Enter the cave |goto Searing Gorge 49.58,45.49 < 10 |c |q 7727
|only if not (subzone("The Slag Pit") and _G.IsIndoors())
stickystop "Collect_Thorium_Plated_Daggers"
step
Jump down from the bridge inside the cave here |goto Searing Gorge 47.73,41.92 < 10 |walk
kill 20 Incendosaur##9318 |q 7727/1 |goto Searing Gorge 51.73,37.16
|tip Inside the cave.
You can find more around: |notinsticky
[50.37,24.75]
[45.03,21.73]
stickystart "Kill_Dark_Iron_Taskmasters"
stickystart "Kill_Dark_Iron_Slavers"
step
label "Collect_Thorium_Plated_Daggers"
Follow the path |goto Searing Gorge 50.14,38.78 < 15 |walk
Continue following the path |goto Searing Gorge 47.13,43.05 < 15 |walk
Leave the cave |goto Searing Gorge 47.52,46.46 < 15 |walk
Enter the cave at the other entrance |goto Searing Gorge 49.60,45.50 < 15 |walk
Kill Dark Iron enemies around this area
|tip They look like dwarves.
|tip Inside the cave, all throughout. |notinsticky
|tip Watch out for patrols and respawns.	|only if hardcore |notinsticky
collect 8 Thorium Plated Dagger##10551 |q 3443/1 |goto Searing Gorge 43.38,34.94
step
label "Kill_Dark_Iron_Taskmasters"
kill 15 Dark Iron Taskmaster##5846 |q 7729/1 |goto Searing Gorge 43.38,34.94
|tip Inside the cave, all throughout. |notinsticky
|tip Watch out for patrols and respawns.	|only if hardcore |notinsticky
|tip You can also find some outside, near Thorium Point. |notinsticky
step
label "Kill_Dark_Iron_Slavers"
kill 15 Dark Iron Slaver##5844 |q 7729/2 |goto Searing Gorge 43.38,34.94
|tip Inside the cave, all throughout. |notinsticky
|tip Watch out for patrols and respawns.	|only if hardcore |notinsticky
|tip You can also find some outside, near Thorium Point. |notinsticky
step
label "Collect_Grimesilt_Outhouse_Key"
use the Grimesilt Outhouse Key##11818
accept The Key to Freedom##4451
|only if itemcount(11818) > 0
step
Leave the cave |goto Searing Gorge 49.58,45.49 < 10 |c |only if (subzone("The Slag Pit") and _G.IsIndoors())
talk Hansel Heavyhands##14627
turnin Curse These Fat Fingers##7723 |goto Searing Gorge 38.59,27.81
turnin Fiery Menace!##7724 |goto Searing Gorge 38.59,27.81
turnin Incendosaurs? Whateverosaur is More Like It##7727 |goto Searing Gorge 38.59,27.81
step
talk Taskmaster Scrange##14626
turnin STOLEN: Smithing Tuyere and Lookout's Spyglass##7728 |goto Searing Gorge 38.98,27.51
turnin JOB OPPORTUNITY: Culling the Competition##7729 |goto Searing Gorge 38.98,27.51
step
talk Kalaran Windblade##8479
turnin Forging the Shaft##3443 |goto Searing Gorge 39.06,38.99
accept The Flame's Casing##3452 |goto Searing Gorge 39.06,38.99 |only if not hardcore
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 51.
|tip You are about to have to kill a bunch of elite enemies for a quest, so being a level higher will help.
|tip The quest leads to many other quests that give a lot of xp, so it's important to get done.
|tip Watch of patrols and respawns while around the area.	|only if hardcore
ding 51 |goto Searing Gorge 39.13,49.64 |q 4451 |future
You can find more around: |notinsticky
[42.59,50.65]
[43.93,40.43]
step
Kill Twilight enemies around this area
|tip They are elite enemies, so you may need help with this.
|tip If you have trouble, try to find someone to help you.
|tip Doing this quest unlocks more quests that give easy experience, so it's important to get it done.
collect Symbol of Ragnaros##10552 |q 3452/1 |goto Searing Gorge 24.62,35.13
You can find more inside the cave at [21.89,36.36]
You can find more up the path that starts at [24.23,33.12]
|only if not hardcore
step
talk Kalaran Windblade##8479
turnin The Flame's Casing##3452 |goto Searing Gorge 39.05,38.99
accept The Torch of Retribution##3453 |goto Searing Gorge 39.05,38.99
|only if not hardcore
step
Watch the dialogue
Witness the Creation of the Torch |q 3453/1 |goto Searing Gorge 39.05,38.99
|only if not hardcore
step
talk Kalaran Windblade##8479
turnin The Torch of Retribution##3453 |goto Searing Gorge 39.05,38.99
accept The Torch of Retribution##3454 |goto Searing Gorge 39.05,38.99
|only if not hardcore
step
click Torch of Retribution##149047
turnin The Torch of Retribution##3454 |goto Searing Gorge 39.06,39.06
|only if not hardcore
step
talk Kalaran Windblade##8479
accept Squire Maltrake##3462 |goto Searing Gorge 39.05,39.00
|only if not hardcore
step
talk Squire Maltrake##8509
turnin Squire Maltrake##3462 |goto Searing Gorge 39.16,38.99
accept Set Them Ablaze!##3463 |goto Searing Gorge 39.16,38.99
|only if not hardcore
step
Run up the ramp |goto Searing Gorge 33.50,53.64 < 15 |only if walking
click Sentry Brazier##149025
|tip On the metal platform of the tower.
|tip You have to equip the Torch of Retribution.
|tip Remember to re-equip your normal weapon after.
Set the Northern Tower Ablaze |q 3463/4 |goto Searing Gorge 33.31,54.49
|only if not hardcore
step
Run up the ramp |goto Searing Gorge 35.92,59.85 < 15 |only if walking
click Sentry Brazier##149025
|tip On the metal platform of the tower.
|tip You have to equip the Torch of Retribution.
|tip Remember to re-equip your normal weapon after.
Set the Western Tower Ablaze |q 3463/1 |goto Searing Gorge 35.67,60.68
|only if not hardcore
step
Follow the path |goto Searing Gorge 35.00,72.13 < 50 |only if walking
Run up the ramp |goto Searing Gorge 44.10,61.85 < 15 |only if walking
click Sentry Brazier##149025
|tip On the metal platform of the tower.
|tip You have to equip the Torch of Retribution.
|tip Remember to re-equip your normal weapon after.
Set the Southern Tower Ablaze |q 3463/2 |goto Searing Gorge 44.03,60.91
|only if not hardcore
step
Cross the hanging bridge |goto Searing Gorge 52.48,57.95 < 15 |only if walking
Run up the ramp |goto Searing Gorge 50.19,55.61 < 15 |only if walking
click Sentry Brazier##149025
|tip On the metal platform of the tower.
|tip You have to equip the Torch of Retribution.
|tip Remember to re-equip your normal weapon after.
Set the Eastern Tower Ablaze |q 3463/3 |goto Searing Gorge 50.06,54.74
|only if not hardcore
step
click Wooden Outhouse##173265
turnin The Key to Freedom##4451 |goto Searing Gorge 65.53,62.23
accept Caught!##4449 |goto Searing Gorge 65.54,62.24
step
Kill Dark Iron enemies around this area
|tip Kill all of the Dark Iron dwarves in this camp.
|tip You need to kill 8 Dark Iron Geologists for the quest, but there's not enough to kill, without waiting for respawns.
|tip The Geologists share spawn points with the Watchmen, so kill those too.
|tip We will clear the camp now, and come back to kill the rest soon, after completing another quest nearby.
|tip Continue to the next guide step after you clear the camp of dwarves.
Click Here to Continue |confirm |goto Searing Gorge 63.13,60.28 |q 4449
step
Follow the path up |goto Searing Gorge 67.59,70.55 < 20 |c |q 3181 |future
step
map Searing Gorge
path follow strictbounce; loop off; ants straight; dist 30; markers none
path	69.89,76.37	70.62,74.78	70.52,73.19	68.80,71.78	73.37,73.97
path	73.26,76.28	72.73,78.31	72.96,80.31	73.48,82.34
kill Margol the Rager##5833
|tip It's a level 48 elite, but you should be able to kill it at this level.
|tip Clear enemies around the area before attempting to kill it.
|tip It looks like a blue dinosaur that walks on the path around this area.
|tip If you have trouble, try to find someone to help you.
collect Margol's Horn##10000 |q 3181 |future
step
use Margol's Horn##10000
accept The Horn of the Beast##3181
step
kill 8 Dark Iron Geologist##5839 |q 4449/1 |goto Searing Gorge 63.13,60.28
|tip They share spawn points with the Dark Iron Watchmen, so kill those too, if you can't find any.
|tip Enemies tend to bunch together so be prepared for adds.	|only if hardcore
step
click Wooden Outhouse##173265
|tip You should have the Silk Cloth already from a previous guide.
turnin Caught!##4449 |goto Searing Gorge 65.54,62.24
step
talk Dorius Stonetender##8284
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
accept Suntara Stones##3367 |goto Searing Gorge 63.92,60.98 |noautoaccept
step
Watch the dialogue
|tip Follow Dorius Stonetender and protect him as he walks.
|tip You will be attacked by groups of enemies along the way, so be ready.
|tip He eventually walks to this location.
Escort Dorius |q 3367/1 |goto Searing Gorge 74.42,19.41
step
click Singed Letter
turnin Suntara Stones##3367 |goto Searing Gorge 74.45,19.29
accept Suntara Stones##3368 |goto Searing Gorge 74.45,19.29
step
Follow the path |goto Searing Gorge 67.18,34.60 < 50 |only if walking and subzone("Dustfire Valley")
talk Squire Maltrake##8509
turnin Set Them Ablaze!##3463 |goto Searing Gorge 39.17,39.00
|only if not hardcore
step
_Destroy This Item:_
|tip It is no longer needed.
trash Torch of Retribution##10515 |goto Searing Gorge 38.86,38.99
|only if not hardcore
step
Watch the dialogue
click Hoard of the Black Dragonflight
accept Trinkets...##3481 |goto Searing Gorge 38.86,38.99
|only if not hardcore
step
click Hoard of the Black Dragonflight
turnin Trinkets...##3481 |goto Searing Gorge 38.86,38.99
|only if not hardcore
step
use the Hoard of the Black Dragonflight##10569
collect Black Dragonflight Molt##10575 |q 4022 |future
|tip Keep this, you'll need it for a future quest.
|only if not hardcore
step
Follow the path up into Thorium Point |goto Searing Gorge 31.51,33.47 < 20 |only if walking and zone("Searing Gorge")
talk Master Smith Burninate##14624
|tip Buy enough ammo to fill your ammo bag, plus 6-8 extra stacks.
|tip You will be questing a while.
Visit the Vendor |vendor Master Smith Burninate##14624 |goto Searing Gorge 38.80,28.49 |q 2783 |future
|only if Hunter
step
Follow the path up into Thorium Point |goto Searing Gorge 31.51,33.47 < 20 |only if walking and zone("Searing Gorge")
talk Mountaineer Pebblebitty##3836
turnin The Horn of the Beast##3181 |goto Loch Modan 18.19,84.00
accept Proof of Deed##3182 |goto Loch Modan 18.19,84.00
]]
)
