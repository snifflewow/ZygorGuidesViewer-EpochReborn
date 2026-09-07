local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Desolace (40-41)',
  {
    image = ZGV.IMAGESDIR .. 'Desolace',
    condition_suggested = function()
      return level >= 40 and level <= 41 and not completedq(1467)
    end,
    next = 'Leveling Guides\\Badlands (41-42)',
    hardcore = true,
  },
  [[
step
talk Ardwyn Cailen##1312
|tip Inside the building.
buy Blackbone Wand##5239 |n
|tip It costs 3g 48s 58c so don't travel if you don't want to spend the money.
Visit the Vendor |vendor Ardwyn Cailen##1312 |goto Stormwind City 42.80,65.60
|only if Priest
step
talk Innkeeper Lyshaerya##11103
|tip Inside the building.
home Nijel's Point |goto Desolace 66.27,6.55 |q 1467 |future
step
talk Brother Anton##1182
|tip Inside the building.
accept Down the Scarlet Path##261 |goto Desolace 66.52,7.91
step
talk Kreldig Ungor##5638
accept Reagents for Reclaimers Inc.##1466 |goto Desolace 66.20,9.63
step
Avoid Ghost Walker Post and follow the path |goto Desolace 48.99,53.86 < 40 |only if walking
talk Hornizz Brimbuzzle##6019
accept Ghost-o-plasm Round Up##6134 |goto Desolace 47.83,61.82
step
Follow the path up and over the mountain |goto Desolace 46.76,67.06 < 15 |only if walking
talk Uthek the Wise##5397
turnin Ongeku##1373 |goto Desolace 36.22,79.25
accept Khan Jehn##1374 |goto Desolace 36.22,79.25
|only if not hardcore
stickystart "Collect_Nether_Wings"
stickystart "Collect_Felhound_Brains"
step
Follow the road |goto Desolace 46.98,75.20 < 40 |only if walking and not subzone("Mannoroc Coven") and not hardcore
Follow the path up |goto Desolace 52.07,82.38 < 20 |only if walking
kill Doomwarder Captain##4680+
|tip There aren't many available, so you may have to wait for them to respawn.
|tip Work on the other steps around this area while waiting.
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
collect 10 Doomwarder Blood##6252 |q 1466/3 |goto Desolace 51.71,83.27
step
label "Collect_Nether_Wings"
Kill Nether enemies around this area
|tip They look like succubi.
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
collect 10 Nether Wing##6251 |q 1466/2 |goto Desolace 51.03,71.80
You can find more around: |notinsticky
[49.69,77.79]
[52.10,82.27]
[54.01,77.40]
[54.26,70.63]
step
label "Collect_Felhound_Brains"
Kill enemies around this area
|tip Only enemies that look like felhounds will drop the quest item.
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
collect 10 Felhound Brain##6250 |q 1466/1 |goto Desolace 51.06,80.69
You can find more around: |notinsticky
[53.78,84.41]
[53.57,77.87]
[56.41,78.38]
[56.11,72.79]
step
Kill enemies around this area
|tip You should already be level 41, or pretty close.
|tip Watch for patrols and respawns while in the area.		|only if hardcore |notinsticky
ding 41 |goto Desolace 51.03,71.80
You can find more around: |notinsticky
[49.69,77.79]
[52.10,82.27]
[54.01,77.40]
[54.26,70.63]
stickystart "Kill_Undead_Ravagers"
step
Enter the Valley of Bones |goto Desolace 59.06,89.28 < 40 |only if walking
use the Crate of Ghost Magnets##15848
|tip Kill any nearby enemies before using it.
|tip Use it next to the huge bones on the ground around this area.
kill Magrami Spectre##11560+
|tip They continuously walk to the spinning object that appears on the ground.
|tip They will become hostile when they reach the spinning object.
|tip Pull them away from the spinning object to fight them.
|tip They will not aggro in groups if they are still yellow/neutral.
|tip If they are red/hostile, they will pull together.
|tip If you have to wait until they despawn and use the quest item again, that's okay.
|tip Be patient and pull carefully.
|tip Watch for respawns while in the area.	|only if hardcore
collect 8 Ghost-o-plasm##15849 |q 6134/1 |goto Desolace 63.81,91.27
step
label "Kill_Undead_Ravagers"
kill 30 Undead Ravager##11561 |q 261/1 |goto Desolace 63.96,91.95
|tip They look like brown skeletons.
|tip Watch for respawns while in the area.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[59.78,89.83]
[64.52,82.42]
step
Leave the Valley of Bones and follow the path up |goto Desolace 65.27,85.25 < 20 |only if walking and subzone("Valley of Bones")
kill Khan Jehn##5601
|tip He walks in and out of this tent.
collect Khan Jehn's Head##6072 |q 1374/1 |goto Desolace 66.39,80.08
|only if not hardcore
step
talk Hornizz Brimbuzzle##6019
turnin Ghost-o-plasm Round Up##6134 |goto Desolace 47.83,61.83
step
Follow the path up and over the mountain |goto Desolace 46.76,67.06 < 15 |only if walking
talk Uthek the Wise##5397
turnin Khan Jehn##1374 |goto Desolace 36.22,79.25
|only if not hardcore
step
Follow the road into Feralas and run down the path |goto Feralas 47.56,37.72 < 30 |only if walking
Ride the boat or swim across the water |goto Feralas 43.39,42.75 < 40 |only if walking
talk Fyldren Moonfeather##8019
|tip As you travel here, stay on the road and avoid enemies.
|tip They are dangerous to you at this level.
fpath Feathermoon |goto Feralas 30.24,43.25
step
talk Faralorn##7942
|tip Inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 10-12 extra stacks.
|tip You will be questing for a long time without easy access to an ammo vendor.
Visit the Vendor |vendor Faralorn##7942 |goto Feralas 30.65,43.43 |q 261
|only if Hunter
step
talk Antarius##10059
|tip Stable your permanent pet.
|tip You are about to tame a temporary pet, so you can learn "Bite 6".
Click Here to Continue |confirm |goto Feralas 31.47,43.15 |q 261
|only if Hunter
step
_NOTE:_
Tame a Longtooth Runner
|tip Use your "Tame Beast" ability on a Longtooth Runner.
|tip They look like grey wolves around this area.
Learn the "Bite 6" Pet Ability
|tip Kill enemies around this area until you see a message in your chat saying you learned "Bite 6".
|tip You will teach "Bite 6" to your permanent pet soon.
Click Here to Continue |confirm |goto Feralas 29.06,46.80 |q 261
|only if Hunter
step
talk Antarius##10059
|tip Abandon your temporary pet and get your permanent pet from the stable.
|tip Teach "Bite 6" to your permanent pet.
Click Here to Continue |confirm |goto Feralas 31.47,43.15 |q 261
|only if Hunter
step
Enter the building |goto Tanaris 52.21,28.57 < 10 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect Goblin Rumors##5804 |goto Tanaris 52.30,28.91 |q 1117
step
talk Gimblethorn##7799
|tip Inside the building.
|tip Deposit these items into the bank.
bank Sample Elven Gem##4502 |goto Tanaris 52.30,28.91 |q 669 |future
step
talk Kravel Koalbeard##4452
turnin Rumors for Kravel##1117 |goto Thousand Needles 77.79,77.27
step
Watch the dialogue
talk Kravel Koalbeard##4452
accept Back to Booty Bay##1118 |goto Thousand Needles 77.79,77.27
step
talk Fizzle Brassbolts##4454
accept Martek the Exiled##1106 |goto Thousand Needles 78.06,77.12
|tip You must have completed "Salt Flat Venom" and "Hardened Shells" from the "Thousand Needles (33-34)" guide.
step
talk Razzeric##4706
turnin Razzeric's Tweaking##1187 |goto Thousand Needles 80.33,76.10
accept Safety First##1188 |goto Thousand Needles 80.33,76.10
step
talk Shreev##4708
turnin Safety First##1188 |goto Tanaris 51.00,27.20
accept Safety First##1189 |goto Tanaris 51.00,27.20
|only if C_Container.GetItemCooldown(6948) >= 300
step
talk Brother Anton##1182
|tip Inside the building.
turnin Down the Scarlet Path##261 |goto Desolace 66.52,7.91
step
talk Kreldig Ungor##5638
turnin Reagents for Reclaimers Inc.##1466 |goto Desolace 66.20,9.63
accept Reagents for Reclaimers Inc.##1467 |goto Desolace 66.20,9.63
]]
)
