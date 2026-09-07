local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Tanaris (43-44)',
  {
    image = ZGV.IMAGESDIR .. 'Tanaris',
    condition_suggested = function()
      return level >= 43 and level <= 44 and not completedq(1707)
    end,
    next = 'Leveling Guides\\Stranglethorn Vale (44-45)',
    hardcore = true,
  },
  [[
step
_Note_
There is a long grind step towards the end of this guide.
|tip We recommend looking for a dungeon group at some point during this guide to make it less tedious.
|tip If you don't wish to do a dungeon, go out of your way to kill mobs between quests.
Click Here To Confirm |confirm
step
Enter the building |goto Stranglethorn Vale 27.64,77.09 < 7 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
accept Stoley's Debt##2872 |goto Stranglethorn Vale  27.78,77.07
step
Enter the building |goto Dustwallow Marsh 66.00,45.20 < 10 |walk
talk Morgan Stern##4794
|tip Inside the building.
turnin ... and Bugs##1258 |goto Dustwallow Marsh 66.34,45.47
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect Seaforium Booster##5862 |goto Tanaris 52.30,28.91 |q 1188
step
talk Shreev##4708
turnin Safety First##1188 |goto Tanaris 50.96,27.24
accept Safety First##1189 |goto Tanaris 50.96,27.24
step
talk Tran'rek##7876
turnin Tran'rek##2864 |goto Tanaris 51.57,26.76
step
talk Fizzle Brassbolts##4454
turnin News for Fizzle##1137 |goto Thousand Needles 78.06,77.13
step
talk Razzeric##4706
turnin Safety First##1189 |goto Thousand Needles 80.33,76.09
step
talk Pozzik##4630
accept Keeping Pace##1190 |goto Thousand Needles 80.18,75.88
|tip You must have completed "Salt Flat Venom" and "Hardened Shells" from the "Thousand Needles (33-34)" guide.
|tip This also requires completing "Martek the Exiled" and "Indurium" from the "Desolace (40-41)" and Badlands (41-42) guides.
step
talk Zamek##4709
|tip Click "Complete Quest" to complete "Zamek's Distraction".
Click Here After Completing Zamek's Distraction |confirm |goto Thousand Needles 79.81,77.02 |q 1190
step
Enter the building |goto Thousand Needles 77.52,77.60 < 10 |walk
click Rizzle's Unguarded Plans##20805
|tip Inside the building.
|tip Wait for Rizzle Brassbolts to run out of the building.
turnin Keeping Pace##1190 |goto Thousand Needles 77.22,77.42
accept Rizzle's Schematics##1194 |goto Thousand Needles 77.22,77.42
step
talk Pozzik##4630
turnin Rizzle's Schematics##1194 |goto Thousand Needles 80.18,75.88
step
_Destroy This Item:_
|tip It is no longer needed.
trash Sample of Indurium Ore##5866 |goto Tanaris 52.48,28.44
step
talk Spigot Operator Luglunket##7408
accept Water Pouch Bounty##1707 |goto Tanaris 52.48,28.44
step
talk Chief Engineer Bilgewhizzle##7407
accept Wastewander Justice##1690 |goto Tanaris 52.46,28.51
step
talk Senior Surveyor Fizzledowser##7724
accept Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48
|only if not hardcore
step
Kill Roc enemies around this area
|tip They look like red birds.
|tip Skip this step if you run out of birds to kill at this location.
|tip You will finish the quest later.
collect 3 Roc Gizzard##6257 |q 1452/1 |goto Tanaris 49.47,35.83
step
use the Untapped Dowsing Widget##8584
|tip Avoid the elite enemies nearby this location while traveling here.
|tip Use it in the water.
|tip Once you get the Tapped Dowsing Widget, run away to safety immediately.
|tip Multiple higher level enemies appear after using the item.
collect Tapped Dowsing Widget##8585 |q 992/1 |goto Tanaris 39.09,29.17
|only if not hardcore
step
talk Senior Surveyor Fizzledowser##7724
turnin Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48
|only if not hardcore
stickystart "Collect_Wastewander_Water_Pouches"
stickystart "Kill_Wastewander_Bandits"
stickystart "Kill_Wastewander_Thives"
step
talk Yeh'kinya##8579
accept Screecher Spirits##3520 |goto Tanaris 66.99,22.36
stickystop "Collect_Wastewander_Water_Pouches"
stickystop "Kill_Wastewander_Bandits"
stickystop "Kill_Wastewander_Thives"
step
Enter the building |goto Tanaris 66.99,23.87 < 10 |walk
talk Stoley##7881
|tip Inside the building.
turnin Stoley's Debt##2872 |goto Tanaris 67.11,23.98
stickystart "Kill_Wastewander_Bandits"
stickystart "Kill_Wastewander_Thives"
step
label "Collect_Wastewander_Water_Pouches"
Kill Wastewander enemies around this area
collect 10 Wastewander Water Pouch##8483 |goto Tanaris 59.82,24.34
|tip Be careful not to accidentally sell these to a vendor.
|tip You are gathering extra of these, so you can turn in multiple quests at the same time.
You can find more around [63.51,30.31]
|only if haveq(1707) or haveq(379)
step
label "Kill_Wastewander_Bandits"
kill 10 Wastewander Bandit##5618 |q 1690/1 |goto Tanaris 59.82,24.34
|tip They may run away in fear at low health.	|only if hardcore |notinsticky
You can find more around [63.51,30.31]
step
label "Kill_Wastewander_Thives"
kill 10 Wastewander Thief##5616 |q 1690/2 |goto Tanaris 59.82,24.34
|tip They may run away in fear at low health.	|only if hardcore |notinsticky
You can find more around [63.51,30.31]
step
Kill Roc enemies around this area
|tip They look like red birds.
|tip They share spawn points with hyenas, so kill those too, if you can't find any.
collect 3 Roc Gizzard##6257 |q 1452/1 |goto Tanaris 49.47,35.83
step
talk Chief Engineer Bilgewhizzle##7407
turnin Wastewander Justice##1690 |goto Tanaris 52.46,28.51
step
talk Spigot Operator Luglunket##7408
turnin Water Pouch Bounty##1707 |goto Tanaris 52.48,28.44
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Deposit these items into the bank.
bank Yeh'kinya's Bramble##10699 |goto Tanaris 52.30,28.91 |q 3520 |future
bank Roc Gizzard##6257 |goto Tanaris 52.30,28.91 |q 1452 |future
|tip You should have 3 of these.
step
Kill Wastewander enemies around this area
|tip You are about to have to complete some difficult quests in Stranglethorn Vale soon, so this level and the next level will have a lot of grinding to get you to level 45, to make the quests more manageable.
|tip Alternatively, you could run some dungeons instead, if you prefer.
|tip Wastelander Assassins can execute, be very careful when low health against these enemies. |only if hardcore
|tip Wastelander Rogues may be stealthed.						|only if hardcore
|tip Watch for patrols and respawns while around here.					|only if hardcore
collect Wastewander Water Pouch##8483+ |n
|tip You can turn in stacks of 5 water pouches in Gadgetzan for 380 xp.
|tip Collect enough stacks of them so that when you turn them in after grinding, you will hit level 44.
|tip If you need to sell items while grinding, kill enemies as you walk to and from Gadgetzan.
ding 44 |goto Tanaris 62.72,36.93
You can find more around:
[60.32,37.26]
[63.92,29.67]
[61.06,32.82]
[63.51,32.92]
Turn the Water Pouches in at [52.49,28.45]
You can sell items in Gadgetzan at [51.46,28.81]
You can buy arrows at [67.01,21.99] |only if Hunter
]]
)
