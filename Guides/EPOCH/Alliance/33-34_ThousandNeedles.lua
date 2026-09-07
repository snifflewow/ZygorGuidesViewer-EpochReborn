local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Thousand Needles (33-34)',
  {
    image = ZGV.IMAGESDIR .. 'Thousand Needles',
    condition_suggested = function()
      return level >= 33 and level <= 34 and not completedq(1175)
    end,
    next = 'Leveling Guides\\Dustwallow Marsh (34-34)',
    hardcore = true,
  },
  [[
step
Ride an elevator down |goto Thousand Needles 31.72,23.63 < 30 |only if walking
click Henrig Lonebrow's Journal
|tip It looks like a small brown book in a dead dwarf's hand.
|tip If someone looted it recently, it can take a few minutes to reappear.
|tip Don't worry, the horde NPCs won't attack you. |only if hardcore
collect Henrig Lonebrow's Journal##5791 |goto Thousand Needles 30.73,24.35 |q 1100 |future
step
use Henrig Lonebrow's Journal##5791
accept Lonebrow's Journal##1100
step
talk Thyssiana##4319
fpath Thalanaar |goto Feralas 89.50,45.85
step
talk Falfindel Waywarder##4048
turnin Lonebrow's Journal##1100 |goto Feralas 89.64,46.56
turnin Reclaiming the Charred Vale##1059 |goto Feralas 89.64,46.56
step
Follow the path up |goto Thousand Needles 14.00,32.15 < 20 |only if walking and not subzone("Highperch")
Kill Highperch enemies around this area
|tip They look like wyverns.
|tip Watch for patrols and respawns while in the area. |only if hardcore
collect 10 Highperch Venom Sac##5809 |q 1135/1 |goto Thousand Needles 11.09,35.88
step
Leave Highperch |goto Thousand Needles 13.79,33.69 < 20 |only if walking and subzone("Highperch")
talk Kravel Koalbeard##4452
|tip Avoid Freewind Post while you travel here.
accept Rocket Car Parts##1110 |goto Thousand Needles 77.79,77.27
step
talk Fizzle Brassbolts##4454
accept Salt Flat Venom##1104 |goto Thousand Needles 78.06,77.13
step
talk Wizzle Brassbolts##4453
turnin The Brassbolts Brothers##1179 |goto Thousand Needles 78.14,77.12
accept Hardened Shells##1105 |goto Thousand Needles 78.14,77.12
step
talk Pozzik##4630
accept Load Lightening##1176 |goto Thousand Needles 80.18,75.89
step
talk Trackmaster Zherin##4629
accept A Bump in the Road##1175 |goto Thousand Needles 81.64,77.95
stickystart "Collect_Rocket_Car_Parts"
stickystart "Kill_Saltstone_Crystalhides"
step
kill 6 Saltstone Gazer##4150 |q 1175/3 |goto Thousand Needles 77.51,87.20
|tip You can back away from their gaze cast to not be stunned. |only if hardcore
stickystart "Collect_Hollow_Vulture_Bones"
stickystart "Collect_Hardened_Tortoise_Shells"
stickystart "Collect_Salty_Scorpid_Venom"
stickystart "Kill_Saltstone_Basilisks"
step
label "Collect_Hollow_Vulture_Bones"
Kill Salt Flats enemies around this area
|tip They look like vultures.
|tip You can rarely find individual ones all around Shimmering Flats.
|tip However, this is the only location where there are multiple of them.
collect 10 Hollow Vulture Bone##5848 |q 1176/1 |goto Thousand Needles 87.45,65.73
|tip Work on other quests in the northern part of Shimmering Flats, and keep revisiting this area until you have them all.
step
label "Collect_Salty_Scorpid_Venom"
Kill Scorpid enemies around this area
'|kill Scorpid Reaver##4140, Scorpid Terror##4139, Vile Sting##5937
|tip They look like scorpions.
|tip These should be your second priority, the drop rate is rather low.
collect 6 Salty Scorpid Venom##5794 |q 1104/1 |goto Thousand Needles 71.60,73.80
You can find more around: |notinsticky
[77.95,53.29]
[73.56,56.98]
[71.30,66.70]
[77.61,68.70]
step
label "Collect_Hardened_Tortoise_Shells"
Kill Sparkleshell enemies around this area
|tip They look like turtles.
|tip Save your Turtle Meat for a future quest.
collect 9 Hardened Tortoise Shell##5795 |q 1105/1 |goto Thousand Needles 82.53,55.37
You can find more around: |notinsticky
[77.41,53.72]
[73.05,56.51]
[74.82,63.33]
step
label "Kill_Saltstone_Basilisks"
kill 10 Saltstone Basilisk##4147 |q 1175/1 |goto Thousand Needles 77.73,59.22
|tip These are primarily found around the crater.
You can find more around: |notinsticky
[73.41,57.27]
[70.97,66.69]
[77.48,52.40]
step
label "Kill_Saltstone_Crystalhides"
kill 10 Saltstone Crystalhide##4151 |q 1175/2 |goto Thousand Needles 77.51,87.20
step
label "Collect_Rocket_Car_Parts"
click Rocket Car Rubble##19868+
|tip They look like various machine parts scattered on the ground.
|tip You can find them all throughout the Shimmering Flats.
collect 30 Rocket Car Parts##5798 |q 1110/1 |goto Thousand Needles 83.06,61.38
You can find more around: |notinsticky
[77.95,53.29]
[73.56,56.98]
[71.30,66.70]
[77.61,68.70]
step
talk Kravel Koalbeard##4452
|tip Avoid Freewind Post while you travel here.
turnin Rocket Car Parts##1110 |goto Thousand Needles 77.79,77.27
accept Wharfmaster Dizzywig##1111 |goto Thousand Needles 77.79,77.27
accept Hemet Nesingwary##5762 |goto Thousand Needles 77.79,77.27
step
talk Fizzle Brassbolts##4454
turnin Salt Flat Venom##1104 |goto Thousand Needles 78.06,77.13
step
talk Wizzle Brassbolts##4453
turnin Hardened Shells##1105 |goto Thousand Needles 78.14,77.12
step
talk Pozzik##4630
turnin Load Lightening##1176 |goto Thousand Needles 80.18,75.88
accept Goblin Sponsorship##1178 |goto Thousand Needles 80.18,75.88
step
talk Trackmaster Zherin##4629
turnin A Bump in the Road##1175 |goto Thousand Needles 81.63,77.95
step
talk Bera Stonehammer##7823
fpath Gadgetzan |goto Tanaris 51.01,29.34
]]
)
