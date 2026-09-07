local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Tanaris (50-50)',
  {},
  [[
step
talk Sprinkle##7583
turnin Sprinkle's Secret Ingredient##2641 |goto Tanaris 51.06,26.87
step
Watch the dialogue
talk Sprinkle##7583
accept Delivery for Marin##2661 |goto Tanaris 51.06,26.87
step
talk Marin Noggenfogger##7564
turnin Delivery for Marin##2661 |goto Tanaris 51.81,28.66
accept Noggenfogger Elixir##2662 |goto Tanaris 51.81,28.66
step
Watch the dialogue
talk Marin Noggenfogger##7564
turnin Noggenfogger Elixir##2662 |goto Tanaris 51.81,28.66
step
Enter the building |goto Tanaris,52.21,28.57,10 |walk
talk Gimblethorn##7799
.tip Inside the building.
.tip Deposit these items into the bank.
bank Super Snapper FX##9328 |goto Tanaris 52.30,28.91 |q 2944 |future
bank Snapshot of Gammerita##9330 |goto Tanaris 52.30,28.91 |q 2944 |future
bank Atal'ai Tablet Fragment##6287 |goto Tanaris 52.30,28.91 |q 1469 |future
bank Pupellyverbos Port##3900 |goto Tanaris 52.30,28.91 |q 580 |future
.tip You should have 12 of these.
bank Wildkin Feather##10819 |goto Tanaris 52.30,28.91 |q 3661 |future
.tip You should have 15 of these.
step
talk Marvon Rivetseeker##7771
turnin The Stone Circle##3444 |goto Tanaris 52.71,45.92
step
talk Innkeeper Lyshaerya##11103
.tip Inside the building.
.tip This will give you an inopportune hearth later in the leveling guide, but will save you a ton of time turning in Maraudon quests.
home Nijel's Point |goto Desolace 66.27,6.56
|only if guideflag("Maraflag")
step
talk Talendria##11715
.tip Upstairs inside the building.
accept Vyletongue Corruption##7041 |goto Desolace 68.50,8.87
|only if guideflag("Maraflag")
step
Run up the ramp |goto Desolace,64.66,9.23,10 |only if walking
talk Keeper Marandis##13698
accept Corruption of Earth and Seed##7065 |goto Desolace 63.82,10.66
|only if guideflag("Maraflag")
step
talk Willow##13656
.tip Inside the building.
accept Twisted Evils##7028 |goto Desolace 62.19,39.63
|only if guideflag("Maraflag")
step
talk Centuar Pariah##13717
.tip He walks around this area.
accept The Pariah's Instructions##7067 |goto Desolace 51.47,87.41
You may also find him around: |notinsticky
[48.23,87.69]
[43.95,86.00]
|only if guideflag("Maraflag")
step
Run up the stairs |goto Desolace,29.84,62.54,7 |only if walking
click Stone Door
Enter the building |goto Desolace,38.43,57.98,5 |q 7067 |future
|only if guideflag("Maraflag")
step
kill The Nameless Prophet##13718
.tip He spawns in multiple locations outside of the Maraudon dungeon.
.tip You may need help with this.
collect Amulet of Spirits##17757 |goto Desolace 38.31,57.96 |q 7067
You may also find him at: |notinsticky
[38.32,58.18]
[38.20,58.05]
[38.39,57.96]
step
Run down the stairs |goto Desolace,38.25,57.99,7 |only if walking
Follow the path |goto Desolace,38.43,57.85,10 |only if walking
Continue following the path |goto Desolace,38.64,57.71,7 |only if walking
Continue following the path |goto Desolace,38.53,57.55,10 |only if walking
Continue following the path |goto Desolace,38.48,57.34,7 |q 7067
|only if guideflag("Maraflag")
step
Continue following the path |goto Desolace,29.44,57.22,7 |only if walking
Jump down here |goto Desolace,28.80,56.17,7 |q 7067
|only if guideflag("Maraflag")
step
Enter the cave |goto Desolace,28.71,56.20,5 |only if walking
use the Amulet of Spirits##17757
.tip Use it on the Spirit of Gelk.
.tip He walks around this area.
kill Gelk##13741
collect Gem of the Second Khan##17762 |goto Desolace 38.47,57.29 |q 7067
|only if guideflag("Maraflag")
step
Follow the path |goto Desolace,29.58,55.54,7 |only if walking
Continue following the path |goto Desolace,29.46,57.25,7 |only if walking |q 7067
|only if guideflag("Maraflag")
step
Jump down here |goto Desolace,38.53,57.60,5 |only if walking
use the Amulet of Spirits##17757
.tip Use it on the Spirit of Kolk.
kill Kolk##13742
collect Gem of the First Khan##17761 |goto Desolace 38.50,57.72 |q 7067
|only if guideflag("Maraflag")
step
Follow the path |goto Desolace,38.60,57.95,10 |only if walking
Continue following the path |goto Desolace,38.44,58.13,7 |only if walking
Continue following the path |goto Desolace,38.49,58.22,7 |q 7067
|only if guideflag("Maraflag")
step
talk Cavindra##Cavindra
accept Legend of Maraudon##7044	|goto Desolace 38.76,58.13
|only if guideflag("Maraflag")
step
Follow the path |goto Desolace,38.82,58.31,7 |only if walking
use Coated Cerulean Vial##17693
collect Filled Cerulean Vial##17696 |q 7041/2 |goto Desolace 38.92,58.36
|only if guideflag("Maraflag")
step
Follow the path |goto Desolace,39.08,58.01,10 |only if walking
Continue following the path |goto Desolace,39.35,58.03,7 |only if walking
use the Amulet of Spirits##17757
.tip Use it on the Spirit of Magra.
.tip He walks around this area.
kill Magra##13740
collect Gem of the Third Khan##17763 |goto Desolace 39.20,57.68 |q 7067
|only if guideflag("Maraflag")
step
Follow the path |goto Desolace,39.21,57.84,10 |only if walking
Continue following the path |goto Desolace,39.35,58.04,10 |only if walking
Enter the Maraudon (Foulspore Cavern - Orange) Dungeon with Your Group |goto Maraudon/0,0.00,0.00,500 |c |q 7067 |future
.tip Some groups may opt to go into Purple Side first, which will make this guide out of order.
.tip It does not matter which side you enter first.
|only if guideflag("Maraflag")
stickystart "Collect_Gem_of_the_Fifth_Khan"
stickystart "Heal_Vylestem_Vines"
step
Inside the Maraudon Dungeon:
kill Noxxion##13282
.tip It is the first boss on the Orange side of Maraudon.
.tip After entering the dungeon, run up the stairs and follow the path to the right whenever possible.
collect Celebrian Rod##17702 |q 7044/2
|only if guideflag("Maraflag")
step
label "Collect_Gem_of_the_Fifth_Khan"
Inside the Maraudon Dungeon: |notinsticky
use the Amulet of Spirits##17757
.tip Use it on the Spirit of Veng.
.tip He walks around the Orange side of Maraudon.
kill Veng##13738
collect Gem of the Fifth Khan##17765 |q 7067
|only if guideflag("Maraflag")
step
label "Heal_Vylestem_Vines"
Inside the Maraudon Dungeon: |notinsticky
use the Filled Cerulean Vial##17696
.tip While in the Foulspore Cavern, or Orange side of Maraudon, there will be tree stumps with a red top.
.tip You won't be able to target them.
.tip They have five leaves growing out of them.
.tip Use the Filled Cerulean Vial near them and Noxxious Scion will spawn.
kill Noxxious Scion##13696+
Heal 8 Vylestem Vines |q 7041/1
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
use the Amulet of Spirits##17757
.tip Use it on the Spirit of Maraudos.
.tip He walks around The Wicked Grotto in the Purple side of Maraudon.
kill Maraudos##13739
collect Gem of the Fourth Khan##17764 |q 7067
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
use the Gem of the Fifth Khan##17765
collect Amulet of Union##17758 |q 7067/1
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
kill Lord Vyletongue##12236
.tip He is Purple side of Maraudon.
.tip Proceed through The Wicked Grotto and enter the Vyletongue Seat.
.tip He is in a small room on the northern side.
collect Celebrian Diamond##17703 |q 7044/1
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
kill Celebras the Cursed##12225
.tip He is Purple side of Maraudon.
.tip Continue through the Vyletongue Seat and into the Poison Falls.
.tip Once you reach the Poison Falls, continue working your way west and then south, where he will be on a small island.
talk Celebras the Redeemed##13716
.tip He will appear after you kill Celebras the Cursed.
turnin Legend of Maraudon##7044
accept The Scepter of Celebras##7046
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
Follow Celebras the Redeemed
.tip Click the stone he leads you to.
click Incantations of Celebras
Watch the Dialogue
Create the Scepter of Celebras |q 7046/1
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
talk Celebras the Redeemed##13716
turnin The Scepter of Celebras##7046
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
kill Princess Theradras##12201 |q 7065/1
.tip She is the last boss on the Purple side of Maraudon.
.tip Continue going south and jump down the waterfall.
.tip Continue following the path south through the dungeon to reach Zaetar's Grave.
.tip Princess Theradras is found at the end of Zaetar's Grave.
|only if guideflag("Maraflag")
step
Inside the Maraudon Dungeon:
talk Zaetar's Spirit##12238
.tip He will appear at the center of the room once Princess Theradras is killed.
accept Seed of Life##7066
|only if guideflag("Maraflag")
step
Leave the Maraudon Dungeon
Click Here to Continue |confirm |q 7066
|only if guideflag("Maraflag")
step
talk Centuar Pariah##13717
.tip He walks around this area.
turnin The Pariah's Instructions##7067 |goto Desolace 51.47,87.41
You may also find him around: |notinsticky
[48.23,87.69]
[43.95,86.00]
|only if guideflag("Maraflag")
step
talk Willow##13656
.tip Inside the building.
turnin Twisted Evils##7028 |goto Desolace 62.19,39.63
|only if guideflag("Maraflag")
step
talk Talendria##11715
.tip Upstairs inside the building.
turnin Vyletongue Corruption##7041 |goto Desolace 68.50,8.87
|only if guideflag("Maraflag")
step
Run up the ramp |goto Desolace,64.66,9.23,10 |only if walking
talk Keeper Marandis##13698
turnin Corruption of Earth and Seed##7065 |goto Desolace 63.82,10.66
|only if guideflag("Maraflag")
]]
)
