local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Stranglethorn Vale (44-45)',
  {
    image = ZGV.IMAGESDIR .. 'Stranglethorn Vale',
    condition_suggested = function()
      return level >= 44 and level <= 45 and not completedq(1122)
    end,
    next = 'Leveling Guides\\Feralas (45-48)',
    hardcore = true,
  },
  [[
step
Enter the building |goto Stranglethorn Vale 27.64,77.09 < 7 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
accept Voodoo Dues##609 |goto Stranglethorn Vale 27.78,77.07
step
Enter the building |goto Stranglethorn Vale 27.08,77.62 < 7 |walk
talk Whiskey Slim##2491
|tip Inside the building, on the bottom floor.
accept Whiskey Slim's Lost Grog##580 |goto Stranglethorn Vale 27.13,77.45
step
talk Crank Fizzlebub##2498
|tip Inside the building, on the bottom floor.
accept Zanzil's Secret##621 |goto Stranglethorn Vale 27.12,77.21
step
talk Ian Strom##1411
trainer Ian Strom##1411 |goto Stranglethorn Vale/0 26.82,77.16 |q 621
|tip He is on the second floor of the inn, in a back room.
|tip Train your spells.
|only if Rogue
step
talk Deeg##2488
|tip Upstairs inside the building, on the top floor.
accept Up to Snuff##587 |goto Stranglethorn Vale 26.92,77.35
step
talk Fleet Master Seahorn##2487
|tip Upstairs on the balcony of the building, on the top floor.
accept The Bloodsail Buccaneers##604 |goto Stranglethorn Vale 27.17,77.01
step
talk Privateer Bloads##2494
|tip He walks around this area.
accept Akiris by the Bundle##617 |goto Stranglethorn Vale 26.76,76.38
He sometimes walks to [27.43,76.78]
step
Run up the ramp and follow the path |goto Stranglethorn Vale 28.07,76.49 < 10 |only if walking
talk Dizzy One-Eye##2493
|tip Outside, next to the building.
accept Keep An Eye Out##576 |goto Stranglethorn Vale 28.59,75.90
stickystart "Collect_Snuff"
stickystart "Collect_Dizzys_Eye"
stickystart "Kill_Bloodsail_Swashbucklers"
step
Enter the tunnel to leave Booty Bay |goto Stranglethorn Vale 28.00,73.46 < 15 |only if walking and subzone("Booty Bay")
Follow the path |goto Stranglethorn Vale 32.89,73.75 < 40 |only if walking and not subzone("Wild Shore")
click Bloodsail Charts##2086
|tip It looks like a brown piece of paper.
|tip It can spawn on any of the objects in these 2 small camps.
collect Bloodsail Charts##3920 |q 604/2 |goto Stranglethorn Vale 29.59,80.83
Also check around: |notinsticky
[27.15,82.69]
[27.74,83.13]
step
click Bloodsail Orders##2087
|tip It looks like a white unrolled scroll.
|tip It can spawn on any of the objects in these 2 small camps.
|tip Enemies tend to bunch together around here.				|only if hardcore |notinsticky
|tip Bloodsail Warlocks are ranged attackers with pets that deal heavy damage.	|only if hardcore |notinsticky
collect Bloodsail Orders##3921 |q 604/3 |goto Stranglethorn Vale 29.59,80.80
Also check around: |notinsticky
[27.18,82.66]
[27.74,83.13]
step
label "Collect_Snuff"
Kill Bloodsail enemies around this area
|tip Enemies tend to bunch together around here.				|only if hardcore |notinsticky
|tip Bloodsail Warlocks are ranged attackers with pets that deal heavy damage.	|only if hardcore |notinsticky
collect 15 Snuff##3910 |q 587/1 |goto Stranglethorn Vale 27.07,82.90
You can find more around: |notinsticky
[29.78,81.38]
[32.96,73.85]
step
label "Collect_Dizzys_Eye"
Kill Bloodsail enemies around this area
|tip Enemies tend to bunch together around here.				|only if hardcore |notinsticky
|tip Bloodsail Warlocks are ranged attackers with pets that deal heavy damage.	|only if hardcore |notinsticky
collect Dizzy's Eye##3897 |q 576/1 |goto Stranglethorn Vale 27.07,82.90
You can find more around: |notinsticky
[29.78,81.38]
[32.96,73.85]
step
label "Kill_Bloodsail_Swashbucklers"
kill 10 Bloodsail Swashbuckler##1563 |q 604/1 |goto Stranglethorn Vale 27.07,82.90
|tip Enemies tend to bunch together around here.				|only if hardcore |notinsticky
|tip Bloodsail Warlocks are ranged attackers with pets that deal heavy damage.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[29.78,81.38]
[32.96,73.85]
step
Follow the path |goto Stranglethorn Vale 32.75,73.68 < 40 |only if walking and subzone("Wild Shore")
Enter the tunnel to enter Booty Bay |goto Stranglethorn Vale 29.56,72.51 < 15 |only if walking and not subzone("Booty Bay")
talk Dizzy One-Eye##2493
|tip Outside, next to the building.
turnin Keep An Eye Out##576 |goto Stranglethorn Vale 28.59,75.90
step
Enter the building |goto Stranglethorn Vale 27.08,77.62 < 7 |walk |only if not subzone("The Salty Sailor Tavern")
talk Innkeeper Skindle##6807
|tip Inside the building, on the bottom floor.
home Booty Bay |goto Stranglethorn Vale 27.04,77.31
step
talk Deeg##2488
|tip Upstairs inside the building, on the top floor.
turnin Up to Snuff##587 |goto Stranglethorn Vale 26.92,77.35
step
talk Fleet Master Seahorn##2487
|tip Upstairs on the balcony of the building.
turnin The Bloodsail Buccaneers##604 |goto Stranglethorn Vale 27.17,77.01
accept The Bloodsail Buccaneers##608 |goto Stranglethorn Vale 27.17,77.01 |only if not hardcore
step
Enter the tunnel to leave Booty Bay |goto Stranglethorn Vale 28.00,73.46 < 15 |only if walking and subzone("Booty Bay")
kill Naga Explorer##1907+
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect 10 Akiris Reed##4029 |q 617/1 |goto Stranglethorn Vale 27.88,62.75
You can find more around: |notinsticky
[27.00,63.02]
[25.43,62.88]
[26.04,60.45]
stickystart "Collect_Zanzils_Mixture"
step
Cross the bridge |goto Stranglethorn Vale 27.20,58.95 < 20 |only if walking and subzone("Southern Savage Coast")
kill Jon-Jon the Crow##2536
|tip There may be 2 adds around him that will pull if you attack him.	|only if hardcore
|tip Clear the area before attempting to kill.				|only if hardcore
collect Jon-Jon's Golden Spyglass##3925 |q 609/2 |goto Stranglethorn Vale 34.93,51.85
step
kill Maury "Club Foot" Wilkins##2535
|tip There may be 2 adds around him that will pull if you attack him.	|only if hardcore
|tip Clear the area before attempting to kill.				|only if hardcore
collect Maury's Clubbed Foot##3924 |q 609/1 |goto Stranglethorn Vale 35.25,51.26
step
Follow the path |goto Stranglethorn Vale 33.73,53.77 < 30 |only if walking and not subzone("Ruins of Aboraz")
kill Chucky "Ten Thumbs"##2537
collect Chucky's Huge Ring##3926 |q 609/3 |goto Stranglethorn Vale 40.00,58.24
step
label "Collect_Zanzils_Mixture"
Kill Zanzil enemies around this area
|tip The respawns here can be slow, rotate between the two locations as needed.
|tip Be careful to not attack Zanzil the Outcast in the ruins.	|only if subzone("Ruins of Aboraz")
|tip He summons a lot of enemies.				|only if subzone("Ruins of Aboraz")
|tip If you accidentally pull him, you can run in the water to evade him. |only if subzone("Ruins of Aboraz")
collect 12 Zanzil's Mixture##4016 |q 621/1 |goto Stranglethorn Vale 40.00,58.24
You can find more around [34.12,51.96]
step
Follow the path back to the road |goto Stranglethorn Vale 37.84,56.28 < 20 |only if walking and subzone("Ruins of Aboraz")
Follow the road to this location and follow the path |goto Stranglethorn Vale 38.57,40.68 < 100 |only if walking
kill Tethis##730
|tip He looks like a blue raptor that walks around this area.
|tip Be sure to clear non-elite enemies nearby before pulling.
|tip He is a level 43 elite, but you should be able to kill him at this level.
|tip If you have trouble, try to find someone to help you.
|tip If you don't want to risk trying to kill him, skip the quest and abandon "Raptor Mastery". |only if hardcore
collect Talon of Tethis##3877 |q 197/1 |goto Stranglethorn Vale 32.22,40.89
You can also find him around: |notinsticky
[31.17,43.40]
[28.74,44.84]
|only if haveq(197)
step
kill Bhag'thera##728
|tip He looks like an unstealthed black panther.
|tip Be sure to clear non-elite enemies nearby before pulling.
|tip He is a level 40 elite, so you should be able to kill him pretty easily.
|tip If you have trouble, try to find someone to help you.
|tip He can spawn in multiple locations.
|tip If you don't want to risk trying to kill him, skip the quest and abandon "Panther Mastery". |only if hardcore
collect Fang of Bhag'thera##3876 |q 193/1 |goto Stranglethorn Vale 46.37,29.05
Cross this tree bridge to get to the other locations: [48.92,28.04]
You can also find him around: |notinsticky
[49.60,24.03]
[48.99,20.20]
|only if haveq(193)
step
talk Hemet Nesingwary##715
turnin Raptor Mastery##197 |goto Stranglethorn Vale 35.66,10.81
|only if haveq(197)
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##193 |goto Stranglethorn Vale 35.55,10.55
|only if haveq(193)
step
talk Crank Fizzlebub##2498
|tip Inside the building, on the bottom floor.
turnin Zanzil's Secret##621 |goto Stranglethorn Vale 27.12,77.21
step
talk Privateer Bloads##2494
|tip He walks around this area.
turnin Akiris by the Bundle##617 |goto Stranglethorn Vale 26.76,76.38
accept Akiris by the Bundle##623 |goto Stranglethorn Vale 26.76,76.38
He sometimes walks to [27.43,76.78]
step
Enter the building |goto Stranglethorn Vale 27.64,77.09 < 7 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
turnin Voodoo Dues##609 |goto Stranglethorn Vale 27.78,77.07
step
Enter the building |goto Stranglethorn Vale 28.10,75.00 < 15 |walk
talk Haren Kanmae##2839
|tip Inside the building.
|tip Buy enough ammo to fill your ammo bag, plus 10-12 extra stacks.
|tip You are around to have a long grind.
Visit the Vendor |vendor Haren Kanmae##2839 |goto Stranglethorn Vale 28.31,74.56 |q 623
|only if Hunter
step
Enter the tunnel to leave Booty Bay |goto Stranglethorn Vale 28.00,73.46 < 15 |only if walking and subzone("Booty Bay")
Kill enemies around this area
|tip This is a longer grind, but you are about to have to complete some difficult quests on the boats south of Booty Bay, so being a level higher will help. |only if not hardcore
|tip Grinding now will also reduce the amount you have to grind all at once later.
|tip Alternatively, you could run a dungeon, if you prefer.
ding 45 |goto Stranglethorn Vale 31.72,67.03
You can find more around: |notinsticky
[Stranglethorn Vale 33.79,64.66]
[Stranglethorn Vale 32.18,59.97]
step
Enter the tunnel to enter Booty Bay |goto Stranglethorn Vale 29.56,72.51 < 15 |only if walking
Enter Booty Bay |complete subzone("Booty Bay") |goto Stranglethorn Vale 24.70,75.54 |q 1119 |future
|only if not subzone("Booty Bay")
step
Swim out of Booty Bay |goto Stranglethorn Vale 24.70,75.54 < 40 |only if walking and subzone("Booty Bay")
Run up the ramp to board the ship |goto Stranglethorn Vale 29.89,89.33 < 10 |only if walking
kill Captain Keelhaul##2548 |q 608/2 |goto Stranglethorn Vale 29.20,88.34
|tip He walks around this area, downstairs inside the ship.
|tip On the middle floor.
|tip If you have trouble, try to find someone to help you.
|only if not hardcore
step
click Cortello's Riddle##2554
|tip It looks like a white rolled up scroll.
|tip It can spawn in multiple locations on any floor downstairs inside the ship.
collect Cortello's Riddle##4056 |goto Stranglethorn Vale 29.20,88.60 |q 624 |future |or
|tip
Click Here if the Scroll is Not On This Ship |confirm |or
|only if not (haveq(624) or completedq(624)) and not hardcore
step
Run up the ramp to board the ship |goto Stranglethorn Vale 30.17,89.43 < 10 |only if walking
kill Fleet Master Firallon##2546 |q 608/3 |goto Stranglethorn Vale 30.58,90.64
|tip Downstairs inside the ship.
|tip On the middle floor.
|tip He's level 48, but you should be able to kill him at this level.
|tip If you have trouble, try to find someone to help you.
|only if not hardcore
step
click Cortello's Riddle
|tip It looks like a white rolled up scroll.
|tip It can spawn in multiple locations on any floor downstairs inside the ship.
collect Cortello's Riddle##4056 |goto Stranglethorn Vale 30.64,90.17 |q 624 |future |or
|tip
Click Here if the Scroll is Not On This Ship |confirm |or
|only if not (haveq(624) or completedq(624)) and not hardcore
step
Run up the ramp to board the ship |goto Stranglethorn Vale 33.66,87.48 < 10 |only if walking
kill Captain Stillwater##2550 |q 608/1 |goto Stranglethorn Vale 32.87,88.20
|tip Downstairs inside the ship.
|tip On the middle floor.
|tip If you have trouble, try to find someone to help you.
|only if not hardcore
step
click Cortello's Riddle
|tip It looks like a white rolled up scroll.
|tip It can spawn in multiple locations on any floor downstairs inside the ship.
collect Cortello's Riddle##4056 |goto Stranglethorn Vale 33.39,88.17 |q 624 |future
|tip If you still can't find it, skip the quest.
|only if not (haveq(624) or completedq(624)) and not hardcore
step
use Cortello's Riddle##4056
accept Cortello's Riddle##624
|only if itemcount(4056) > 0
step
cast Teleport: Moonglade##18960
trainer Loganaar##12042 |goto Moonglade/0 52.50,40.54 |q 608
|tip Go to Moonglade and train your spells, then hearth once it is off cooldown.
|only if Druid and C_Container.GetItemCooldown(6948) <= 100
step
use the Hearthstone##6948
Hearth to Booty Bay |goto Stranglethorn Vale 27.07,77.28 < 30 |noway |c |q 608
|only if subzone("Wild Shore")
step
_WARNING:_
|tip Do NOT accept the quest in the next step, if you are not planning to continue for at least 1 hour more.
|tip The quest has a time limit of 2 hours to complete, and it continues counting down even when you're logged out.
|tip You will turn the quest in fairly soon, so you shouldn't need the full 2 hours.
Click Here to Continue |confirm |q 1119 |future
step
talk Crank Fizzlebub##2498
|tip Inside the building, on the bottom floor.
accept Zanzil's Mixture and a Fool's Stout##1119 |goto Stranglethorn Vale 27.12,77.21
step
talk Fleet Master Seahorn##2487
|tip Upstairs, on the balcony of the building.
turnin The Bloodsail Buccaneers##608 |goto Stranglethorn Vale 27.17,77.00
|only if not hardcore
step
click A Soggy Scroll##2553
|tip Underwater, under the bridge.
turnin Cortello's Riddle##624 |goto Swamp of Sorrows 22.86,48.19
accept Cortello's Riddle##625 |goto Swamp of Sorrows 22.86,48.19
|only if haveq(624)
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 623
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 623
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock |q 623
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 623
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 623
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 623
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 623
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip In the basement. |only if Warlock
|tip Train your spells.
step
talk Privateer Groy##2616
|tip He walks around this area.
turnin Akiris by the Bundle##623 |goto Dustwallow Marsh 68.84,53.22
Also check around [Dustwallow Marsh 68.02,51.44]
step
Enter the cave |goto Dustwallow Marsh 31.71,65.74 < 15 |walk
click Musty Scroll##2555
|tip Inside the cave.
turnin Cortello's Riddle##625 |goto Dustwallow Marsh 31.10,66.15
accept Cortello's Riddle##626 |goto Dustwallow Marsh 31.10,66.15
|only if haveq(625)
step
talk Kravel Koalbeard##4452
turnin Zanzil's Mixture and a Fool's Stout##1119 |goto Thousand Needles 77.79,77.27
step
Watch the dialogue
talk Kravel Koalbeard##4452
accept Get the Gnomes Drunk##1120 |goto Thousand Needles 77.79,77.27
step
talk Gnome Pit Boss##4495
turnin Get the Gnomes Drunk##1120 |goto Thousand Needles 77.56,76.94
step
talk Kravel Koalbeard##4452
accept Report Back to Fizzlebub##1122 |goto Thousand Needles 77.79,77.27
]]
)
