local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Felwood Part 2 (55-55)',
  {
    image = ZGV.IMAGESDIR .. 'Felwood',
    condition_suggested = function()
      return level == 55 and not completedq(8465)
    end,
    next = 'Leveling Guides\\Winterspring (55-55)',
    hardcore = true,
  },
  [[
step
talk Greta Mosshoof##10922
turnin Cleansed Water Returns to Felwood##5159 |goto Felwood 51.21,82.11
accept Dousing the Flames of Protection##5165 |goto Felwood 51.21,82.11
step
Enter the building |goto Felwood 51.26,81.69 < 10 |walk
talk Eridan Bluewind##9116
|tip Inside the building.
turnin Felbound Ancients##4441 |goto Felwood 51.35,81.51
step
Watch the dialogue
talk Eridan Bluewind##9116
|tip Inside the building.
accept Purified!##4442 |goto Felwood 51.35,81.51
step
talk Eridan Bluewind##9116
|tip Inside the building.
turnin Purified!##4442 |goto Felwood 51.35,81.51
step
_Destroy These Items:_
|tip They are no longer needed.
trash Flute of the Ancients##11445 |goto Felwood 38.40,59.74
stickystart "Collect_Blood_Red_Key"
stickystart "Accept_A_Strange_Red_Key"
stickystart "Arko'narin_escort_start"
step
Follow the road to Jaedenar and follow path |goto Felwood 38.40,59.74 < 30 |only if walking and not subzone("Shadow Hold")
Enter the cave |goto Felwood 35.41,58.69 < 10 |walk |only if not subzone("Shadow Hold")
|tip The Shadow Hold is dangerous. |only if hardcore
|tip Keep an eye out for patrolling enemies as well as enemy casters while inside. |only if hardcore
|tip Clear enemies
click Brazier of Pain##176158
|tip Downstairs inside the cave, on the top level.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
Extinguish the Brazier of Pain |q 5165/1 |goto Felwood 36.27,56.29
step
click Brazier of Hatred##176161
|tip Downstairs inside the cave, on the top level.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
Extinguish the Brazier of Hatred |q 5165/4 |goto Felwood 36.48,55.18
step
label "Collect_Blood_Red_Key"
Kill enemies around this area
|tip All around inside the cave, on both levels.
|tip Once you get this item, you will accept a quest from it that you will turn in on the top level of the cave.
|tip Watch for patrols and respawns while in the area.	|only if hardcore |notinsticky
collect Blood Red Key##13140 |goto Felwood 36.29,55.96 |q 5202 |future
step
label "Accept_A_Strange_Red_Key"
use the Blood Red Key##13140
accept A Strange Red Key##5202
|only if itemcount(13140) > 0
step
label "Arko'narin_escort_start"
talk Captured Arko'narin##11016
|tip Inside a yellow wooden cage.
|tip Downstairs inside the cave, on the top level.
turnin A Strange Red Key##5202 |goto Felwood 36.21,55.50
|only if itemcount(13140) > 0
step
talk Captured Arko'narin##11016
|tip Inside a yellow wooden cage.
|tip This will start an escort quest, follow her and activate braziers as she walks.
accept Rescue From Jaedenar##5203 |goto Felwood 36.21,55.50
step
Run around the hole in the floor and follow the path down |goto Felwood 38.25,54.06 < 10 |c |q 5165
step
click Brazier of Suffering##176160
|tip Downstairs inside the cave, on the bottom level.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
Extinguish the Brazier of Suffering |q 5165/3 |goto Felwood 36.73,53.26
step
click Brazier of Malice
|tip Downstairs inside the cave, on the bottom level.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
|tip The escort quest will have 2 Felguards spawn behind you after clicking this brazier.
|tip Let Arko'narin go first to get aggro.
Extinguish the Brazier of Malice |q 5165/2 |goto Felwood 37.68,52.69
step
Protect Arko'narin out of Shadow Hold |q 5203 |goto Felwood 35.41,58.69
|tip As you exit the cave, you will have to fight an elite.
|tip Let Arko'narin attack him first and build up a substantial threat lead so she can tank for you.
|tip It's okay to just stand still for a moment while they fight to make sure you don't pull aggro.
|tip If you don't feel confident, run away and skip this quest. |only if hardcore
step
Follow the path up |goto Felwood 35.94,56.76 < 10 |walk
Leave the cave |complete not subzone("Shadow Hold") |goto Felwood 35.42,58.81 |q 5165
step
Leave Jaedenar and follow the road north |goto Felwood 38.40,59.74 < 30 |only if walking and subzone("Jaedenar")
Follow the road |goto Felwood 64.18,15.20 < 30 |only if walking
talk Nafien##15395
accept Deadwood of the North##8461 |goto Felwood 64.77,8.13
stickystart "Kill_Deadwood_Avengers"
stickystart "Kill_Deadwood_Shamans"
step
kill 6 Deadwood Den Watcher##7156 |q 8461/1 |goto Felwood 63.08,8.82
|tip They will call for help when at low health so pull them away from other Deadwood enemies.	|only if hardcore
|tip Be careful pulling enemies near buildings.							|only if hardcore
|tip Watch for respawns while in the area.							|only if hardcore
You can find more around: |notinsticky
[60.37,8.40]
[60.18,6.14]
[62.67,12.48]
step
label "Kill_Deadwood_Avengers"
kill 6 Deadwood Avenger##7157 |q 8461/2 |goto Felwood 63.08,8.82
|tip Be careful pulling enemies near buildings.	|only if hardcore |notinsticky
|tip Watch for respawns while in the area.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[60.37,8.40]
[60.18,6.14]
[62.67,12.48]
step
label "Kill_Deadwood_Shamans"
kill 6 Deadwood Shaman##7158 |q 8461/3 |goto Felwood 63.08,8.82
|tip Be careful pulling enemies near buildings.	|only if hardcore |notinsticky
|tip Watch for respawns while in the area.	|only if hardcore |notinsticky
You can find more around: |notinsticky
[60.37,8.40]
[60.18,6.14]
[62.67,12.48]
step
Follow the road |goto Felwood 64.18,15.20 < 30 |only if walking
talk Nafien##15395
|tip You may have Deadwood Headdress Feathers from killing Deadwood enemies nearby.
|tip Turn in any feathers you have with the "Feathers for Nafien" repeatable quest.
turnin Deadwood of the North##8461 |goto Felwood 64.77,8.13
accept Speak to Salfa##8465 |goto Felwood 64.77,8.13
step
talk Nafien##15395
|tip Each turnin is 5 feathers, be sure to turn in all the feathers you farmed.
accept Feathers for Nafien##8467 |goto Felwood 64.77,8.13 |instant
|only if itemcount(21377) >= 5
]]
)
