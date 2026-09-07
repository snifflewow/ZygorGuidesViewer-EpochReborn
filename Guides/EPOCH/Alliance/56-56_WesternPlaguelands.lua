local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Western Plaguelands (56-56)',
  {
    image = ZGV.IMAGESDIR .. 'Western Plaguelands',
    condition_suggested = function()
      return level == 56 and not completedq(5217)
    end,
    next = 'Leveling Guides\\Burning Steppes (56-57)',
    hardcore = true,
  },
  [[
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Ursula Deline##5495 |only if Warlock
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 6028
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 6028
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |only if Warlock |q 6028
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 6028
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue |q 6028
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 6028
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 6028
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 6028
|tip Inside the tower. |only if Mage
|tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
|tip He patrols inside. |only if Priest
|tip In the basement. |only if Warlock
|tip Train your spells.
step
talk High Priestess MacDonnell##11053
accept Target: Felstone Field##5216 |goto Western Plaguelands 42.97,84.50
step
talk Argent Officer Pureheart##10840
turnin The Everlook Report##6028 |goto Western Plaguelands 42.97,83.55
step
kill Cauldron Lord Bilemaw##11075
collect Felstone Field Cauldron Key##13194 |q 5216/1 |goto Western Plaguelands 37.03,57.11
step
click Scourge Cauldron##176392
turnin Target: Felstone Field##5216 |goto Western Plaguelands 37.19,56.87
accept Return to Chillwind Camp##5217 |goto Western Plaguelands 37.19,56.87
step
Enter the building |goto Western Plaguelands 38.04,54.61 < 10 |walk
talk Janice Felstone##10778
|tip Upstairs inside the building.
accept Better Late Than Never##5021 |goto Western Plaguelands 38.40,54.05
step
Enter the building |goto Western Plaguelands 38.52,55.33 < 10 |walk
click Janice's Parcel##175894
|tip Inside the building.
turnin Better Late Than Never##5021 |goto Western Plaguelands 38.73,55.24
accept Better Late Than Never##5022 |goto Western Plaguelands 38.73,55.24
step
talk High Priestess MacDonnell##11053
turnin Return to Chillwind Camp##5217 |goto Western Plaguelands 42.97,84.50
]]
)
