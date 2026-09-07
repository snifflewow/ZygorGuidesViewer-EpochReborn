local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Winterspring (59-59)',
  {
    image = ZGV.IMAGESDIR .. 'Winterspring',
    condition_suggested = function()
      return level == 59 and not completedq(5163)
    end,
    hardcore = true,
  },
  [[
step
Enter Everlook |goto Winterspring 60.56,38.20 < 10 |only if walking
talk Umi Rumplesnicker##10305
accept Are We There, Yeti?##977 |goto Winterspring 60.88,37.62
step
talk Felnok Steelspring##10468
turnin Felnok Steelspring##4808 |goto Winterspring 61.63,38.61
accept Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
Leave Everlook |goto Winterspring 60.56,38.20 < 10 |only if walking and subzone("Everlook")
kill Chillwind Chimaera##7448+
|tip They look like chimaeras.
|tip They share spawn points with the bears, so kill them too.
collect 8 Uncracked Chillwind Horn##12444 |q 4809/1 |goto Winterspring 59.97,21.54
You can find more around: |notinsticky
[54.75,22.59]
[59.18,18.02]
[60.13,12.28]
[57.99,14.79]
step
Run around the mountain |goto Winterspring 62.28,36.37 < 50 |only if walking and subzone("Winterfall Village")
Kill Ice Thistle enemies around this area
|tip Inside and outside the cave.
|tip Only the Matriarchs or Patriarchs will drop the quest item.
|tip Watch for patrols and respawns while here.	|only if hardcore
collect 2 Pristine Yeti Horn##12367 |q 977/1 |goto Winterspring 67.65,41.75
step
Leave the cave |goto Winterspring 67.70,41.57 < 30 |walk |only if subzone("Ice Thistle Hills") and _G.IsIndoors()
Enter Everlook |goto Winterspring 60.56,38.20 < 10 |only if walking
talk Umi Rumplesnicker##10305
turnin Are We There, Yeti?##977 |goto Winterspring 60.88,37.62
accept Are We There, Yeti?##5163 |goto Winterspring 60.88,37.62
step
use Umi's Mechanical Yeti##12928
|tip Use it on Legacki.
Scare Legacki |q 5163/1 |goto Winterspring 61.54,38.62
step
talk Felnok Steelspring##10468
turnin Chillwind Horns##4809 |goto Winterspring 61.63,38.61
step
Enter the building |goto Winterspring 61.33,37.35 < 10 |walk
talk Izzy Coppergrab##13917
|tip Inside the building.
|tip Collect these items from the bank.
collect Irontree Heart##11173 |goto Winterspring 61.45,36.98 |q 4084
collect 11 Silvery Claws##11172 |goto Winterspring 61.45,36.98 |q 4084
|only if not hardcore
step
Leave Everlook |goto Winterspring 60.56,38.20 < 10 |only if walking and subzone("Everlook")
Follow the road and enter the building |goto Moonglade 51.47,41.45 < 15 |walk
talk Rabine Saturna##11801
|tip Inside the building.
turnin Rabine Saturna##6762 |goto Moonglade 51.68,45.09
accept Wasteland##1124 |goto Moonglade 51.68,45.09
step
talk Rabine Saturna##11801
|tip Inside the building.
step
talk Auctioneer Golothas##8723
|tip Inside the building.
|tip Buy these items from the auction house or collect them from your bank.
|tip They are for a quest later and it is highly recommended you purchase them now.
|tip The mobs you farm these from can be very deadly but the quests are a lot of experience. |only if hardcore
collect 20 Encrypted Twilight Text##2592 |goto Darnassus 56.24,54.04 |q 8318 |future
step
Enter the building |goto Darnassus 35.52,10.70 < 10 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building.
turnin Glyphed Oaken Branch##4986 |goto Darnassus 35.38,8.40
step
talk Kyrai##3561
|tip Upstairs inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Kyrai##3561 |goto Darnassus 32.55,19.74 |q 4084
|only if Rogue
step
Enter the building |goto Felwood 51.26,81.70 < 10 |walk
talk Eridan Bluewind##9116
|tip Inside the building.
turnin Silver Heart##4084 |goto Felwood 51.35,81.51
accept Aquementas##4005 |goto Felwood 51.35,81.51
step
use the Umi's Mechanical Yeti##12928
|tip Use it on Sprinkle.
Scare Sprinkle |q 5163/2 |goto Tanaris 51.06,26.87
step
use Eridan's Supplies##11617
collect Irontree Heart##11173 |q 4005
collect 11 Silvery Claws##11172 |q 4005
collect Book of Aquor##11169 |q 4005
step
Enter the tunnel |goto Tanaris 68.62,41.46 < 15 |only if walking
Follow the path |goto Tanaris 73.19,45.54 < 20 |only if walking
Continue following the path |goto Tanaris 72.22,48.95 < 30 |only if walking
use the Book of Aquor##11169
Watch the dialogue
|tip Aquementas will appear and approach from the east and attack you.
kill Aquementas##9453
collect Silver Totem of Aquementas##11522 |q 4005/1 |goto Tanaris 70.42,49.90
step
Enter the cave |goto Un'Goro Crater 43.44,6.77 < 15 |walk
talk J.D. Collie##9117
|tip Inside the cave.
turnin Aquementas##4005 |goto Un'Goro Crater 41.92,2.70
accept Linken's Adventure##3961 |goto Un'Goro Crater 41.92,2.70
step
_Destroy These Items:_
|tip They are no longer needed.
trash Irontree Heart##11173 |goto Un'Goro Crater 43.44,6.77
trash 11 Silvery Claws##11172 |goto Un'Goro Crater 43.44,6.77
trash Book of Aquor##11169 |goto Un'Goro Crater 43.44,6.77
step
Leave the cave |goto Un'Goro Crater 43.44,6.77 < 15 |walk |only if subzone("Marshal's Refuge") and _G.IsIndoors()
talk Linken##8737
turnin Linken's Adventure##3961 |goto Un'Goro Crater 44.66,8.10
step
use the Umi's Mechanical Yeti##12928
|tip Use it on Quixxil.
Scare Quixxil |q 5163/3 |goto Un'Goro Crater 43.67,9.38
]]
)
