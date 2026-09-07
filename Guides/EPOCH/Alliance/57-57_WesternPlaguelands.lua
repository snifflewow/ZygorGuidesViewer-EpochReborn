local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Western Plaguelands (57-57)',
  {
    image = ZGV.IMAGESDIR .. 'Western Plaguelands',
    condition_suggested = function()
      return level == 57 and not completedq(4985)
    end,
    next = 'Leveling Guides\\Eastern Plaguelands (57-58)',
    hardcore = true,
  },
  [[
step
talk Tynnus Venomsprout##5169
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Tynnus Venomsprout##5169 |goto Ironforge 52.94,13.66 |q 5219 |future
|only if Rogue
step
Enter the building |goto Hillsbrad Foothills 50.45,58.55 < 10 |walk
talk Innkeeper Anderson##2352
|tip Inside the building.
home Southshore |goto Hillsbrad Foothills 51.17,58.93
step
talk High Priestess MacDonnell##11053
accept Target: Dalson's Tears##5219 |goto Western Plaguelands 42.97,84.50
step
talk Commander Ashlam Valorfist##10838
accept All Along the Watchtowers##5097 |goto Western Plaguelands 42.70,84.03
step
talk Argent Officer Pureheart##10840
accept Argent Dawn Commission##5401 |goto Western Plaguelands 42.97,83.55 |instant
step
Equip the Argent Dawn Commission
|tip Wearing it will allow Minion's Scourgestones to drop from undead enemies in Western and Eastern Plaguelands.
Gain the Argent Dawn Commission Buff |havebuff Argent Dawn Commission##17670 |q 5408 |future
step
talk Flint Shadowmore##12425
turnin Flint Shadowmore##6184 |goto Western Plaguelands 43.61,84.51
accept The Eastern Plagues##6185 |goto Western Plaguelands 43.61,84.51
step
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
|tip Be careful, there is an elite enemy inside the tower.
|tip Avoid the doorway, making sure the elite inside can't see you.
|tip You can get closer to the tower safely, if the enemy inside can't see you.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
Mark Tower One |q 5097/1 |goto Western Plaguelands 40.13,71.52
step
use the Beacon Torch##12815
|tip Avoid the large group of enemies in the center of town as you travel here.
|tip Use it in front of the tower entrance.
|tip Be careful, there is an elite enemy inside the tower.
|tip Avoid the doorway, making sure the elite inside can't see you.
|tip You can get closer to the tower safely, if the enemy inside can't see you.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
Mark Tower Four |q 5097/4 |goto Western Plaguelands 46.70,71.10
step
Enter the building |goto Western Plaguelands 53.60,64.79 < 10 |walk
talk Mulgris Deepriver##10739
|tip Inside the building.
|tip Watch for respawns while clearing your way to Mulgris.	|only if hardcore
accept The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.72,64.67
step
kill 8 Diseased Wolf##1817 |q 4984/1 |goto Western Plaguelands 42.74,54.83
|tip They share spawn points with Carrion Lurker spiders.
|tip Kill those as well, if you can't find any wolves.
You can find more around: |notinsticky
[45.96,48.00]
[46.92,39.81]
step
Enter the building |goto Western Plaguelands 47.52,50.94 < 10 |walk
click Mrs. Dalson's Diary##175926
|tip Inside the barn.
|tip Wait for the scarlet patrol to move away from the door before entering and exiting the barn!
|tip Skeletal Terrors will fear you while fighting.											|only if hardcore
|tip Blighted Zombies and Rotting Cadavers will give you the Volatile Infection debuff which will deal AOE damage every 15 seconds.	|only if hardcore
accept Mrs. Dalson's Diary##5058 |goto Western Plaguelands 47.79,50.67 |instant
step
kill Wandering Skeleton##10816
|tip It looks like a white skeleton that spawns here and walks around this area around the buildings nearby.
|tip You can wait here until it walks by here, or respawns, or you can search around the buildings.
|tip Skeletal Terrors will fear you while fighting.											|only if hardcore
|tip Blighted Zombies and Rotting Cadavers will give you the Volatile Infection debuff which will deal AOE damage every 15 seconds.	|only if hardcore
collect Dalson Outhouse Key##12738 |goto Western Plaguelands 47.85,49.32 |q 5060 |future
step
click Outhouse##175925
|tip Accept the "Locked Away" quest.
|tip Skeletal Terrors will fear you while fighting.											|only if hardcore
|tip Blighted Zombies and Rotting Cadavers will give you the Volatile Infection debuff which will deal AOE damage every 15 seconds.	|only if hardcore
kill Farmer Dalson##10836
collect Dalson Cabinet Key##12739 |goto Western Plaguelands 48.11,49.71 |q 5060 |future
step
Enter the building |goto Western Plaguelands 47.14,50.19 < 10 |walk
click Locked Cabinet##175924
|tip Upstairs inside the building.
|tip Skeletal Terrors will fear you while fighting.											|only if hardcore
|tip Blighted Zombies and Rotting Cadavers will give you the Volatile Infection debuff which will deal AOE damage every 15 seconds.	|only if hardcore
accept Locked Away##5060 |goto Western Plaguelands 47.37,49.65 |instant
step
kill Cauldron Lord Malvinious##11077
|tip Skeletal Terrors will fear you while fighting.											|only if hardcore
|tip Blighted Zombies and Rotting Cadavers will give you the Volatile Infection debuff which will deal AOE damage every 15 seconds.	|only if hardcore
collect Dalson's Tears Cauldron Key##13195 |q 5219/1 |goto Western Plaguelands 46.18,52.38
step
click Scourge Cauldron##177289
turnin Target: Dalson's Tears##5219 |goto Western Plaguelands 46.18,52.02
accept Return to Chillwind Camp##5220 |goto Western Plaguelands 46.18,52.02
step
Enter the building |goto Western Plaguelands 38.04,54.61 < 10 |walk
talk Janice Felstone##10778
|tip Upstairs inside the building.
|tip Skeletal Sorcerers are ranged attackers that deal heavy damage.	|only if hardcore
turnin Good Luck Charm##5050 |goto Western Plaguelands 38.40,54.05
accept Two Halves Become One##5051 |goto Western Plaguelands 38.40,54.05
step
kill Jabbering Ghoul##10801
|tip It looks like a green ghoul holding a pitchfork.
|tip He can possibly spawn in multiple locations, and may walk around this area.
|tip Skeletal Sorcerers are ranged attackers that deal heavy damage.	|only if hardcore
collect Good Luck Other-Half-Charm##12722 |goto Western Plaguelands 36.84,58.23 |q 5051
step
use the Good Luck Other-Half-Charm##12722
collect Good Luck Charm##12723 |q 5051/1
step
Enter the building |goto Western Plaguelands 38.04,54.61 < 10 |walk
talk Janice Felstone##10778
|tip Upstairs inside the building.
|tip Skeletal Sorcerers are ranged attackers that deal heavy damage.	|only if hardcore
turnin Two Halves Become One##5051 |goto Western Plaguelands 38.40,54.05
step
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
|tip Be careful, there is an elite enemy inside the tower.
|tip Avoid the doorway, making sure the elite inside can't see you.
|tip You can get closer to the tower safely, if the enemy inside can't see you.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
Mark Tower Three |q 5097/3 |goto Western Plaguelands 44.22,63.37
step
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
|tip Be careful, there is an elite enemy inside the tower.
|tip Avoid the doorway, making sure the elite inside can't see you.
|tip You can get closer to the tower safely, if the enemy inside can't see you.
|tip Watch for patrols and respawns while in the area.	|only if hardcore
Mark Tower Two |q 5097/2 |goto Western Plaguelands 42.44,66.27
step
talk Commander Ashlam Valorfist##10838
turnin All Along the Watchtowers##5097 |goto Western Plaguelands 42.70,84.03
accept Scholomance##5533 |goto Western Plaguelands 42.70,84.03
step
_Destroy This Item:_
|tip It is no longer needed.
trash Beacon Torch##12815 |goto Western Plaguelands 42.67,83.77
step
talk Alchemist Arbington##11056
turnin Scholomance##5533 |goto Western Plaguelands 42.67,83.77
accept Skeletal Fragments##5537 |goto Western Plaguelands 42.67,83.77
step
talk High Priestess MacDonnell##11053
turnin Return to Chillwind Camp##5220 |goto Western Plaguelands 42.97,84.50
accept Target: Writhing Haunt##5222 |goto Western Plaguelands 42.97,84.50
step
talk Nathaniel Dumah##11616
accept A Plague Upon Thee##5903 |goto Western Plaguelands 43.42,84.84
step
Kill Skeletal enemies around this area
|tip Only enemies that look like skeletons will drop the quest item.
|tip They share spawn points with the ghoul enemies, so kill those too, if you can't find any.
|tip Watch for respawns while here.	|only if hardcore
|tip If you don't want to use your Holy Mightstone in a raid, now is a good time to get good value out of it. |only if Paladin and itemcount(20620) > 0
collect 15 Skeletal Fragments##14619 |q 5537/1 |goto Western Plaguelands 49.56,80.05
You can find more inside and outside the crypt at [54.33,79.90]
step
Leave the crypt |complete not subzone("Crypt") |goto Western Plaguelands 54.32,79.90 |q 5537
step
kill Cauldron Lord Razarch##11076
|tip Watch for stealthed enemies while in the field.						|only if hardcore
|tip Freezing Ghouls may incapacitate you, so fight them with full health when possible.	|only if hardcore
|tip Be VERY careful to never pull two Freezing Ghouls at once, they can CC you to death. Run immediately if you do. |only if hardcore
collect Writhing Haunt Cauldron Key##13197 |q 5222/1 |goto Western Plaguelands 53.02,66.06
step
click Scourge Cauldron##176393
|tip Watch for stealthed enemies while in the field.						|only if hardcore
|tip Freezing Ghouls may incapacitate you, so fight them with full health when possible.	|only if hardcore
|tip Be VERY careful to never pull two Freezing Ghouls at once, they can CC you to death. Run immediately if you do. |only if hardcore
turnin Target: Writhing Haunt##5222 |goto Western Plaguelands 53.02,65.72
accept Return to Chillwind Camp##5223 |goto Western Plaguelands 53.02,65.72
step
Enter the building |goto Western Plaguelands 53.60,64.79 < 10 |walk
talk Mulgris Deepriver##10739
|tip Inside the building.
|tip Watch for stealthed enemies while in the field.						|only if hardcore
|tip Freezing Ghouls may incapacitate you, so fight them with full health when possible.	|only if hardcore
|tip Be VERY careful to never pull two Freezing Ghouls at once, they can CC you to death. Run immediately if you do. |only if hardcore
turnin The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.72,64.67
accept The Wildlife Suffers Too##4985 |goto Western Plaguelands 53.72,64.67
step
kill 8 Diseased Grizzly##1816 |q 4985/1 |goto Western Plaguelands 56.81,63.63
|tip They share spawn points with Plague Lurker spiders.
|tip Kill those as well, if you can't find any bears.
You can find more around: |notinsticky
[58.69,58.24]
[57.20,52.78]
[61.55,52.23]
]]
)
