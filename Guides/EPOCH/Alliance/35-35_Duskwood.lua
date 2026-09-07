local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Duskwood (35-35)',
  {
    image = ZGV.IMAGESDIR .. 'Duskwood',
    condition_suggested = function()
      return level == 35 and not completedq(514)
    end,
    next = 'Leveling Guides\\Desolace (35-37)',
    hardcore = true,
  },
  [[
step
talk Malissa##3135
|tip Walking around here.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Malissa##3135 |goto Duskwood 79.44,44.44 |q 1041
|only if Rogue
step
Enter the building |goto Duskwood 72.92,46.81 < 10 |walk
talk Clerk Daltry##267
|tip Inside the building.
turnin The Caravan Road##1041 |goto Duskwood 72.53,46.85
accept The Carevin Family##1042 |goto Duskwood 72.53,46.85
|only if haveq(1041)
step
Enter the building |goto Duskwood 75.23,48.25 < 10 |walk
talk Jonathan Carevin##661
|tip Inside the building.
turnin The Carevin Family##1042 |goto Duskwood 75.32,49.02
accept The Scythe of Elune##1043 |goto Duskwood 75.32,49.02
|only if completedq(1041)
step
Enter the mine |goto Duskwood 73.04,75.09 < 10 |walk
|tip Enemies tend to pull in groups around here. |only if hardcore
click Mound of Dirt##19030
|tip Inside the mine.
|tip Try not to linger around the cave longer than needed as the respawns are inconsistent. |only if hardcore
Find Evidence of the Scythe of Elune |q 1043/1 |goto Duskwood 73.53,79.14
|only if haveq(1043)
step
Leave the mine |goto Duskwood 73.04,75.09 < 10 |walk |only if subzone("Roland's Doom")
Enter the building |goto Duskwood 75.23,48.25 < 10 |walk
talk Jonathan Carevin##661
|tip Inside the building.
turnin The Scythe of Elune##1043 |goto Duskwood 75.32,49.02
|only if haveq(1043)
step
Enter the building |goto Stormwind City 54.08,59.01 < 10 |walk
talk Auctioneer Jaxon##15659
|tip Inside the building.
|tip Buy these items from the auction house.
|tip If they're not available, or you can't afford them, skip this step.
|tip You will be able to kill enemies soon to get them, but it will be slower.
collect 8 Liferoot##3357 |goto Stormwind City 53.61,59.76 |q 1712 |future
|only if Warrior and not selfmade
step
Enter Stormwind Keep |goto Stormwind City 69.08,28.70 < 15 |walk
Follow the path |goto Stormwind City 75.95,17.58 < 10 |walk
talk Major Samuelson##2439
|tip Inside the building.
turnin Reassignment##563 |goto Stormwind City 72.60,15.87
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 689
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 689
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock |q 689
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 689
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue |q 689
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 689
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 689
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 689
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip In the basement. |only if Warlock
|tip Train your spells.
step
Leave Stormwind Keep |goto Stormwind City 69.08,28.70 < 15 |walk |only if subzone("Stormwind Keep")
Run up the stairs and enter the building |goto Ironforge 38.51,85.81 < 7 |walk
talk Grand Mason Marblesten##2790
|tip He walks around inside the building.
turnin A King's Tribute##689 |goto Ironforge 39.04,88.05
|tip The prerequisite for this quest was accepted in the "Wetlands (24-25)" guide.
step
Watch the dialogue
talk Grand Mason Marblesten##2790
|tip He walks around inside the building.
accept A King's Tribute##700 |goto Ironforge 39.04,88.05
step
Follow the path |goto Ironforge 44.56,49.58 < 10 |walk
talk King Magni Bronzebeard##2784
turnin A King's Tribute##700 |goto Ironforge 39.09,56.20
step
talk Roetten Stonehammer##5637
|tip He walks around inside the building.
accept Reclaimers' Business in Desolace##1453 |goto Ironforge 67.91,17.49
step
talk Prospector Stormpike##1356
|tip Inside the building.
turnin Letter to Stormpike##514 |goto Ironforge 74.64,11.73
step
talk Bath'rah the Windwatcher##6176
|tip Inside the building.
|tip Follow the river north to travel to this location.
|tip Avoid Tarren Mill as you travel here.
turnin The Windwatcher##1791 |goto Alterac Mountains 80.50,66.92
accept Cyclonian##1712 |goto Alterac Mountains 80.50,66.92
|only if Warrior
]]
)
