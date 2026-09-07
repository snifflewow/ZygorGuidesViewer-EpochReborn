local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Winterspring (55-55)',
  {
    image = ZGV.IMAGESDIR .. 'Winterspring',
    condition_suggested = function()
      return level == 55 and not completedq(3942)
    end,
    next = 'Leveling Guides\\Felwood Part 3 (55-55)',
    hardcore = true,
  },
  [[
step
Enter the tunnel to leave Felwood |goto Felwood 65.13,8.01 < 10 |walk |only if not zone("Winterspring")
Leave the tunnel to enter Winterspring |goto Felwood 68.40,5.84 < 10 |walk |only if not zone("Winterspring")
talk Salfa##11556
turnin Speak to Salfa##8465 |goto Winterspring 27.74,34.50
step
talk Donova Snowden##9298
turnin The New Springs##980 |goto Winterspring 31.27,45.16
accept Strange Sources##4842 |goto Winterspring 31.27,45.16
turnin The Videre Elixir##3909 |goto Winterspring 31.27,45.16
accept Meet at the Grave##3912 |goto Winterspring 31.27,45.16
accept Threat of the Winterfall##5082 |goto Winterspring 31.27,45.16
stickystart "Kill_Winterfall_Pathfinders"
stickystart "Kill_Winterfall_Den_Watchers"
stickystart "Collect_Empty_Firewater_Flask"
stickystart "Accept_Winterfall_Firewater"
step
kill 8 Winterfall Totemic##7441 |q 5082/3 |goto Winterspring 30.57,37.17
|tip They share spawn points with the other Winterfall enemies.
|tip Kill the other types also, to get more to spawn.
You can find more around: |notinsticky
[39.46,43.70]
[41.78,43.14]
step
label "Kill_Winterfall_Pathfinders"
kill 8 Winterfall Pathfinder##7442 |q 5082/1 |goto Winterspring 30.57,37.17
|tip They share spawn points with the other Winterfall enemies.	|notinsticky
|tip Kill the other types also, to get more to spawn.		|notinsticky
You can find more around: |notinsticky
[39.46,43.70]
[41.78,43.14]
step
label "Kill_Winterfall_Den_Watchers"
kill 8 Winterfall Den Watcher##7440 |q 5082/2 |goto Winterspring 30.57,37.17
|tip They share spawn points with the other Winterfall enemies. |notinsticky
|tip Kill the other types also, to get more to spawn.		|notinsticky
You can find more around: |notinsticky
[39.46,43.70]
[41.78,43.14]
step
label "Collect_Empty_Firewater_Flask"
Kill Winterfall enemies around this area
collect Empty Firewater Flask##12771 |goto Winterspring 30.57,37.17 |q 5083 |future
You can find more around: |notinsticky
[39.46,43.70]
[41.78,43.14]
step
label "Accept_Winterfall_Firewater"
use the Empty Firewater Flask##12771
accept Winterfall Firewater##5083
|only if itemcount(12771) > 0
step
talk Donova Snowden##9298
turnin Threat of the Winterfall##5082 |goto Winterspring 31.27,45.16
turnin Winterfall Firewater##5083 |goto Winterspring 31.27,45.16
accept Falling to Corruption##5084 |goto Winterspring 31.27,45.16 |only if not hardcore
step
Enter the tunnel to leave Winterspring |goto Winterspring 27.89,34.44 < 10 |walk |only if not zone("Felwood")
Leave the tunnel to enter Felwood |goto Felwood 65.13,8.01 < 10 |walk |only if not zone("Felwood")
click Deadwood Cauldron##176091
|tip Try to kite the enemies near the cauldron away one at a time to fight them alone, until you can kill the rest.
|tip If you have trouble, try to find someone to help you.
turnin Falling to Corruption##5084 |goto Felwood 60.20,5.87
accept Mystery Goo##5085 |goto Felwood 60.20,5.87
step
Follow the road |goto Felwood 64.18,15.20 < 30 |only if walking and not zone("Winterspring")
Enter the tunnel to leave Felwood |goto Felwood 65.13,8.01 < 10 |walk |only if not zone("Winterspring")
Leave the tunnel to enter Winterspring |goto Felwood 68.40,5.84 < 10 |walk |only if not zone("Winterspring")
talk Donova Snowden##9298
turnin Mystery Goo##5085 |goto Winterspring 31.27,45.16
accept Toxic Horrors##5086 |goto Winterspring 31.27,45.16
step
use the Videre Elixir##11243
|tip You will die. |only if not hardcore
|tip It will bring you to 1 hp, make sure no other enemies are nearby that could hit you. |only if hardcore
|tip This quest was updated to no longer kill you on Hardcore servers |only if hardcore
Drink the Videre Elixir |complete isdead |goto Tanaris 54.03,28.73 |q 3912
step
talk Gaeriyan##9299
|tip He looks like a human ghost that walks around this small area.
turnin Meet at the Grave##3912 |goto Tanaris 53.93,23.34 |zombiewalk |only if not hardcore
accept A Grave Situation##3913 |goto Tanaris 53.93,23.34 |zombiewalk |only if not hardcore
turnin Meet at the Grave##3912 |goto Tanaris 53.93,23.34 |only if hardcore
accept A Grave Situation##3913 |goto Tanaris 53.93,23.34 |only if hardcore
step
click A Conspicuous Gravestone
turnin A Grave Situation##3913 |goto Tanaris 53.82,29.06
accept Linken's Sword##3914 |goto Tanaris 53.82,29.06
step
talk Linken##8737
turnin Linken's Sword##3914 |goto Un'Goro Crater 44.66,8.10
accept A Gnome's Assistance##3941 |goto Un'Goro Crater 44.66,8.10
step
Enter the cave |goto Un'Goro Crater 43.47,6.79 < 15 |walk
talk J.D. Collie##9117
|tip Inside the cave.
turnin A Gnome's Assistance##3941 |goto Un'Goro Crater 41.92,2.70
step
Watch the dialogue
talk J.D. Collie##9117
|tip Inside the cave.
accept Linken's Memory##3942 |goto Un'Goro Crater 41.92,2.70
]]
)
