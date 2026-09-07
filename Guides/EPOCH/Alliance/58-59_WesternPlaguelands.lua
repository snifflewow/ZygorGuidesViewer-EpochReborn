local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Western Plaguelands (58-59)',
  {
    image = ZGV.IMAGESDIR .. 'Western Plaguelands',
    condition_suggested = function()
      return level >= 58 and level <= 59 and not completedq(7795)
    end,
    next = 'Leveling Guides\\Winterspring (59-59)',
    hardcore = true,
  },
  [[
step
talk High Priestess MacDonnell##11053
turnin Return to Chillwind Camp##5223 |goto Western Plaguelands 42.97,84.50
accept Target: Gahrron's Withering##5225 |goto Western Plaguelands 42.97,84.50
step
talk Alchemist Arbington##11056
turnin Skeletal Fragments##5537 |goto Western Plaguelands 42.67,83.77
step
talk Flint Shadowmore##12425
turnin The Eastern Plagues##6185 |goto Western Plaguelands 43.61,84.51
accept The Blightcaller Cometh##6186 |goto Western Plaguelands 43.61,84.51
step
talk Nathaniel Dumah##11616
turnin A Plague Upon Thee##5903 |goto Western Plaguelands 43.42,84.84
accept A Plague Upon Thee##5904 |goto Western Plaguelands 43.42,84.84
step
_Destroy These Items:_
|tip They are no longer needed.
trash Plagueland Termites##15043 |goto Western Plaguelands 49.29,78.56
step
Enter the building |goto Western Plaguelands 49.29,78.56 < 10 |walk
talk Marlene Redpath##10927
|tip Upstairs inside the building.
turnin Auntie Marlene##5152 |goto Western Plaguelands 49.17,78.58
accept A Strange Historian##5153 |goto Western Plaguelands 49.17,78.58
step
click Joseph Redpath's Monument
collect Joseph's Wedding Ring##12894 |q 5153/1 |goto Western Plaguelands 49.68,76.77
step
Cross the bridge |goto Western Plaguelands 49.22,73.14 < 30 |only if walking and subzone("Sorrow Hill")
Enter the building |goto Western Plaguelands 39.57,68.38 < 10 |walk
talk Chromie##10667
|tip Upstairs inside the building.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
turnin A Strange Historian##5153 |goto Western Plaguelands 39.45,66.76
accept The Annals of Darrowshire##5154 |goto Western Plaguelands 39.45,66.76
accept A Matter of Time##4971 |goto Western Plaguelands 39.45,66.76
step
use the Temporal Displacer##12627
|tip Use it near the cylinder structures with blue light shining out of them around this area.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
|tip The parasites evade in water, run to the river if you're overwhelmed |only if hardcore
kill 15 Temporal Parasite##10717 |q 4971/1 |goto Western Plaguelands 45.02,62.68
You can find more around: |notinsticky
[46.77,62.41]
[47.93,63.01]
[48.14,66.12]
[49.95,66.69]
[48.97,68.53]
step
Be careful to avoid the enemies nearby and enter the building |goto Western Plaguelands 44.09,69.22 < 10 |walk
click Musty Tome+
|tip They look like blue books on the floor inside this building.
|tip Only one of them is the real book, and it's random.
|tip If you click fake books, enemies will spawn, so try to only click the real book.
|tip To identify the real book, zoom in your view, mouse over the books to highlight them, and look at the book pages.
|tip The fake books will have very blurry pages, with the top half of pages shaded darker than the bottom half of pages.
|tip The real book pages look sharper and the top half and bottom half of the pages are not shaded differently. It will be pure white.
|tip If the correct book isn't there, click other books and kill enemies until the correct book appears.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Annals of Darrowshire##12900 |q 5154/1 |goto Western Plaguelands 43.52,69.55
step
Leave the building and be careful to avoid the enemies nearby |goto Western Plaguelands 44.09,69.22 < 10 |walk |only if subzone("Ruins of Andorhal") and _G.IsIndoors()
Enter the building |goto Western Plaguelands 39.57,68.38 < 10 |walk
talk Chromie##10667
|tip Upstairs inside the building.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
turnin A Matter of Time##4971 |goto Western Plaguelands 39.45,66.76
turnin The Annals of Darrowshire##5154 |goto Western Plaguelands 39.45,66.76
accept Counting Out Time##4972 |goto Western Plaguelands 39.45,66.76
accept Brother Carlin##5210 |goto Western Plaguelands 39.45,66.76
step
click Small Lockbox##175802+
|tip They look like small grey metal chests on the ground inside the crumbled buildings around this area.
|tip There's typically one per ruined building.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect 5 Andorhal Watch##12638 |q 4972/1 |goto Western Plaguelands 38.29,69.63
You can find more at: |notinsticky
[38.88,68.06]
[40.27,68.17]
[40.85,67.14]
[40.32,66.48]
step
Enter the building |goto Western Plaguelands 39.57,68.38 < 10 |walk
talk Chromie##10667
|tip Upstairs inside the building.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
turnin Counting Out Time##4972 |goto Western Plaguelands 39.45,66.76
step
Enter the building |goto Western Plaguelands 53.60,64.79 < 10 |walk
talk Mulgris Deepriver##10739
|tip Inside the building.
|tip Freezing Ghouls may incapacitate you, so fight them with full health when possible.	|only if hardcore
turnin The Wildlife Suffers Too##4985 |goto Western Plaguelands 53.72,64.67
accept Glyphed Oaken Branch##4986 |goto Western Plaguelands 53.72,64.67
step
kill Cauldron Lord Soulwrath##11078
|tip He walks around this area.
collect Gahrron's Withering Cauldron Key##13196 |q 5225/1 |goto Western Plaguelands 62.78,58.75
step
click Scourge Cauldron##176392
turnin Target: Gahrron's Withering##5225 |goto Western Plaguelands 62.56,58.57
accept Return to Chillwind Point##5226 |goto Western Plaguelands 62.56,58.57
step
click Northridge Lumber Mill Crate##177490
|tip Inside the building.
Choose _"Place Termite Barrel on the crate."_
click Termite Barrel##
|tip It appears on top of the crate.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
turnin A Plague Upon Thee##5904 |goto Western Plaguelands 48.35,32.00
accept A Plague Upon Thee##6389 |goto Western Plaguelands 48.35,32.00
step
talk Kirsta Deepshadow##11610
accept Unfinished Business##6004 |goto Western Plaguelands 51.92,28.06
stickystart "Kill_Scarlet_Hunters"
stickystart "Kill_Scarlet_Mages"
stickystart "Kill_Scarlet_Knights"
step
kill 2 Scarlet Medic##10605 |q 6004/1 |goto Western Plaguelands 51.67,44.39
|tip They share spawn points with other Scarlet enemies, so kill them too, if you can't find any.
step
label "Kill_Scarlet_Hunters"
kill 2 Scarlet Hunter##1831 |q 6004/2 |goto Western Plaguelands 51.67,44.39
|tip They share spawn points with other Scarlet enemies, so kill them too, if you can't find any. |notinsticky
step
label "Kill_Scarlet_Mages"
kill 2 Scarlet Mage##1826 |q 6004/3 |goto Western Plaguelands 50.47,41.12
|tip They share spawn points with other Scarlet enemies, so kill them too, if you can't find any. |notinsticky
step
label "Kill_Scarlet_Knights"
kill 2 Scarlet Knight##1833 |q 6004/4 |goto Western Plaguelands 50.47,41.12
|tip They share spawn points with other Scarlet enemies, so kill them too, if you can't find any. |notinsticky
step
Follow the path |goto Western Plaguelands 50.41,29.78 < 40 |only if walking
talk Kirsta Deepshadow##11610
turnin Unfinished Business##6004 |goto Western Plaguelands 51.92,28.06
accept Unfinished Business##6023 |goto Western Plaguelands 51.92,28.06
step
Run around the mountain and follow the path up |goto Western Plaguelands 55.23,34.61 < 30 |only if walking
kill Huntsman Radley##11613 |q 6023/1 |goto Western Plaguelands 57.83,36.09
step
kill Cavalier Durgen##11611 |q 6023/2 |goto Western Plaguelands 54.37,23.77
|tip He walks back and forth, between this spot and the top of the tower.
|tip Wait outside the tower near this spot, he will eventually walk outside.
|tip Pull him away into the road nearby, so you can fight him alone.
step
talk Kirsta Deepshadow##11610
turnin Unfinished Business##6023 |goto Western Plaguelands 51.92,28.06
step
talk High Priestess MacDonnell##11053
turnin Return to Chillwind Camp##5226 |goto Western Plaguelands 42.97,84.50
step
talk Commander Ashlam Valorfist##10838
accept Mission Accomplished!##5237 |goto Western Plaguelands 42.70,84.03 |instant
step
talk Nathaniel Dumah##11616
turnin A Plague Upon Thee##6389 |goto Western Plaguelands 43.42,84.83
step
talk Carlin Redpath##11063
turnin Brother Carlin##5210 |goto Eastern Plaguelands 81.52,59.77
accept Villains of Darrowshire##5181 |goto Eastern Plaguelands 81.52,59.77
step
click Horgus' Skull
|tip Underwater in the purple beam.
collect Skull of Horgus##12956 |q 5181/1 |goto Eastern Plaguelands 51.11,49.94
step
Jump down carefully here |goto Eastern Plaguelands 53.38,65.50 < 20 |only if walking
click Shattered Sword of Marduk
collect Shattered Sword of Marduk##12957 |q 5181/2 |goto Eastern Plaguelands 53.92,65.76
step
Leave the canyon |goto Eastern Plaguelands 49.23,74.85 < 40 |only if walking and subzone("The Infectis Scar")
talk Carlin Redpath##11063
turnin Villains of Darrowshire##5181 |goto Eastern Plaguelands 81.51,59.77
step
talk Jasper Fel##1325
|tip Inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Jasper Fel##1325 |goto Stormwind City/0 78.32,58.97 |q 6186
|only if Rogue
step
Enter the building |goto Stormwind City 55.30,68.12 < 10 |walk
talk Olivia Burnside##2455
|tip Inside the building.
|tip Collect these items from the bank.
collect Tinkee's Letter##12438 |goto Stormwind City 57.66,72.78 |q 4808
step
Enter Stormwind Keep |goto Stormwind City 69.08,28.69 < 15 |walk
talk Highlord Bolvar Fordragon##1748
|tip Inside the building.
turnin The Blightcaller Cometh##6186 |goto Stormwind City 78.22,17.98
step
Leave Stormwind Keep |goto Stormwind City 69.08,28.69 < 15 |walk |only if subzone("Stormwind Keep")
Enter the building |goto Stormwind City 54.06,59.00 < 10 |walk
talk Auctioneer Jaxon##15659
|tip Inside the building.
|tip Buy these items from the auction house or collect them from your bank.
|tip You will turn them in for a lot of experience.
|tip If you have any in your bank, get them out before you buy more.
|tip If you can't get them, it's okay, but you may have to grind a bit later to make up for it.
collect 60 Wool Cloth##2592 |goto Stormwind City 53.61,59.76 |q 7791 |future
collect 60 Silk Cloth##4306 |goto Stormwind City 53.61,59.76 |q 7793 |future
collect 60 Mageweave Cloth##4338 |goto Stormwind City 53.61,59.76 |q 7794 |future
collect 60 Runecloth##14047 |goto Stormwind City 53.61,59.76 |q 7795 |future
|only if not selfmade
step
Enter the building |goto Stormwind City 44.52,73.91 < 10 |walk
talk Clavicus Knavingham##14722
|tip Upstairs inside the building.
accept A Donation of Wool##7791 |goto Stormwind City 44.27,73.97 |instant
|only if itemcount(2592) >= 60
step
talk Clavicus Knavingham##14722
|tip Upstairs inside the building.
accept A Donation of Silk##7793 |goto Stormwind City 44.27,73.97 |instant
|only if itemcount(4306) >= 60
step
talk Clavicus Knavingham##14722
|tip Upstairs inside the building.
accept A Donation of Mageweave##7794 |goto Stormwind City 44.27,73.97 |instant
|only if itemcount(4338) >= 60
step
talk Clavicus Knavingham##14722
|tip Upstairs inside the building.
accept A Donation of Runecloth##7795 |goto Stormwind City 44.27,73.97 |instant
|only if itemcount(14047) >= 60
step
Enter the building |goto The Barrens 62.08,39.26 < 15 |walk
talk Innkeeper Wiley##6791
|tip Inside the building.
home Ratchet |goto The Barrens 62.05,39.41
]]
)
