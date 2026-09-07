local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Winterspring (55-56)',
  {
    next = 'Leveling Guides\\Western Plaguelands (56-56)',
  },
  [[
step
Follow the road |goto Felwood,64.18,15.20,30 |only if walking and not zone("Winterspring")
Enter the tunnel to leave Felwood |goto Felwood,65.13,8.01,10 |walk |only if not zone("Winterspring")
Leave the tunnel to enter Winterspring |goto Felwood,68.40,5.84,10 |walk |only if not zone("Winterspring")
talk Donova Snowden##9298
turnin Toxic Horrors##5086 |goto Winterspring 31.27,45.16
accept Winterfall Runners##5087 |goto Winterspring 31.27,45.16
|only if not hardcore
step
kill Winterfall Runner##10916+
.tip They look like a group of 3 white furbolgs that walk back and forth along this road.
.tip Check these locations, and if you don't find them, wait at the location in this step closest to Everlook.
.tip They will eventually walk past this location.
collect Winterfall Crate##12829 |q 5087/1 |goto Winterspring 30.04,42.55
You can also find them around: |notinsticky
[46.96,39.54]
[53.55,33.96]
If you don't want to wait for the patrol, there's also usually one in Felwood around [Felwood 60.23,5.75]
|only if not hardcore
step
Follow the path up |goto Winterspring,53.48,28.64,50 |only if walking and not subzone("Starfall Village")
Enter the building |goto Winterspring,51.39,29.82,15 |only if walking
talk Wynd Nightchaser##11079
.tip Inside the building.
turnin Starfall##5250 |goto Winterspring 51.97,30.39
accept The Ruins of Kel'Theril##5244 |goto Winterspring 51.97,30.39
step
talk Jaron Stoneshaper##10301
.tip Inside the building.
turnin The Ruins of Kel'Theril##5244 |goto Winterspring 52.14,30.43
accept Troubled Spirits of Kel'Theril##5245 |goto Winterspring 52.14,30.43
accept Enraged Wildkin##4861 |goto Winterspring 52.14,30.43
step
click Highborne Relic Fragment##175892
.tip Two enemies will appear and attack you.
.tip If the Water Invasion is up, be very mindful of Princess Tempestra patrolling the lake. She is an elite water elemental. |only if hardcore
collect Second Relic Fragment##12897 |q 5245/2 |goto Winterspring 50.88,41.71
step
click Highborne Relic Fragment##175892
.tip Two enemies will appear and attack you.
.tip If the Water Invasion is up, be very mindful of Princess Tempestra patrolling the lake. She is an elite water elemental. |only if hardcore
collect Fourth Relic Fragment##12899 |q 5245/4 |goto Winterspring 52.42,41.50
step
click Highborne Relic Fragment##175892
.tip Two enemies will appear and attack you.
.tip If the Water Invasion is up, be very mindful of Princess Tempestra patrolling the lake. She is an elite water elemental. |only if hardcore
collect Third Relic Fragment##12898 |q 5245/3 |goto Winterspring 53.31,43.43
step
click Highborne Relic Fragment##175892
.tip Two enemies will appear and attack you.
.tip If the Water Invasion is up, be very mindful of Princess Tempestra patrolling the lake. She is an elite water elemental. |only if hardcore
collect First Relic Fragment##12896 |q 5245/1 |goto Winterspring 55.14,42.98
step
Kill enemies around this area
.tip You should already be pretty close to reaching level 56.
.tip You are about to have to go to an area with higher level enemies, so being a level higher will help.
.tip Watch for respawns while here.	|only if hardcore
.tip If the Water Invasion is up, be very mindful of Princess Tempestra patrolling the lake. She is an elite water elemental. |only if hardcore
ding 56 |goto Winterspring 50.88,41.71
You can find more around: |notinsticky
[52.42,41.50]
[53.31,43.43]
[55.14,42.98]
step
Enter Everlook |goto Winterspring,60.56,38.20,10 |only if walking
talk Umi Rumplesnicker##10305
accept Are We There, Yeti?##3783 |goto Winterspring 60.88,37.62
step
Enter the building |goto Winterspring,61.32,38.72,10 |walk
talk Innkeeper Vizzie##11118
.tip Inside the building.
home Everlook |goto Winterspring 61.36,38.83
step
Enter the building |goto Winterspring,61.33,37.35,10 |walk
talk Izzy Coppergrab##13917
.tip Inside the building.
.tip Deposit these items into the bank.
bank Irontree Heart##11173 |goto Winterspring 61.45,36.98 |q 4084 |only if not hardcore
bank Silvery Claws##11172 |goto Winterspring 61.45,36.98 |q 4084 |only if not hardcore
.tip You should have 11 of these.
bank Jaron's Pick##12891 |goto Winterspring 61.45,36.98 |q 5245
bank First Relic Fragment##12896 |goto Winterspring 61.45,36.98 |q 5245
bank Second Relic Fragment##12897 |goto Winterspring 61.45,36.98 |q 5245
bank Third Relic Fragment##12898 |goto Winterspring 61.45,36.98 |q 5245
bank Fourth Relic Fragment##12899 |goto Winterspring 61.45,36.98 |q 5245
step
Leave Everlook |goto Winterspring,60.56,38.20,10 |only if walking and subzone("Everlook")
Kill Ice Thistle enemies around this area
.tip Watch for patrols and respawns while here.	|only if hardcore
.tip Ice Thistle Yeti can stun, be careful. |only if hardcore
collect 10 Thick Yeti Fur##12366 |q 3783/1 |goto Winterspring 66.79,43.34
You can find more inside the cave at [67.65,41.75]
step
Leave the cave |goto Winterspring,67.65,41.75,30 |walk |only if subzone("Ice Thistle Hills") and _G.IsIndoors()
click Damaged Crate##175587
turnin Enraged Wildkin##4861 |goto Winterspring 59.00,59.78
accept Enraged Wildkin##4863 |goto Winterspring 59.00,59.78
step
click Jaron's Wagon##175586
turnin Enraged Wildkin##4863 |goto Winterspring 61.41,60.68
accept Enraged Wildkin##4864 |goto Winterspring 61.41,60.68
step
click Jaron's Supplies##175629
.tip It is a small box beside the wagon.
collect Jaron's Supplies##12525 |q 4864/1 |goto Winterspring 61.39,60.73
step
talk Ranshalla##10300
turnin Find Ranshalla##979 |goto Winterspring 63.07,59.47
accept Guardians of the Altar##4901 |goto Winterspring 63.07,59.47
stickystart "Collect_Blue_Feathered_Amulet"
step
Watch the dialogue
.tip Follow Ranshalla and protect her as she walks.
.tip Let her get attacked first, so she will help you fight.
click Fire of Elune+
.tip They look like brown torch poles in each of the caves she walks into.
.tip Click them to get her to start walking again.
click Altar of Elune
.tip It looks like a stone table, at this location, that she eventually walks to.
Discover the Secret of the Altar of Elune |q 4901/1 |goto Winterspring 64.86,63.69
.tip If you have trouble, try to find someone to help you.
step
label "Collect_Blue_Feathered_Amulet"
Kill Owlbeast enemies around this area |notinsticky
.tip Watch for respawns while here.	|only if hardcore|notinsticky
collect Blue-feathered Amulet##12524 |q 4864/2 |goto Winterspring 65.42,60.38
.tip If you have trouble, try to find someone to help you. |notinsticky
step
Cross the bridge |goto Winterspring,62.42,67.44,40 |only if walking
Discover Darkwhisper Gorge |q 4842/1 |goto Winterspring 59.84,74.12
step
talk Gregor Greystone##10431
.tip Inside the building.
accept The Everlook Report##6028 |goto Winterspring 61.35,38.97
accept Duke Nicholas Zverenhoff##6030 |goto Winterspring 61.35,38.97
step
talk Jessica Redpath##11629
.tip Inside the building.
accept Sister Pamela##5601 |goto Winterspring 61.28,38.98
step
Enter the building |goto Winterspring,61.33,37.35,10 |walk
talk Izzy Coppergrab##13917
.tip Inside the building.
.tip Collect these items from the bank.
collect Black Dragonflight Molt##10575 |goto Winterspring 61.45,36.98 |q 4022 |future |only if not hardcore
collect 6 Filled Cursed Ooze Jar##11947 |goto Winterspring 61.45,36.98 |q 4512
collect 6 Filled Tainted Ooze Jar##11949 |goto Winterspring 61.45,36.98 |q 4512
collect Drawing Kit##10445 |goto Winterspring 61.45,36.98 |q 3461
step
talk Izzy Coppergrab##13917
.tip Inside the building.
.tip Deposit these items into the bank.
bank Studies in Spirit Speaking##15790 |goto Winterspring 61.45,36.98 |q 6030
step
talk Umi Rumplesnicker##10305
turnin Are We There, Yeti?##3783 |goto Winterspring 60.88,37.62
step
Leave Everlook |goto Winterspring,60.56,38.20,10 |only if walking and subzone("Everlook")
Follow the path up |goto Winterspring,53.48,28.64,50 |only if walking and not subzone("Starfall Village")
Enter the building |goto Winterspring,51.39,29.82,15 |only if walking
talk Jaron Stoneshaper##10301
.tip Inside the building.
turnin Enraged Wildkin##4864 |goto Winterspring 52.14,30.43
step
talk Natheril Raincaller##2084
.tip Inside the building.
.tip Buy enough ammo to fill your ammo bag, plus 10-12 extra stacks.
.tip You will be questing a while.
Visit the Vendor |vendor Natheril Raincaller##2084 |goto Winterspring 51.45,30.83 |q 4842
|only if Hunter
step
talk Donova Snowden##9298
turnin Strange Sources##4842 |goto Winterspring 31.27,45.16
turnin Winterfall Runners##5087 |goto Winterspring 31.27,45.16 |only if not hardcore
step
talk Erelas Ambersky##7916
.tip Inside the building.
turnin Guardians of the Altar##4901 |goto Teldrassil 55.50,92.05
accept Wildkin of Elune##4902 |goto Teldrassil 55.50,92.05
step
Enter the building |goto Darnassus,35.52,10.70,10 |walk
talk Arch Druid Fandral Staghelm##3516
.tip He walks around inside the building, at the top.
turnin Wildkin of Elune##4902 |goto Darnassus 34.82,9.25
step
talk Kyrai##3561
.tip Upstairs inside the building.
.tip Stock up on poisons.
.tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Kyrai##3561 |goto Darnassus 32.55,19.74 |q 6028
|only if Rogue
]]
)
