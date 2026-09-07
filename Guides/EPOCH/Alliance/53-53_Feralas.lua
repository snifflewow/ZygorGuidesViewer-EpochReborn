local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Feralas (53-53)',
  {
    image = ZGV.IMAGESDIR .. 'Feralas',
    condition_suggested = function()
      return level == 53 and not completedq(2942)
    end,
    next = 'Leveling Guides\\Azshara (53-54)',
    hardcore = true,
  },
  [[
step
talk Fahran Silentblade##3969
|tip Inside the building.
|tip Stock up on poisons.
|tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Fahran Silentblade##3969 |goto Ashenvale 36.49,49.46 |q 2943
|only if Rogue
step
talk Pratt McGrubben##7852
accept Improved Quality##7733 |goto Feralas 30.63,42.71
step
talk Innkeeper Shyria##7736
|tip Inside the building.
home Feathermoon Stronghold |goto Feralas 30.97,43.49
step
talk Troyas Moonbreeze##7764
|tip Inside the building.
turnin Return to Troyas##2943 |goto Feralas 31.78,45.50
step
Watch the dialogue
talk Troyas Moonbreeze##7764
|tip Inside the building.
accept The Stave of Equinex##2879 |goto Feralas 31.78,45.50
step
Run onto the dock and ride the boat or swim across the water |goto Feralas 31.03,39.92 < 40 |only if walking and subzone("Feathermoon Stronghold")
talk Zorbin Fandazzle##14637
accept Zapped Giants##7003 |goto Feralas 44.81,43.42
accept Fuel for the Zapping##7721 |goto Feralas 44.81,43.42
stickystart "Collect_Water_Elemental_Cores"
step
use Zorbin's Ultra-Shrinker##18904
|tip Use it on Wave Striders around this area.
|tip They look like tall green giants that walks on the shore and in the water around this area.
|tip This quest item only lasts for 2 hours.
|tip If you need a new one, abandon the quest and accept it again from the goblin in the previous guide step.
|tip Watch out for the water elementals here as they are immune to frost damage.	|only if hardcore
kill Zapped Wave Strider##14638+
collect 15 Miniaturization Residue##18956 |q 7003/1 |goto Feralas 44.38,50.11
You can find more around: |notinsticky
[46.63,59.79]
[45.36,67.94]
[40.03,37.38]
[36.09,33.74]
step
label "Collect_Water_Elemental_Cores"
Kill Sea enemies around this area
|tip They look like water elementals.
|tip Up and down this whole shore.
|tip They are immune to frost damage.	|only if hardcore
collect 10 Water Elemental Core##18958 |q 7721/1 |goto Feralas 46.73,60.23
You can find more around: |notinsticky
[46.30,52.00]
[40.71,37.59]
step
talk Zorbin Fandazzle##14637
turnin Zapped Giants##7003 |goto Feralas 44.81,43.42
turnin Fuel for the Zapping##7721 |goto Feralas 44.81,43.42
step
_Destroy This Item:_
|tip It is no longer needed.
trash Zorbin's Ultra-Shrinker##18904 |goto Feralas 47.18,44.52
step
Follow the road |goto Feralas 47.18,44.52 < 30 |only if walking and subzone("The Forgotten Coast")
Discover Dire Maul |goto Feralas 59.12,44.62 < 20
|tip Run slightly onto the huge ramp to discover the Dire Maul dungeon.
|tip As soon as you reach the ramp and discover Dire Maul, run away from the ogres and go back to the road.
|tip You need to discover the Dire Maul dungeon to be able to accept a quest later in the guide.
stickystart "Collect_Perfect_Yeti_Hide"
step
Follow the road around and run up the path to the yeti cave |goto Feralas 51.42,32.47 < 20 |only if walking
Kill Rage Scar enemies around this area
|tip Inside and outside the cave.
|tip Watch for patrols and respawns while here.	|only if hardcore
collect 10 Rage Scar Yeti Hide##18947 |q 7733/1 |goto Feralas 53.17,31.82
step
label "Collect_Perfect_Yeti_Hide"
Kill Rage Scar enemies around this area |notinsticky
|tip Inside and outside the cave. |notinsticky
collect Pristine Yeti Hide##18969 |goto Feralas 53.17,31.82 |q 7735 |future
|tip You can also get this item by skinning enemies. |only if skill('Skinning') > 0
step
use Pristine Yeti Hide##18969
accept Pristine Yeti Hide##7735 |goto Feralas 42.38,22.00
step
talk Rockbiter##7765
accept The Giant Guardian##2844 |goto Feralas 42.38,22.00
step
Jump onto this break in the wall from the nearby ledge |goto Feralas 44.62,9.81 < 3 |only if walking
click Evoroot##164798
|tip Inside the building.
collect Evoroot##11242 |goto Feralas 44.55,10.13 |q 3909
step
Jump out of the building |goto Feralas 44.64,9.95 < 7 |only if walking and subzone("Ruins of Ravenwind")
Jump up on the ledge |goto Feralas 40.33,11.04 < 7 |only if walking
Jump across here |goto Feralas 40.59,11.45 < 7 |only if walking
Jump up here |goto Feralas 40.97,11.87 < 7 |only if walking
click Flame of Samha
collect Samha Essence##9257 |goto Feralas 40.54,12.65 |q 2879
step
click Flame of Imbel##142187
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Imbel Essence##9256 |goto Feralas 39.93,9.44 |q 2879
step
click Flame of Lahassa##142186
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Lahassa Essence##9255 |goto Feralas 37.76,12.17 |q 2879
step
click Flame of Byltan##142185
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Byltan Essence##9258 |goto Feralas 38.50,15.80 |q 2879
step
use Troyas' Stave##9263
collect Stave of Equinex##9306 |q 2879/1 |goto Feralas 38.87,13.23
step
click Equinex Monolith##144063
use Stave of Equinex##9306
|tip Watch for patrols and respawns while in the area.	|only if hardcore
turnin The Stave of Equinex##2879 |goto Feralas 38.87,13.23
accept The Morrow Stone##2942 |goto Feralas 38.87,13.23
step
Follow the path up |goto Feralas 39.94,13.34 < 30 |only if walking
talk Shay Leafrunner##7774
|tip Watch for patrols and respawns while in the area.	|only if hardcore
turnin The Giant Guardian##2844 |goto Feralas 38.22,10.30
accept Wandering Shay##2845 |goto Feralas 38.22,10.30
step
click Shay's Chest##144054
|tip Watch for patrols and respawns while in the area.	|only if hardcore
collect Shay's Bell##9189 |q 2845/1 |goto Feralas 38.25,10.29
step
use Shay's Bell##9189
|tip Shay Leafrunner will follow you.
|tip Protect her as you walk.
|tip She will sometimes wander off and stop following you.
|tip You will see a message in your chat when she wanders off.
|tip When this happens, use Shay's Bell to get her to start following you again.
|tip This quest is timed, so try to hurry.
Take Shay Leafrunner to Rockbiter's Camp |q 2845/2 |goto Feralas 42.38,22.00
step
talk Rockbiter##7765
turnin Wandering Shay##2845 |goto Feralas 42.38,22.00
step
talk Gregan Brewspewer##7775
turnin A Visit to Gregan##4142 |goto Feralas 45.12,25.57
step
talk Gregan Brewspewer##7775
|tip Complete the repeatable "The Videre Elixir" quest.
collect Videre Elixir##11243 |q 3909/1 |goto Feralas 45.12,25.57
|tip Do NOT drink the Elixir, it will kill your character.
|tip If you drink it in the Tanaris graveyard it will not kill you on Hardcore Realms |only if hardcore
step
Kill enemies around this area
|tip Grind enemies until your Hearthstone is ready to use.
|tip You will be hearthing back to Feathermoon Stronghold.
|tip The guide doesn't take into account this grind, so any extra xp you get now will put you a little bit ahead, and reduce any grinding you have to do later.
|tip This step will complete when your Hearthstone is ready to use.
Grind XP Until You Can Hearth to Feathermoon Stronghold |complete C_Container.GetItemCooldown(6948) == 0 |goto Feralas 39.46,13.80 |q 2942
step
talk Pratt McGrubben##7852
turnin Improved Quality##7733 |goto Feralas 30.63,42.71
turnin Pristine Yeti Hide##7735 |goto Feralas 30.63,42.71
step
talk Troyas Moonbreeze##7764
|tip Inside the building.
turnin The Morrow Stone##2942 |goto Feralas 31.78,45.50
|tip The Cairnstone Sliver want is a potential upgrade. |only if Priest
]]
)
