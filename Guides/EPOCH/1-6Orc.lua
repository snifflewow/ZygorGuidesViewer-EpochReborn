local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Horde' then
  return
end

ZygorGuidesViewer:RegisterGuide(
  'Epoch\\Starting Zones\\Orc (1-6)',
  {
    next = 'Epoch\\Starting Zones\\Orc/Troll - Durotar (6-12)'
  },
  [[
  author Huge
	defaultfor Orc
	startlevel 1
  map Durotar
  step
  NOTE:
  info If the addon window is locked in place, clicking for waypoints or other actions will not work.
  info If you want the addon to be clickable, keep the window unlocked, on the top left button.
  Click to Continue |confirm
  step
  talk Kaltunk##10176
  accept Your Place In The World##4641 |goto Durotar 43.33,68.62
  step
  kill 2 Mottled Boar##3098 |q 788 |future |goto Durotar 42.57,63.25
  info Right Click to Continue
  info
  .tip Loot them for 9 copper worth of vendor items.
  .tip This will let you train a spell early.
  .tip Substantially increasing your leveling speed early on.
  only if Warrior or Warlock or Shaman
  step
  talk Duokna##3158
  .tip Acquire 9 copper.
  .tip You can sell some of your gear if you are short, it's not important at this level.
  Sell your trash |vendor Duokna##3158 |goto Durotar/0 42.59,67.35
  .tip Right Click to continue
  only if Warrior or Warlock or Shaman
  step
  talk Frang##3153
  .tip You will need 9 copper to learn this spell.
  .tip Keep this buff up at all times, especially at low levels it can cut your kill times in half.
  learnspell Battle Shout##6673 |goto Durotar 42.89,69.43
  only if Warrior
  step
  talk Shikrik##3157
  .tip You will need 9 copper to learn this spell.
  .tip Keep this buff up at all times, especially at low levels it can cut your kill times in half.
  learnspell Rockbiter Weapon##8017 |goto Durotar 42.39,69.00
  only if Shaman
  step
  talk Nartok##3156
  .tip You will need 9 copper to learn this spell.
  .tip Inside the cave.
  learnspell Immolate##348 |goto Durotar 40.65,68.51
  only if Warlock
  step
  Enter the cave |goto Durotar 42.28,68.42 |c
  talk Gornek##3143
  .tip Inside the cave.
  turnin Your Place In The World##4641 |goto Durotar 42.06,68.33
  accept Cutting Teeth##788 |goto Durotar 42.06,68.33
  step
  kill 10 Mottled Boar##3098 |q 788/1 |goto Durotar 42.57,63.25
  .tip While leveling to 60 be sure to use your racial "Blood Fury" on cooldown as it will substantially increase your leveling speed.
  .tip Don't wait for the best moment unless you're about to do a hard quest.
  step
  Kill enemies around this area
  .tip You are about to fight a level 4 enemy.
  .tip Being a level higher will help.
  ding 2 |goto Durotar 42.57,63.25
  step
  talk Hana'zua##3287
  .tip Grind enemies on the way.
  .tip It's just to make grind steps later less tedious by getting some out of the way now.
  accept Sarkoth##790 |goto Durotar 40.60,62.59
  step
  kill Sarkoth##3281
  .tip It looks like a darker colored scorpion that walks around this area.
  .tip He's level 4, but you should be able to kill him at this level.
  collect Sarkoth's Mangled Claw##4905 |q 790/1 |goto Durotar 40.50,66.82
  step
  talk Hana'zua##3287
  turnin Sarkoth##790 |goto Durotar 40.60,62.59
  accept Sarkoth##804 |goto Durotar 40.60,62.59
  step
  Enter the cave |goto Durotar 42.29,68.43 |c
  talk Gornek##3143
  .tip Inside the cave.
  .tip Grind on the way to this turnin. |only if not Warlock
  turnin Cutting Teeth##788 |goto Durotar 42.06,68.33
  turnin Sarkoth##804 |goto Durotar 42.06,68.33
  accept Simple Parchment##2383 |goto Durotar 42.06,68.33 |only Warrior
  accept Rune-Inscribed Parchment##3089 |goto Durotar 42.06,68.33	|only Shaman
  accept Encrypted Parchment##3088 |goto Durotar 42.06,68.33 |only Rogue
  accept Etched Parchment##3087 |goto Durotar 42.06,68.33	|only Hunter
  accept Tainted Parchment##3090 |goto Durotar 42.06,68.33 |only Warlock
  accept Sting of the Scorpid##789 |goto Durotar 42.06,68.33
  step
  talk Rwag##3155
  .tip Inside the cave.
  turnin Encrypted Parchment##3088 |goto Durotar 41.28,68.00
  only Rogue
  step
  talk Nartok##3156
  .tip Inside the cave.
  turnin Tainted Parchment##3090 |goto Durotar 40.65,68.51
  only Warlock
  step
  talk Ruzan##5765
  accept Imps!##1485 |goto Durotar 42.59,69.00
  only if Warlock
  step
  click WANTED:Dustpaw
  .tip The Poster just outside the cave
  accept WANTED:Dustpaw##27275 |goto 42.34,68.29
  step
  talk Galgar##9796
  accept Galgar's Cactus Apple Surprise##4402 |goto Durotar 42.73,67.24
  step
  talk Duokna##3158
  .tip Purchase more ammo.
  .tip Don't buy a full quiver worth, we need to save money for later.
  collect 750 Rough Arrow##2512 |goto Durotar/0 42.59,67.35 |c
  only if Hunter
  step
  talk Duokna##3158
  Sell your junk |vendor Duokna##3158 |goto Durotar/0 42.59,67.35
  .tip Right Click to Continue
  only if not Hunter
  step
  talk Zureetha Fargaze##3145
  accept Vile Familiars##792 |goto Durotar 42.85,69.14
  only if not Warlock
  step
  talk Frang##3153
  turnin Simple Parchment##2383 |goto Durotar 42.89,69.43
  only Warrior
  step
  talk Krankit##47140
  turnin Etched Parchment##3087 |goto Durotar 42.84,69.32
  only Hunter
  step
  talk Garoki##46100
  accept A Village in Need##27267 |goto 44.15,68.02
  step
  ding 3
  step
  talk Foreman Thazz'ril##11378
  .tip You must be level 3 before this quest is available.
  accept Lazy Peons##5441 |goto Durotar 44.62,68.64
  stickystart "Collect_Cactus_Apples"
  stickystart "Collect_Scorpid_Worker_Tails"
  stickystart "Collect_Thistleweed"
  step
  kill Bloodtalon Ravasaur##46101
  collect 3 Bloodtalon Claw##63140 |q 27267/2 |goto 43.11,72.06
  step
  use the Foreman's Blackjack##16114
  Check for sleeping Lazy Peons |q 5441/1 |or
  title Lazy Peon Route
  map Durotar/0
  path loop off; dist 35 |or
  path 44.55,72.74  44.98,69.13   46.66,68.78   45.65,65.81 |or
  path 47.18,65.27	46.74,60.79		46.98,57.95 |or
  .tip Use it on Lazy Peons at each location.
  .tip They look like orcs sleeping on the ground around this area.
  .tip They rotate between working and sleeping.
  .tip If they aren't sleeping, don't wait, go to the next location.
  .tip This step will complete when you check all areas, don't worry, you'll get more chances later.
  .tip Grind enemies and loot apples between locations.
  info
  info AVOID DUSTPAW! (wolf level 6) - He is very tough at this level
  .tip Only Rogues have a close chance of killing it =)
  step
  kill Vile Familiar##3101+
  .tip Don't go inside the cave.
  collect 6 Vile Familiar Head##6487 |q 1485/1 |goto Durotar 45.20,57.36
  only Warlock
  step
  kill 12 Vile Familiar##3101 |q 792/1 |goto Durotar 45.20,57.36
  .tip Don't go inside the cave.
  only if not Warlock
  step
  title Lazy Peons
  use the Foreman's Blackjack##16114
  map Durotar/0
  path loop on; dist 35 |or
  path 43.79,57.72	42.84,57.34		41.18,58.84 |or
  path 40.91,60.43	38.86,61.83 |or
  Awaken 5 Peons |q 5441/1 |or
  step
  label "Collect_Cactus_Apples"
  click Cactus Apple##171938+
  .tip They look like cactuses with small round red balls
  collect 10 Cactus Apple##11583 |q 4402/1
  step
  label "Collect_Scorpid_Worker_Tails"
  kill Scorpid Worker##3124+
  collect 10 Scorpid Worker Tail##4862 |q 789/1 |goto Durotar 40.71,62.45
  step
  label "Collect_Thistleweed"
  info Finish collecting these: |notinsticky
  click Thistleweed##250436
  .tip They look like dried thin purplish bushes
  collect 5 Thistleweed##63141 |q 27267/1 |goto Durotar 40.71,62.45
  step
  Kill enemies around this area
  ding 4 |goto Durotar 40.71,62.45
  step
  talk Galgar##9796
  turnin Galgar's Cactus Apple Surprise##4402 |goto Durotar 42.73,67.24
  .tip Grind any level 2 or higher enemy en route.
  .tip Level 1's aren't worth the time.
  step
  talk Duokna##3158
  Sell your junk |vendor Duokna##3158 |goto Durotar/0 42.59,67.35
  .tip Right Click to Continue
  step
  talk Ruzan##5765
  turnin Imps!##1485 |goto Durotar 42.59,69.00
  only Warlock
  step
  cast Summon Imp##688
  .tip Use the "Summon Imp" ability.
  Summon Your Imp |complete warlockpet("Imp")
  only if Warlock and not warlockpet("Imp")
  step
  Enter the cave |goto Durotar 42.28,68.43 |c
  talk Gornek##3143
  .tip Inside the cave.
  turnin Sting of the Scorpid##789 |goto Durotar 42.05,68.32
  step
  talk Rwag##3155
  learnspell Backstab##53 |goto 41.28,68.01
  learnspell Stealth##1784 |goto 41.28,68.01
  learnspell Pick Pocket##921 |goto 41.28,68.01
  .tip Make a Pick Pocket macro. 
  .tip Trust me, it adds up a lot leveling to 60 (and beyond).
  Click Here to Copy an Example |popuptext #showtooltip Backstab\n/cast Pick Pocket\n/cast Backstab
  only Rogue
  step
  talk Nartok##3156
  .tip Deepah in the cave.
  learnspell Corruption##172 |goto Durotar 40.65,68.51
  only if Warlock and level >= 4
  step
  talk Hraug##12776
  buy Grimoire of Blood Pact (Rank 1)##16321 |goto Durotar 40.56,68.44
  use the Grimoire of Blood Pact (Rank 1)##16321
  Teach Your Imp Blood Pact (Rank 1) |learnpetspell Blood Pact##6307 
  only Warlock
  step
  talk Shikrik##3157
  turnin Rune-Inscribed Parchment##3089 |goto Durotar 42.39,69.00
  learnspell Earth Shock##8042 |goto Durotar 42.39,69.00 |only if level >= 4
  only Shaman
  step
  talk Canaga Earthcaller##5887
  accept Call of Earth##1516 |goto Durotar 42.41,69.17
  only Shaman
  step
  talk Zureetha Fargaze##3145
  turnin Vile Familiars##792 |goto Durotar 42.85,69.15 |only if not Warlock
  accept Burning Blade Medallion##794 |goto Durotar 42.85,69.15
  step
  talk Frang##3153
  learnspell Rend##772 |goto Durotar 42.89,69.43
  learnspell Charge##100 |goto Durotar 42.89,69.43
  only if Warrior and level >= 4
  step
  talk Jen'shan##3154
  learnspell Serpent Sting##1978 |goto Durotar 42.84,69.32
  .tip Recoomended against training other spells, you will need silver for a weapon upgrade at level 6.
  only if Hunter and level >= 4
  step
  talk Foreman Thazz'ril##11378
  turnin Lazy Peons##5441 |goto Durotar 44.62,68.64
  accept Thazz'ril's Pick##6394 |goto Durotar 44.62,68.64
  step 
  kill Dustpaw##46105
  collect Dustpaw's Snout##63147 |q 27275/1
  He patrols between:
  1. |goto 47.12,64.56
  2. |goto 46.80,58.23
  stickystart "Collect_Felstalker_Blood"
  stickystart "Collect_Felstalker_Hooves"
  step
  Enter the cave |goto Durotar 45.34,56.36 |c
  Follow the path |goto Durotar 44.42,54.58 |c
  click Thazz'ril's Pick
  .tip Room in front in the cave.
  collect Thazz'ril's Pick##16332 |q 6394/1 |goto Durotar 43.73,53.79
  step
  Follow the path left |goto Durotar 44.76,54.54 |c
  Continue ahead |goto Durotar 44.45,52.74 |c
  And around the path |goto Durotar 43.39,52.01 |c
  kill Yarrog Baneshadow##3183
  collect Burning Blade Medallion##4859 |q 794/1 |goto Durotar 42.71,52.95
  step
  Kill enemies around this area
  .tip Inside the cave.
  .tip Watch for patrols and respawns while inside the cave.	|only if hardcore
  .tip Getting this far into level 5 will allow you to reach level 6 when you turn in quests soon.
  .tip This is important, so you can visit your class trainer before leaving the starter area.
  ding 5,955 |goto Durotar 42.71,52.95
  step
  label "Collect_Felstalker_Blood"
  kill Felstalker##3102+
  .tip Inside the cave.
  collect 3 Felstalker Blood## |q 27267/3 |goto Durotar 44.82,54.59
  step
  label "Collect_Felstalker_Hooves"
  collect 2 Felstalker Hoof##6640 |q 1516/1 |goto Durotar 44.82,54.59
  only Shaman
  step
  title The Den
  use Hearthstone##6948
  Hearth to The Den |goto Durotar 43.29,68.85 |c
  step
  talk Duokna##3158
  Sell your junk |vendor Duokna##3158 |goto Durotar/0 42.59,67.35
  .tip Right Click to Continue
  step
  talk Garoki##46100
  turnin A Village in Need##27267 |goto 44.15,68.02
  accept Delivery to Vornal##27268 |goto 44.15,68.02
  step
  talk Foreman Thazz'ril##11378
  turnin Thazz'ril's Pick##6394 |goto Durotar/0 44.62,68.64
  turnin WANTED:Dustpaw##27275 |goto 44.62,68.64
  step
  talk Zureetha Fargaze##3145
  turnin Burning Blade Medallion##794 |goto Durotar 42.85,69.15
  accept Report to Sen'jin Village##805 |goto Durotar 42.85,69.15
  step
  talk Canaga Earthcaller##5887
  turnin Call of Earth##1516 |goto Durotar 42.41,69.17
  accept Call of Earth##1517 |goto Durotar 42.41,69.17
  only Shaman
  step
  Follow the path up that starts here |goto Durotar 41.56,73.28 |c
  info Drink the potion when you arrive:
  use the Earth Sapta##6635
  talk Minor Manifestation of Earth##5891
  turnin Call of Earth##1517 |goto Durotar 44.03,76.20
  accept Call of Earth##1518 |goto Durotar 44.03,76.20
  only Shaman
  step 
  Drop down here |goto Durotar 43.89,74.77 |c
  Go Back to the Valley |goto Durotar 43.49,69.67 |c
  talk Canaga Earthcaller##5887
  turnin Call of Earth##1518 |goto Durotar 42.41,69.17
  only Shaman
  step
  talk Shikrik##3157 |goto Durotar/0 42.39,69.00
  learnspell Earthbind Totem##2484 |goto Durotar 42.39,69.00 |only if level >= 6
  learnspell Healing Wave##332 |goto Durotar 42.39,69.00 |only if level >= 6
  only Shaman
  step
  Enter the cave |goto Durotar 42.29,68.43 |c
  talk Nartok##3156
  .tip Deepah in the cave
  learnspell Life Tap##1454 |goto Durotar 40.65,68.51
  learnspell Shadow Bolt##695 |goto Durotar 40.65,68.51
  only if Warlock and level >= 6
  step
  Enter the cave |goto Durotar 42.28,68.43 |c
  talk Rwag##3155
  learnspell Gouge##1776 |goto |goto Durotar 41.28,68.00
  learnspell Sinister Strike##1757 |goto |goto Durotar 41.28,68.00
  only if Rogue and level >= 6
  step
  talk Mai'ah##5884
  learnspell Fire Blast##2136 |goto Durotar 42.51,69.04
  learnspell Fireball##143 |goto Durotar 42.51,69.04
  learnspell Conjure Food##587 |goto Durotar 42.51,69.04
  only if Mage and level >= 6
  step
  talk Frang##3153
  .tip Train Parry
  learnspell Thunder Clap##6343 |goto Durotar 42.89,69.43
  only if Warrior and level >= 6
  step
  talk Jen'shan##3154
  learnspell Hunter's Mark##1130 |goto Durotar 42.84,69.32
  learnspell Arcane Shot##3044 |goto Durotar 42.84,69.32
  learnspell Aspect of the Monkey##13163 |goto Durotar 42.84,69.32
  learnspell Track Beasts##1494 |goto Durotar 42.84,69.32
  .tip If you will have under 3 silver afterwards, do not train any spells.
  .tip If you have enough for one, take Hunter's Mark.
  .tip You need 2 silver and 85 copper after leaving this area for a new bowawiwah
  only if Hunter and level >= 6
  step 
  title Leave Starting Zone
  Leave the Valley of Trials: |goto 49.97,68.45 |c
  info East to Sen'jin Village

]])
