local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Stranglethorn Vale (37-38)',
  {
    next = 'Leveling Guides\\Swamp of Sorrows (38-39)',
  },
  [[
step
Enter the building |goto Stranglethorn Vale,28.11,74.98,10 |walk
talk Zarena Cromwind##2482
.tip Inside the building.
buy Big Stick##12251 |n
.tip If you can afford it.
.tip It may not be available to buy, since it's a limited supply item.
.tip If you have better, skip this step.
Visit the Vendor |vendor Zarena Cromwind##2482 |goto Stranglethorn Vale 28.34,75.46 |q 577 |future
|only if Warrior and itemcount(12251) == 0
step
Run up the ramp |goto Stranglethorn Vale,27.85,76.76,10 |only if walking
Cross the bridge |goto Stranglethorn Vale,28.15,76.53,10 |only if walking
Enter the building |goto Stranglethorn Vale,28.21,77.33,7 |walk
talk Drizzlik##2495
.tip Inside the building.
accept Some Assembly Required##577 |goto Stranglethorn Vale 28.29,77.59
step
Enter the building |goto Stranglethorn Vale,27.08,77.62,7 |walk
talk Innkeeper Skindle##6807
.tip Inside the building.
home Booty Bay |goto Stranglethorn Vale 27.04,77.31
step
talk Krazek##773
.tip Upstairs inside the building, on the top floor.
turnin The Rumormonger##1115 |goto Stranglethorn Vale 26.94,77.21
step
talk Kebok##737
.tip Upstairs inside the building, on the top floor.
accept Bloodscalp Ears##189 |goto Stranglethorn Vale 27.00,77.12
step
talk Baron Revilgaz##2496
.tip Upstairs on the balcony of the building.
accept Water Elementals##601 |goto Stranglethorn Vale 27.23,76.87
step
Follow the path up into the Rebel Camp |goto Stranglethorn Vale,39.06,5.21,20 |only if walking
talk Brother Nimetz##739
accept Kurzen's Mystery##207 |goto Stranglethorn Vale 37.83,3.56
step
talk Sergeant Yohwa##733
accept Special Forces##574 |goto Stranglethorn Vale 38.02,3.33
step
talk Corporal Sethman##1422
accept Stop The Shrinking##26902 |goto Stranglethorn Vale 37.7,3.4
.tip This quest requires you to pick up a tablet in Booty Bay and kill trolls to unlock cages.
step
talk Corporal Kaleb##770
turnin Return to Corporal Kaleb##622 |goto Stranglethorn Vale 37.74,3.30
step
talk Lieutenant Doren##469
accept Bookie Herod##200 |goto Stranglethorn Vale 38.04,3.01
.tip This requires you to complete the quest "Jungle Secrets" in the "Stranglethorn Vale (32-32)" guide.
|only if completedq(215)
step
Follow the path |goto Stranglethorn Vale,40.32,8.35,50 |only if walking and not subzone("Kurzen's Compound")
Enter the building |goto Stranglethorn Vale,44.02,9.46,10 |walk
click Bookie Herod's Records
.tip Upstairs inside the building.
turnin Bookie Herod##200 |goto Stranglethorn Vale 43.67,9.37
accept The Hidden Key##328 |goto Stranglethorn Vale 43.67,9.37
step
label "Collect_Liferoot_Warrior"
kill Kurzen Medicine Man##940+
.tip They share spawn points with the other enemies around this area, so kill those too, if you can't find any.
collect 8 Liferoot##3357 |q 1712/1 |goto Stranglethorn Vale 44.34,10.02
.tip You need these for an important class quest soon.
.tip Be careful not to accidentally sell these to a vendor.
|only if Warrior
stickystart "Collect_Silk_Cloth"
stickystart "Kill_Kurzen_Headshrinkers"
stickystart "Kill_Kurzen_Commandos"
step
Enter the cave |goto Stranglethorn Vale,45.82,8.18,40 |walk
Follow the path |goto Stranglethorn Vale,46.65,6.99,15 |walk
Follow the path down |goto Stranglethorn Vale,47.78,7.81,10 |walk
Follow the path |goto Stranglethorn Vale,48.78,8.64,10 |walk
click Bookie Herod's Strongbox##288
.tip Downstairs inside the cave.
.tip Kurzen Headshrinkers are ranged attackers that deal heavy damage.	|only if hardcore
.tip Watch for stealthed Kurzen Commandos while traversing the cave.	|only if hardcore
.tip Enemies may flee when at low health in the cave.			|only if hardcore
turnin The Hidden Key##328 |goto Stranglethorn Vale 49.61,7.57
accept The Spy Revealed!##329 |goto Stranglethorn Vale 49.61,7.57
step
Follow the path up |goto Stranglethorn Vale,48.20,8.53,10 |c |q 574
step
label "Collect_Silk_Cloth"
Kill Kurzen enemies around this area |notinsticky
.tip Inside the cave. |notinsticky
.tip Kurzen Headshrinkers will not drop Silk Cloth. |notinsticky
.tip Kurzen Headshrinkers are ranged attackers that deal heavy damage.	|only if hardcore |notinsticky
.tip Watch for stealthed Kurzen Commandos while traversing the cave.	|only if hardcore |notinsticky
.tip Enemies may flee when at low health in the cave.			|only if hardcore |notinsticky
collect 15 Silk Cloth##4306 |goto Stranglethorn Vale 46.48,7.08 |q 4449 |future
.tip Be careful not to accidentally sell these to a vendor.
.tip You will need these for a quest in Searing Gorge later.
step
label "Kill_Kurzen_Headshrinkers"
kill 6 Kurzen Headshrinker##941 |q 574/2 |goto Stranglethorn Vale 46.48,7.08
.tip Inside the cave, on the top level.
.tip Watch for stealthed Kurzen Commandos while traversing the cave.	|only if hardcore |notinsticky
.tip Enemies may flee when at low health in the cave.			|only if hardcore |notinsticky
step
label "Kill_Kurzen_Commandos"
kill 10 Kurzen Commando##938 |q 574/1 |goto Stranglethorn Vale 46.48,7.08
.tip They are stealthed upstairs inside the cave, on the top level.
.tip Kurzen Headshrinkers are ranged attackers that deal heavy damage.	|only if hardcore |notinsticky
.tip Enemies may flee when at low health in the cave.			|only if hardcore |notinsticky
step
Leave the cave |goto Stranglethorn Vale,45.82,8.18,40 |walk |only if subzone("The Stockpile")
Follow the path up |goto Stranglethorn Vale,42.25,18.10,10 |only if walking
kill Foreman Cozzle##4723
.tip Inside the building at the top of the platform.
.tip Be careful not to accidentally aggro him while killing other enemies near the building.
.tip Try to clear all enemies as you travel up as they can aggro randomly through the floor.
.tip If you have trouble, try to find someone to help you.
collect Cozzle's Key##5851 |goto Stranglethorn Vale 42.65,18.35 |q 1182
|only if hardcore
step
Enter the building |goto Stranglethorn Vale,43.45,20.36,10 |walk
click Cozzle's Footlocker##20691
.tip Inside the building.
collect Fuel Regulator Blueprints##5852 |q 1182/1 |goto Stranglethorn Vale 43.34,20.34
|only if hardcore
stickystart "Kill_CrocolisksSTV"
step
kill 10 Shadowmaw Panther##684 |q 192/1 |goto Stranglethorn Vale 49.23,22.66
.tip They are stealthed around this area.
.tip They do not share spawn points with Stranglethorn Tigresses.
.tip When waiting on respawns, go to the coast and kill Crocolisks then return.
.tip Be careful to avoid the level 40 elite non-stealthed black panther, Bhag'thera, if you see him.
You can find more around [46.42,27.34]
step
label "Kill_CrocolisksSTV"
kill Snapjaw Crocolisk##1152+
.tip Underwater and on the shores near the water around this area.
collect 5 Snapjaw Crocolisk Skin##4104 |q 577/1 |goto Stranglethorn Vale 39.28,30.27
You can find more around: |notinsticky
[40.03,24.70]
[41.52,19.48]
step
kill 10 Lashtail Raptor##686 |q 195/1 |goto Stranglethorn Vale 38.29,19.37
You can find more around: |notinsticky
[38.52,26.06]
[35.81,26.67]
[32.72,24.28]
[30.55,24.12]
step
kill 10 Elder Stranglethorn Tiger##1085 |q 187/1 |goto Stranglethorn Vale 34.68,18.95
You can find more around [31.55,19.39]
step
talk Hemet Nesingwary##715
turnin Raptor Mastery##195 |goto Stranglethorn Vale 35.66,10.81
accept Raptor Mastery##196 |goto Stranglethorn Vale 35.66,10.81
step
talk Ajeck Rouack##717
turnin Tiger Mastery##187 |goto Stranglethorn Vale 35.62,10.62
accept Tiger Mastery##188 |goto Stranglethorn Vale 35.62,10.62
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##192 |goto Stranglethorn Vale 35.55,10.55
step
kill Sin'Dall##729
.tip He looks like an orange tiger that walks around this area.
.tip He's usually on top of this hill, though.
collect Paw of Sin'Dall##3879 |q 188/1 |goto Stranglethorn Vale 32.21,17.39
stickystart "Collect_Bloodscalp_Ears"
step
click Moon Over the Vale##57
.tip Enemies are close togheter around this area.				|only if hardcore
.tip Try to pull form the North Eastern end of the ruins while clearing.	|only if hardcore
collect The First Troll Legend##2005 |q 207/1 |goto Stranglethorn Vale 29.48,19.15
stickystop "Collect_Bloodscalp_Ears"
step
click Gri'lek the Wanderer##179426
.tip Underwater.
.tip Be careful to avoid the elite murlocs nearby.
.tip Swim down when near the coordinate provided for the step.		|only if hardcore
.tip You should be able to easily avoid the elite enemies if doing so.	|only if hardcore
collect The Second Troll Legend##2006 |q 207/2 |goto Stranglethorn Vale 24.75,22.84
step
kill Lesser Water Elemental##691+
.tip These enemies are immune to frost damage.
collect 6 Water Elemental Bracers##3923 |q 601/1 |goto Stranglethorn Vale 21.13,22.70
stickystart "Collect_Bloodscalp_Ears"
step
Follow the path up |goto Stranglethorn Vale,21.42,10.16,15 |only if walking and not subzone("Ruins of Zul'Kunda")
step
free 8 Alliance Adventurer |q 26902/1 |goto Stranglethorn Vale 23.53,10.29
.tip These are NPCs in cages around the Ruins of Zul'Kunda.
.tip Click on the Alliance Adventurers to free them.
step
Continue up the path |goto Stranglethorn Vale,23.84,10.65,20 |only if walking
click The Emperor's Tomb##54
.tip Watch for patrols and respawns while traveling through this area.					|only if hardcore
.tip Be wary of Bloodscalp Headhunters as they are ranged attackers and may aggro from a distance.	|only if hardcore
.tip Bloodscalp enemies enrage to deal more damage when at low health.					|only if hardcore
collect The Fourth Troll Legend##2008 |q 207/4 |goto Stranglethorn Vale 24.70,8.93
step
Follow the path |goto Stranglethorn Vale,24.51,11.72,15 |only if walking
click Fall of Gurubashi##52
.tip Watch for patrols and respawns while traveling through this area.					|only if hardcore
.tip Be wary of Bloodscalp Headhunters as they are ranged attackers and may aggro from a distance.	|only if hardcore
.tip Bloodscalp enemies enrage to deal more damage when at low health.					|only if hardcore
collect The Third Troll Legend##2007 |q 207/3 |goto Stranglethorn Vale 22.95,12.02
stickystart "Collect_Bloodscalp_Tusks_Warrior"
step
label "Collect_Bloodscalp_Ears"
Kill Bloodscalp enemies around this area
.tip Watch for patrols and respawns while traveling through this area.					|only if hardcore |notinsticky
.tip Be wary of Bloodscalp Headhunters as they are ranged attackers and may aggro from a distance.	|only if hardcore |notinsticky
.tip Bloodscalp enemies enrage to deal more damage when at low health.					|only if hardcore |notinsticky
collect 15 Bloodscalp Ear##1519 |q 189/1 |goto Stranglethorn Vale 25.21,11.30
step
label "Collect_Bloodscalp_Tusks_Warrior"
Kill Bloodscalp enemies around this area
collect 9 Bloodscalp Tusk##3901 |q 1712/2 |goto Stranglethorn Vale 25.21,11.30
|only if Warrior
step
Kill enemies around this area
.tip You should already be pretty close to reaching level 38.
.tip Grinding a bit here will reduce the amount you have to grind all at once later.
ding 38 |goto Stranglethorn Vale 28.36,11.33
You can find more around [Stranglethorn Vale 26.26,16.06]
step
talk Ajeck Rouack##717
turnin Tiger Mastery##188 |goto Stranglethorn Vale 35.62,10.62
step
Follow the path up into the Rebel Camp |goto Stranglethorn Vale,39.04,5.19,20 |only if walking
talk Brother Nimetz##739
turnin Kurzen's Mystery##207 |goto Stranglethorn Vale 37.83,3.56
accept Troll Witchery##205 |goto Stranglethorn Vale 37.83,3.56
step
talk Lieutenant Doren##469
turnin Special Forces##574 |goto Stranglethorn Vale 38.04,3.01
turnin The Spy Revealed!##329 |goto Stranglethorn Vale 38.04,3.01
accept Patrol Schedules##330 |goto Stranglethorn Vale 38.04,3.01
step
talk Corporal Sethman##1422
turnin Patrol Schedules##330 |goto Stranglethorn Vale 37.66,3.39
turnin Stop The Shrinking##26902 |goto Stranglethorn Vale 37.66,3.39
accept Report to Doren##331 |goto Stranglethorn Vale 37.66,3.39
step
talk Lieutenant Doren##469
turnin Report to Doren##331 |goto Stranglethorn Vale 38.04,3.01
step
talk Corporal Bluth##734
.tip Buy enough ammo to fill your ammo bag, plus 6-8 extra stacks.
.tip You will be questing and grinding for a while without access to an arrow vendor.
Visit the Vendor |vendor Corporal Bluth##734 |goto Stranglethorn Vale 37.96,2.99 |q 205
|only if Hunter
step
talk Krazek##773
.tip Upstairs inside the building, on the top floor.
accept Dream Dust in the Swamp##1116 |goto Stranglethorn Vale 26.94,77.21
step
talk Kebok##737
.tip Upstairs inside the building, on the top floor.
turnin Bloodscalp Ears##189 |goto Stranglethorn Vale 27.00,77.12
step
talk Baron Revilgaz##2496
.tip Upstairs on the balcony of the building.
turnin Goblin Sponsorship##1182 |goto Stranglethorn Vale 27.23,76.87 |only if hardcore
accept Goblin Sponsorship##1183 |goto Stranglethorn Vale 27.23,76.87 |only if hardcore
turnin Water Elementals##601 |goto Stranglethorn Vale 27.23,76.87
accept Magical Analysis##602 |goto Stranglethorn Vale 27.23,76.87
step
talk Viznik Goldgrubber##2625
.tip Deposit these items into the bank.
bank Bag of Water Elemental Bracers##3960 |goto Stranglethorn Vale 26.54,76.57 |q 602 |future
bank Silk Cloth##4306 |goto Stranglethorn Vale 26.54,76.57 |q 4449 |future
.tip You should have 15 of these.
step
Run up the ramp |goto Stranglethorn Vale,27.85,76.74,10 |only if walking
Cross the bridge |goto Stranglethorn Vale,28.15,76.53,10 |only if walking
Enter the building |goto Stranglethorn Vale,28.21,77.33,7 |walk
talk Drizzlik##2495
.tip Inside the building.
turnin Some Assembly Required##577 |goto Stranglethorn Vale 28.29,77.59
step
Enter the building |goto Stranglethorn Vale,28.11,74.98,10 |walk
talk Zarena Cromwind##2482
.tip Inside the building.
buy Big Stick##12251 |n
.tip If you can afford it.
.tip It may not be available to buy, since it's a limited supply item.
.tip If you have better, skip this step.
Visit the Vendor |vendor Zarena Cromwind##2482 |goto Stranglethorn Vale 28.34,75.46 |q 602
|only if Warrior and itemcount(12251) == 0
]]
)
