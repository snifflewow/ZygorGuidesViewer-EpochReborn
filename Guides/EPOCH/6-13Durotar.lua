local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Horde' then
  return
end

ZygorGuidesViewer:RegisterGuide(
  'Epoch\\Starting Zones\\Orc/Troll - Durotar (6-12)',
  {

  },
  [[
  author Huge
	startlevel 6
  map Durotar
  step
  talk Ukor##6786
  accept A Peon's Burden##2161 |goto 52.09,68.39
  only Orc
  step
  talk Master Gadrin##3188
  turnin Report to Sen'jin Village##805 |goto 56.01,74.71 |only if Orc
  turnin Report to Master Gadrin##28762 |goto Durotar 56.01,74.71 |only if Troll
  accept Minshina's Skull##808 |goto 56.01,74.71 
  accept Report to Orgnil##823 |goto 56.01,74.71
  accept Zalazane##826 |goto 56.01,74.71
  step 
  talk Trayexir##10369
  .info Sell your junk
  buy Cudgel##2492 |goto 56.46,73.18
  info It's the best thing for now...
  info Until a wand is in reach and gg
  only Priest
  step
  talk Trayexir##10369
  .info Sell your junk
  buy Tomahawk##2490 |goto 56.46,73.18
  .tip Efficiency on the first 20 levels depends on fast main hand wepons and shield
  .tip Vendor white items are way better compared to any quest reward early on
  .tip You can get another one in Razor Hill later if you don't have the coin
  only if Warrior or Shaman
  step
  talk Trayexir##10369
  .info Sell your junk
  buy Walking Stick##2495 |goto 56.46,73.18
  only Mage
  step
  talk Trayexir##10369
  .info Sell your junk 
  buy Hornwood Recurve Bow##2506 |goto Durotar 56.47,73.12
  .info If you can afford it.
  .info If you have better, skip this step.
  only if Hunter and itemcount(2506) == 0
  step
  talk Tai'tasi##3187
  buy Skinning Knife##7005 |goto 56.40,73.78
  only if Hunter or Rogue
  step
  talk Trayexir##10369
  .info Sell your junk
  buy Stiletto##2494 |goto Durotar 56.47,73.12
  .tip The best you can get until level 11
  only Rogue 
  step
  talk Master Vornal##3304
  turnin Delivery to Vornal##27268 |goto 55.96,74.47 |only if Orc
  accept A Solvent Spirit##818 |goto 55.96,74.47
  step
  talk Vel'rin Fang##3194
  accept Practical Prey##817 |goto 55.92,73.99
  step 
  talk Eduh##46915
  learnspell Apprentice Skinner##8613 |goto 55.81,73.67
  .tip It gives bonus % damage against beasts and dragonskins!
  only if Hunter or Rogue
  step
  talk Lar Prowltusk##3140
  accept Thwarting Kolkar Aggression##786
  info He patrols between these:
  Tree |goto 54.08,76.50
  Rock |goto 54.38,74.39
  Tree |goto 54.19,73.30
  step
  talk Ukor##6786
  accept A Peon's Burden##2161 |goto 52.09,68.39
  only Troll
  step
  Travel North to Razor Hill: |goto Durotar 52.60,45.79 |c |noway |or
  info Either by walking
  info OR by Cart!
  title Cart
  invehicle Cart##46472 |goto Durotar 54.63,74.27 |or
  .tip They come every 1m45s
  .tip You can also enter a moving one :3
  step
  talk Orgnil Soulscar##3142
  turnin Report to Orgnil##823 |goto 52.35,43.72
  .tip Wait 3 seconds
  accept Dark Storms##806 |goto 52.35,43.72
  accept Supervisor Hink##27276 |goto 52.35,43.72
  step
  talk Gar'Thok##3139
  .tip You can jump onto the door hinge and speak with him
  accept Vanquish the Betrayers##784 |goto 52.03,43.91
  accept Encroachment##837 |goto 52.03,43.91
  Select "I bring word from Razfiri..." |gossip |q 28763/1 |only Troll
  turnin Report to Razor Hill##28763 |only Troll
  step
  talk Cook Torka##3191
  accept Break a Few Eggs##815 |goto 52.05,42.60
  step
  title Watchtower
  Get up on this "ramp" |goto 50.88,42.23,0.2
  And up to the Watchtower |goto 49.93,40.43,0.2 |c
  step
  talk Furl Scornbrow##3147
  accept Carry You Weight##791 |goto 49.89,40.38
  step
  title Inn
  Drop down |goto 50.60,41.04
  And again into the Inn |goto 51.70,41.54,0.2 |c
  step
  talk Innkeeper Grosk##6928
  turnin A Peon's Burden##2161
  home Razor Hill |goto 51.41,41.21
  step
  talk Krunn##3175
  learnspell Apprentice Miner##2656 |goto 51.68,40.20
  only Warrior
  step
  talk Dwukk##3174
  learnspell Apprentice Blacksmith##2018 |goto 51.95,40.27
  .tip As a melee class early on, sharpening stones applied on the weapon are equivalent to 35 AP in dps increase.
  .tip Later on you can buy those from AH and drop these to choose whatever profession you like.
  info
  info BS has a really nice BoP 2H Sword at level 23, (Strong Silver Broadsword), which gets only replaced by the Whirlwind Axe (lvl 30+)
  only Warrior
  step
  talk Jo'gon##46099
  accept A Touch of Lightning##27266 |goto 53.06,41.15
  step
  talk Flakk##3168
  buy Mining Pick##2901 |goto 52.96,41.61
  only if Warrior and itemcount(2901) == 0
  step 
  talk Rawrk##5943
  learnspell Apprentice First Aid##3273 |goto 53.40,41.91
  .tip Skip it if you don't have coin for it
  step 
  talk Tai'jin##3706
  turnin In Favor of Spirituality##5649 |goto 53.58,41.91
  accept Garments of Spirituality##5648 |goto 53.58,41.91
  only Priest
  step
  talk Grunt Kor'ja##12430
  Heal and Fortify Grunt Kor'ja |q 5648/1 |goto 53.11,46.53
  .tip Target her
  .tip First, cast your "Lesser Heal (Rank 2)"
  .tip Second, cast your "Power Word: Fortitude"
  only Priest
  step
  talk Tai'jin##3706
  turnin Garments of Spirituality##5648 |goto 53.58,41.91
  only Priest
  step
  NOTE:
  Save All Linen Cloth You Find
  .tip Be careful not to accidentally sell them to a vendor.
  .tip You will need ~70 Linen Cloth when you are level 10-11.
  .tip Also, don't sell any green items that you get in order to DE.
  .tip To create your wand, which will be a powerful weapon for you.
  info 
  info With your class is generally best to combo Tailoring and Enchanting
  Click Here to Continue |confirm
  only if Priest or Mage or Warlock
  stickystart "Kill_Kul_Tiras"
  stickystart "Collect_Canvas_Scraps"
  step
  kill Lieutenant Benedict##3192 |q 784/3 |goto Durotar 59.76,58.31
  .tip Try to mine some Copper and craft a Sharpening Stone on the way |only Warrior
  ..tip Rage pool on the previous mob, kill the add first. |only Warrior
  ..tip A health pot makes this trivial |only Warrior
  .tip Use Stoneskin Totem! Its OP this early ;) |only Shaman
  .tip This part is tough for priest because mobs interrupt you... |only Priest
  ..tip Consider grinding down on the fort until level 7 to have an edge |only Priest
  collect Benedict's Key##4882w
  step
  Go upstairs across the corridor |goto 59.85,57.82,0.2 |c
  click Benedict's Chest##3239 |goto 59.28,57.66
  info Grab the Envelope which starts:
  accept The Admiral's Orders##830
  step
  label "Kill_Kul_Tiras"
  Finish completing these: |notinsticky
  kill 10 Kul Tiras Sailor##3128 |q 784/1 |goto 58.39,56.72
  kill 8 Kul Tiras Marine##3129 |q 784/2 |goto 58.39,56.72
  step
  label "Collect_Canvas_Scraps"
  Finish scraps by killing more Pirates: |notinsticky
  collect 8 Canvas Scraps##4870 |q 791/1
  step 
  Do Part 1 of Encroachment:
  .tip Grind mobs on the way
  .tip Pref Beasts for Skinning |only Hunter
  .tip Scorpions are easy to kite |only Hunter
  kill 4 Razormane Scout##3112 |q 837/2 |goto 49.38,49.08
  kill 4 Razormane Quilboar##3111 |q 837/1 |goto 49.38,49.08
  step
  ding 7,2625
  .tip This will allow you to train your lvl 8 spells before a big quest route afterwards
  .tip It also helps to grab 3 bags with 6 slots if you are lucky
  .tip (you will get an 8 slot bag after turnins)
  info
  .tip On humanoids to farm Linen Cloth |only if Priest or Warlock or Mage
  .tip Pref Beasts for Skinning |only if Hunter or Rogue
  .tip Scorpions are easy to kite |only Hunter
  step
  talk Gar'Thok##3139
  .tip You can jump onto the door hinge and speak with him
  turnin Vanquish the Betrayers##784 |goto 52.03,43.91
  accept From The Wreckage...##825 |goto 52.03,43.91
  turnin The Admiral's Orders##830 |goto 52.03,43.91
  accept The Admiral's Orders##831 |goto 52.03,43.91
  accept The Cursed Fleet##27274 |goto 52.03,43.91
  step
  talk Grimtak##3881
  Resupply on Food |vendor Grimtak##3881 |goto 52.08,42.85
  .tip If you need to...
  ..tip Right Click to continue
  step
  title Watchtower
  Get up on this "ramp" |goto 50.88,42.23,0.2
  And up to the Watchtower |goto 49.93,40.43,0.2 |c
  step
  talk Furl Scornbrow##3147
  turnin Carry You Weight##791 |goto 49.89,40.38
  step
  ding 8
  step
  Drop down |goto 50.91,41.53 |c
  talk Swart##3173
  learnspell Earth Shock (Rank 2)##8044 |goto 50.64,40.66
  learnspell Lightning Bolt (Rank 2)##529 |goto 50.64,40.66
  learnspell Stoneclaw Totem##5730 |goto 50.64,40.66
  learnspell Lightning Shield##324 |goto 50.64,40.66
  learnspell Rockbiter Weapon##8018 |goto 50.64,40.66
  only Shaman
  step
  talk Wuark##3167
  Sell your junk and get repaired |vendor Wuark##3167 |goto 51.80,40.58
  .tip Right Click to continue
  step
  talk Rawrk##5943
  learnspell Apprentice First Aid##3273 |goto 53.40,41.91
  .info If you haven't before
  step
  talk Suli##46932
  learnspell Arcane Missiles##5143 |goto 53.56,41.55
  learnspell Polymorph##118 |goto 53.56,41.55
  learnspell Frostbolt (Rank 2)##205 |goto 53.56,41.55
  only Mage
  step
  talk Dhugru Gorelust##3172
  learnspell Curse of Weakness##702 |goto 53.23,40.05
  learnspell Bane of Agony##980 |goto 53.23,40.05
  learnspell Fear##5782 |goto 53.23,40.05
  only Warlock
  step
  talk Kitha##6027
  buy Grimoire of Firebolt (Rank 2)##16302 |goto 53.27,40.21
  only Warlock
  step
  talk Kaplak##3170
  learnspell Eviscerate##6760 |goto 51.99,44.15
  learnspell Evasion##5277 |goto 51.99,44.15
  only Rogue
  step
  talk Tai'jin##3706
  learnspell Renew##139 |goto 53.58,41.91
  learnspell Fade##586 |goto 53.58,41.91
  only Priest
  step
  talk Ghrawt##3165
  .tip Purchase more ammo.
  .tip Upgrade is at level 10 so don't exaggerate!
  collect 1000 Rough Arrow##2512 |goto 54.16,42.37
  only Hunter
  step
  talk Thotar##3171
  learnspell Parry##3127 |goto 53.46,45.34
  learnspell Concussive Shot##5116 |goto 53.46,45.34
  learnspell Raptor Strike (Rank2)##14260 |goto 53.46,45.34
  only Hunter
  step
  talk Tarshaw Jaggedscar##3169
  learnspell Hamstring##1715 |goto 53.70,43.48
  learnspell Heroic Strike (Rank 2)##284 |goto 53.70,43.48
  learnspell Victory Rush##34428 |goto 53.70,43.48
  only if Warrior
  step
  Exit the town East |goto 54.18,44.42,0.2
  step
  Head to the beach east of Razor Hill: |goto 60,44 |c
  stickystart "Gnomish_Tools"
  stickystart "A_Solvent_Spirit"
  step
  Go swimming and keep heading south completing quests: |goto 64.52,63.97
  kill 8 Kul Tiras Deckhand##46104+ |q 27274/2
  kill 3 Kul Tiras Admiral##46103+ |q 27274/1 |goto 61.75,55.79
  step
  label "Gnomish_Tools"
  click Gnomish Toolbox##3236
  collect 3 Gnomish Tools##4863 |q 825/1
  .tip Loot the Gnomish Toolboxes floating/sunk nearby the boats
  step
  talk Razfiri##47105
	accept Report to Razor Hill##28763 |goto Durotar 65.70,61.70
  only if Orc
  step
  title Echo Isles
  Go to the Echo Isles: |goto 67.02,69.61 |c
  NOTE:
  info Do these 4 quests together: Break a Few Eggs, Practical Prey, Minshina's Skull, Zalazane
  stickystart "Tigers_Fur"
  stickystart "Raptor_Eggs"
  step
  Move South travercing here |goto 67.33,74.67 |c
  To the main Troll Isle |goto 67.59,80.55 |c
  stickystop "A_Solvent_Spirit"
  stickystart "Kill_Trolls_Echo_Island"
  step
  Go to the altar killing mobs on the way:
  .tip You can get up the little hill from the back
  click Imprisoned Darkspear##3237
  get Minshina's Skull##4864 |q 808/1 |goto Durotar 67.45,87.82
  kill Zalazane##3205 |q 826/3
  info Wait for him in the altar
  collect Zalazane's Head##4866 |q 826/3
  step
  info Finish off these on the isle: |notinsticky
  label "Kill_Trolls_Echo_Island"
  kill 8 Hexed Troll##3207 |q 826/1
  kill 8 Voodoo Troll##3206 |q 826/2
  .tip Voodoo's are sketchy for warrior as you can't interrupt their heal |only Warrior
  .tip Voodoo's are tough... make sure to be fully hp and mana for those |only Priest
  ..tip Best way to kill them is to wait for their heal and then spam Smite |only Priest
  step
  info Finish off these going back to land: |notinsticky
  label "Tigers_Fur"
  kill Durotar Tiger##3121
  collect 4 Durotar Tiger Fur##4892 |q 817/1 |goto 60.84,82.59
  step
  info Finish off these going back to land: |notinsticky
  label "Raptor_Eggs"
  click Taillasher Eggs##3240
  collect 3 Taillasher Egg##4890 |q 815/1 |goto 60.84,82.59
  step
  info Finish off these, near Sen'Jin, in the beach: |notinsticky
  label "A_Solvent_Spirit"
  kill Pygmy Surf Crawler##3106+
  collect 8 Crawler Mucus##4888 |q 818/2 |goto 56.73,79.90
  kill Makrura Shellhide##3104+
  collect 4 Intact Makrura Eye##4887 |q 818/1
  step
  title Kolkar Crag Entrance
  Head to Kolkar Crag |goto Durotar 51,79
  step
  click Attack Plan: Valley of Trials##3189 |q 786/1  |goto Durotar 49.81,81.28
  .tip Click to Destroy the Plans on the floor
  step
  click Attack Plan: Sen'jin Village##3190 |q 786/2 |goto Durotar 47.65,77.34
  .tip Click to Destroy the Plans on the floor
  step
  click Attack Plan: Orgrimmar##3192 |q 786/3 |goto Durotar 46,79
  .tip Click to Destroy the Plans on the floor
  step 
  ding 9,750
  step
  title Kolkar Crag Exit
  Leave the Kolkar Crag |goto Durotar 51,79 |c
  step
  talk Lar Prowltusk##3140
  turnin Thwarting Kolkar Aggression##786
  info He wanders between these:
  Tree |goto 54.08,76.50
  Rock |goto 54.38,74.39
  Tree |goto 54.19,73.30
  step 
  talk Master Gadrin##3188
  turnin Minshina's Skull##808 |goto 56.01,74.71 
  .tip SAVE "Faintly Glowing Skull" for a later quest!
  turnin Zalazane##826 |goto 56.01,74.71
  step
  talk Trayexir##10369
  Sell your junk and get repaired |vendor Trayexir##10369 |goto 56.47,73.13
  .tip Right Click to continue
  step
  talk Master Vornal##3304 
  turnin A Solvent Spirit##818 |goto 55.96,74.47
  .tip Save "Really Sticky Glue" to escape tough situations.
  step
  talk Vel'rin Fang##3194
  turnin Practical Prey##817 |goto 55.92,73.99
  step 
  title Razor Hill
  use Hearthstone##6948
  Hearth to Razor Hill |goto Durotar 51.74,41.57 |c
  step
  talk Cook Torka##3191
  turnin Break a Few Eggs##815 |goto 52.05,42.60
  step 
  talk Gar'Thok##3139
  .tip You can jump onto the door hinge and speak with him
  turnin From The Wreckage...##825 |goto 52.03,43.91
  turnin The Cursed Fleet##27274 |goto 52.03,43.91
  Select "I bring word from Razfiri..." |gossip |q 28763/1 |only Orc
  turnin Report to Razor Hill##28763 |only Orc
  step 
  ding 10
  step
  talk Suli##46932
  learnspell Conjure Water##5505 |goto 53.56,41.55
  learnspell Frost Armor##7300 |goto 53.56,41.55
  learnspell Frost Nova##122 |goto 53.56,41.55
  only Mage
  step
  talk Ophek##3294
  accept Gan'rul's Summons##1506 |goto 53.14,40.08
  only Warlock
  step
  talk Dhugru Gorelust##3172
  learnspell Drain Soul##1120 |goto 53.23,40.05
  learnspell Create Healthstone##6201 |goto 53.23,40.05
  learnspell Demon Skin (Rank 2)##696 |goto 53.23,40.05
  learnspell Immolate (Rank 2)##707 |goto 53.23,40.05
  only Warlock
  step 
  talk Kaplak##3170
  accept Therzok##1859 |goto 51.99,44.15
  learnspell Slice and Dice##5171 |goto 51.99,44.15
  learnspell Sprint##2983 |goto 51.99,44.15
  learnspell Dual Wield##674 |goto 51.99,44.15
  learnspell Sap##6770 |goto 51.99,44.15
  only Rogue
  step
  talk Tai'jin##3706w
  accept Hex of Weakness##5654 |goto 53.58,41.91
  learnspell Lesser Heal (Rank 3)##2053 |goto 53.58,41.91
  learnspell Resurrection##2006 |goto 53.58,41.91
  learnspell Mind Blast##8092 |goto 53.58,41.91
  learnspell Shadow Word:Pain (Rank 2)##594 |goto 53.58,41.91
  only Priest 

  //CHECK FOR RACIAL KNOWLEDGE

  step
  talk Swart##3173
  learnspell Flame Shock##8050 |goto 50.64,40.66
  learnspell Flametongue Weapon##8024 |goto 50.64,40.66
  learnspell Strength of Earth Totem##8075 |goto 50.64,40.66
  accept Call of Fire##2983 |goto 50.64,40.66
  only Shaman
  step
  talk Thotar##3171
  learnspell Aspect of the Hawk##13165 |goto 53.46,45.34
  learnspell Serpent Sting (Rank 2)##13549 |goto 53.46,45.34
  learnspell Track Humanoids##19883 |goto 53.46,45.34
  accept Taming the Beast##6062 |goto 53.46,45.34
  only Hunter
  step
  Go here to: |goto 51.55,46.66
  Tame a Dire Mottled Boar |q 6062/1 
  only Hunter
  step
  talk Thotar##3171
  turnin Taming the Beast##6062 |goto 53.46,45.34
  accept Taming the Beast##6083 |goto 53.46,45.34
  only Hunter
  step
  talk Ghrawt##3165
  .tip Upgrade your arrows.
  collect 2500 Sharp Arrow##2515 |goto 54.16,42.37
  .tip And your quiver!
  buy Medium Quiver##11362 |goto 54.16,42.37
  only Hunter
  step
  Go here to: |goto 58.87,28.18
  Tame a Surf Crawler |q 6083/1
  only Hunter
  step
  talk Thotar##3171
  turnin Taming the Beast##6083 |goto Durotar 53.46,45.34
  accept Taming the Beast##6082 |goto Durotar 53.46,45.34
  only Hunter
  step
  title Watchtower
  Get up on this "ramp" |goto 50.88,42.23,0.2
  And up to the right |goto 50.10,39.82,0.2 |c
  only Hunter
  step
  Go here to: |goto 49.10,36.82
  Tame an Armored Scorpid |q 6082/1
  only Hunter
  step
  talk Thotar##3171
  turnin Taming the Beast##6082 |goto Durotar 53.46,45.34
  accept Training the Beast##6081 |goto Durotar 53.46,45.34
  only Hunter
  step
  title Venomtail Scorpid
  Go West to tame your first pet |goto 36.05,47.87
  info
  cast Tame Beast##1515 
  info Get a level 10 Venomtail Scorpid.
  .tip this will give you Claw Rank 2 and Scorpid Poison spells.
  Continue |confirm
  only Hunter
  step
  talk Tarshaw Jaggedscar##3169
  accept Veteran Uzzek##1505 |goto 53.70,43.48
  learnspell Rend (Rank 2)##6546 |goto 53.70,43.48
  learnspell Bloodrage##2687 |goto 53.70,43.48
  only Warrior
  step 
  Do Part 2 of Encroachment:
  kill 4 Razormane Dustrunner##3113 |q 837/3 |goto 43.83,39.20
  kill 4 Razormane Battleguard##3114 |q 837/4 |goto 43.83,39.20
  step 
  talk Misha Tor'kren##3193
  accept Lost But Not Forgotten##816 |goto 43.11,30.24
  step 
  talk Rezlak##3293
  accept Winds in the Desert##834 |goto 46.37,22.93
  step
  talk Supervisor Hink##46107
  turnin Supervisor Hink##27276 |goto 50.50,13.55
  accept Scythemaw Standstill##27277 |goto 50.50,13.55
  accept Searching for Gizzle##27279 |goto 50.50,13.55
  step 
  Go to the Ravine |goto 49.46,22.57 |c
  .tip Go south picking up Sacks and exit to the main path E
  click Stolen Supply Sack##3290
  collect 5 Sack of Supplies##4918 |q 834/1
  You can find more Here |goto 50.31,32.21
  step 
  talk Rezlak##3293
  turnin Winds in the Desert##834 |goto 46.37,22.93
  accept Securing the Lines##835 |goto 46.37,22.93
  step
  title Razor Hill
  Run back to Razor Hill |goto 52.31,40.04
  only if not Rogue
  step 
  talk Gar'Thok##3139
  .tip You can jump onto the door hinge and speak with him
  turnin Encroachment##837 |goto Durotar 51.95,43.50
  only if not Rogue
  step 
  talk Takrin Pathseeker##3336
  accept Conscript of the Horde##840 |goto 50.69,43.54
  only if not Rogue
  step 
  Travel West to the Barrens: |goto The Barrens 63.35,19.17 |c |noway |or
  info Either by walking
  info OR by Cart
  title Cart
  invehicle Cart##46472 |goto Durotar 53.02,42.99 |or
  info You can leave the Cart midway
  only if not Rogue
  step 
  talk Kargal Battlescar##3337
  turnin Conscript of the Horde##840 |goto The Barrens 62.27,19.37
  accept Crossroads Conscription##842 |goto The Barrens 62.27,19.37
  info You can leave the Cart by targeting and right click
  only if not Rogue
  step 
  talk Uzzek##5810
  turnin Veteran Uzzek##1505 |goto 61.38,21.11
  accept Path of Defense##1498 |goto 61.38,21.11
  only Warrior
  step
  talk Kranal Fiss##5907
  turnin Call of Fire##2983 |goto 55.86,20.00
  accept Call of Fire##1524 |goto 55.86,20.00
  only Shaman
  step 
  title Xroads
  Travel to the Xroads: |goto 52.34,29.40 |c
  info You can enter a moving Cart if you wait/follow on the road
  only if not Rogue
  step 
  talk Zargh##3489
  accept Meats to Orgrimmar##6365 |goto 52.61,29.84
  only if not Rogue
  step 
  talk Sergra Darkthorn##3338
  turnin Crossroads Conscription##842 |goto 52.23,31.00
  accept Plainstrider Menace##844 |goto 52.23,31.00
  only if not Rogue
  step 
  talk Tonga Runetotem##3448
  accept The Forgotten Pools##870 |goto 52.25,31.93
  only if not Rogue
  step 
  talk Halija Whitestrider##3486
  Sell your junk and get repaired |vendor Halija Whitestrider##3486 |goto 52.25,31.86
  .tip Right Click to continue
  only if not Rogue
  step 
  talk Gazrog##3464
  accept Raptor Thieves##869 |goto 51.93,30.32
  only if not Rogue
  step
  talk Thork##3429
  accept Disrupt the Attacks##871 |goto 51.50,30.86
  accept Burning Blade Signets##27165 |goto 51.50,30.86
  only if not Rogue
  step 
  talk Apothecary Helbrim##3390
  accept Fungal Spores##848 |goto 51.44,30.16
  accept Wharfmaster Dizzywig##1492 |goto 51.44,30.16
  only if not Rogue
  step 
  talk Devrak##3615
  fpath Crossroads
  .tip Do not Fly yet.
  turnin Meats to Orgrimmar##6365 |goto 51.51,30.34
  accept Ride to Orgrimmar##6384 |goto 51.51,30.34
  only if not Rogue
  step 
  talk Devrak##3615
  Fly to Orgrimmar |complete zone("Orgrimmar")
  only if not Rogue
  step
  talk Uthel'nay##7311
  accept Speak with Un'thuwa##1883 |goto Orgrimmar 39.16,86.29
  only Mage
  step
  talk Hanashi##2704
  Train Staves |complete weaponskill("TH_STAFF") > 0 |goto Orgrimmar 81.68,19.54
  .tip If you have 10s go learn Staves.
  .tip Otherwise skip this step.
  only Warlock
  step
  Enter the Clef of Shadow |goto Orgrimmar 53.04,40.88
  only Warlock
  step
  talk Gan'rul Bloodeye##5875
  turnin Gan'rul's Summons##1506 |goto Orgrimmar 48.24,45.30
  accept Creature of Void##1501 |goto Orgrimmar 48.24,45.30
  only Warlock
  step
  talk Ur'kyo##
  turnin Hex of Weakness##5654 |goto Orgrimmar 35.92,87.23
  only Priest
  step 
  Go North to Orgrimmar |complete zone("Orgrimmar")
  only Rogue
  step
  Hug the west path and go up the spiral ramp |goto Orgrimmar 42.21,61.70
  Enter the Clef of Shadow |goto Orgrimmar 40.26,54.37
  only Rogue
  step
  talk Therzok##6446
  turnin Therzok##1859 |goto Orgrimmar 42.73,53.57
  accept The Shattered Hand##1963 |goto Orgrimmar 42.73,53.57
  only Rogue
  step
  talk Kareth##3331
  buy Jambiya##2208 |goto Orgrimmar 45.62,55.93
  .tip It's 22s I know...
  .tip But you will love this one
  only if Rogue
  step 
  talk Thrall##4949
  accept Hidden Enemies##5726 |goto Orgrimmar 31.64,37.84
  step 
  talk Vol'jin##10540
  turnin The Admiral's Orders##831 |goto Orgrimmar 34.33,36.40
  step
  NOTE:
  Do You Need to Create a Wand?
  .tip If you already have a wand, you can skip the next bunch of steps.
  .tip Click the line below to select what you want to do.
  Yes, Create a Wand |confirm |next "Create_Wand_Priest" |or
  No, I Already Have a Wand |confirm |next "Skip_Wand_Priest" |or
  only if Priest or Mage or Warlock
  step
  label "Create_Wand_Priest"
  collect 70 Linen Cloth##2589 |c
  .tip You are about to create your wand.
  .tip If you need more Linen Cloth, try to buy some from the Auction House. |only if not selfmade
  only if Priest or Mage or Warlock
  step
  talk Magar##3363
  .tip Inside the building.
  Learn Tailoring |skillmax Tailoring,75 |goto Orgrimmar 63.62,49.94 |c
  only if Priest or Mage or Warlock
  step
  Open the Tailoring Profession Window
  .tip Create 35 Bolts of Linen Cloth.
  get 35 Bolt of Linen Cloth##2996 |c
  only if Priest or Mage or Warlock
  step
  talk Borya##3364
  .tip Inside the building.
  buy 10 Coarse Thread##2320 |goto Orgrimmar 63.08,51.45 |c
  only if Priest or Mage or Warlock
  step
  talk Magar##3363
  .tip Inside the building.
  learn Brown Linen Robe##7623 |goto Orgrimmar 63.62,49.94 |c
  only if Priest or Mage or Warlock
  step
  Open the Tailoring Profession Window
  .tip Create 10 Brown Linen Robes.
  .tip You are about to learn Enchanting and disenchant these.
  get 10 Brown Linen Robe##6238 |c
  only if Priest or Mage or Warlock
  step
  talk Godan##3345
  .tip Inside the building.
  Learn Enchanting |skillmax Enchanting,75 |goto Orgrimmar 53.89,38.66 |c
  only if Priest or Mage or Warlock
  step
  Disenchant the Brown Linen Robes
  .tip If you don't get one of these items from disenchanting, talk to Kithas here and try to buy it.
  .tip They are limited supply items, so it may not be available to buy.
  .tip You can also try to buy it from the Auction House.
  collect Strange Dust##10940 |goto Orgrimmar/0 53.88,38.02 |c
  collect 2 Lesser Magic Essence##10938 |goto Orgrimmar/0 53.88,38.02 |c
  only if Priest or Mage or Warlock
  step
  talk Kithas##3346
  .tip Inside the building.
  buy Copper Rod##6217 |goto Orgrimmar/0 53.88,38.02 |c
  buy Simple Wood##4470 |goto Orgrimmar/0 53.88,38.02 |c
  only if Priest or Mage or Warlock
  step
  Open the Enchanting Profession Window
  .tip Create 1 Runed Copper Rod.
  get Runed Copper Rod##6218 |c
  only if Priest or Mage or Warlock
  step
  talk Godan##3345
  .tip Inside the building.
  learn Lesser Magic Wand##14293 |goto Orgrimmar 53.89,38.66 |c
  only if Priest or Mage or Warlock
  step
  Open the Enchanting Profession Window
  .tip Create 1 Lesser Magic Wand.
  get Lesser Magic Wand##11287 |c
  only if Priest or Mage or Warlock
  step
  talk Ormak Grimshot##3352
  turnin Training the Beast##6081 |goto Orgrimmar 66.05,18.51
  only Hunter
  step 
  talk Sayoc##11868
  Train Daggers |complete weaponskill("DAGGER") > 0 |goto Orgrimmar 81.68,19.54
  .tip DO NOT PRESS TRAIN ALL
  only if Shaman or Orc Warrior
  step
  label "Skip_Wand_Priest"
  use Hearthstone##6948
  Hearth to Razor Hill |goto Durotar 51.74,41.57 |c |or
  Or leave Orgrimmar |goto Orgrimmar 52.55,85.19 |c |or
  .tip If it is on CD
  only if not Warrior and not Shaman and not Mage
  step 
  talk Urtharo##3314
  buy Jambiya##2207 |goto Orgrimmar 47.54,68.43
  .tip This can be skipped as you will get a dagger from the Warrior quest in a bit. |only Warrior
  .tip If you are low on coins don't buy it (save 11s for the shield next)
  only if Warrior or Shaman
  step 
  talk Sana##3319
  buy Banded Buckler##17187 |goto Orgrimmar 55.96,72.77
  .tip This will be your wombo combo
  .tip Skip it if you have better
  only if Warrior or Shaman
  step
  Leave Orgrimmar |goto Orgrimmar 52.55,85.19 |c
  only if Warrior or Shaman or Mage
  step 
  Head deep into the Ravine through the cave |goto Durotar 51.84,27.43 |c
  kill 12 Dustwind Savage |q 835/1 |goto 53.73,24.50
  kill 8 Distwind Storm Witch |q 835/2 |goto 53.73,24.50
  .tip LoS these that are up in the air
  .tip Equip Jambiya if you ding 11 |only if Warrior or Shaman
  step 
  talk Rezlak##3293
  turnin Securing the Lines##835 |goto Durotar 46.37,22.93
  step 
  ding 11
  stickystart "Kill_Bloodtalon_Scythemaw"
  step
  Go West to the River |goto The Barrens 64.40,8.65 |c
  .tip Killing Raptors. You can finish the quest later.
  Heading South: |goto The Barrens 63.59,13.51
  kill Dreadmaw Crocolisk##3110+
  collect Kron's Amulet##4891 |q 816/1
  step
  title Jumping!
  Jump here to the other side (not down!) |goto Durotar,39.11,29.04,0.2
  Up here |goto Durotar,39.98,28.00,0.2
  And drop down here |goto Durotar,41.26,25.70,0.2 |c
  stickystop "Kill_Bloodtalon_Scythemaw"
  step
  kill Fizzle Darkstorm##3203
  get Fizzle's Claw## |q 806/1 |goto 41.73,25.88
  .tip Try to clear the camp 1 by 1 and pull him alone.
  .tip LoS Casters on the "Bone" structures
  .tip Imps despawns if master gets killed.
  .tip Sap Fizzle, kill imp, gg. |only Rogue
  .tip Sheep him, kill Imp, then LoS |only Mage
  step
  Heading out of the Ridge: |goto 39.19,32.34 |c
  kill Thunder Lizard##3130+
  use Jo'gon's Rod##63138
  Siphon 5 Essence of Lightning |q 27266/1
  info Warrior quest: |only Warrior
  collect 5 Singed Scale## |q 1498/1 |only Warrior
  step 
  talk Misha Tor'kren##3193
  turnin Lost But Not Forgotten##816 |goto 43.11,30.24
  stickystart "Kill_Bloodtalon_Scythemaw"
  step
  Keep heading this way grinding mobs until you check: |goto 36.34,54.20
  ding 11,6650
  only Shaman
  stickystop "Kill_Bloodtalon_Scythemaw"
  step 
  Head to the path that starts here |goto Durotar 36.72,57.84 |c
  Follow the path up:
  .tip Care not to fall :3
  talk Telf Joolam##5900
  turnin Call of Fire##1524 |goto 38.55,58.95
  accept Call of Fire##1525 |goto 38.55,58.95
  only Shaman
  step
  use Hearthstone##6948
  Hearth to Razor Hill |goto Durotar 51.74,41.57 |c
  only Shaman
  step
  ding 11,5743
  info This is important to grab level 12 spells before going on a hard kill after the mage quest part.
  info Heading to Sen Jin after
  Razormanes (cloth) |goto 42.89,38.84
  only Mage
  step
  talk Un'Thuwa##5880
  turnin Speak with Un'thuwa##1883 |goto Durotar 56.31,75.11
  accept Ju-Ju Heaps##1884 |goto Durotar 56.31,75.11
  only Mage
  step
  talk Trayexir##10369
  Sell your junk and get repaired |vendor Trayexir##10369 |goto 56.47,73.13
  .tip Right Click to continue
  only Mage
  step 
  Go to the Echo Isles:
  click Ju-Ju Heap##102986
  .tip Inside the huts
  Destroy Ju-Ju Heaps |q 1884/1 |goto Durotar 67.49,83.17
  only Mage
  step
  talk Un'Thuwa##5880
  turnin Ju-Ju Heaps##1884 |goto Durotar 56.31,75.11
  NOTE:
  info Many agree that the Ley Orb is the better reward.
  only Mage
  step
  use Hearthstone##6948
  Hearth to Razor Hill |goto Durotar 51.74,41.57 |c
  only Mage
  step
  ding 11,7275
  info This is important to grab level 12 spells before going on a hard kill after.
  info Heading to Razor Hill after
  Razormanes (cloth) |goto 42.89,38.84
  Thunder Lizards (skinning) |goto 39.57,28.16
  Raptors, Scorpions, Boars (skinning) |goto 37.16,37.77
  only if not Warrior and not Shaman and not Mage
  step 
  talk Uzzek##5810
  turnin Path of Defense##1498 |goto The Barrens 61.38,21.11
  .tip You've just learned Defensive Stance.
  accept Thun'grim Firegaze##1502 |goto The Barrens 61.38,21.11
  only Warrior
  step
  Head South up the hill |goto The Barrens 60.18,25.76
  Run up the Thorn Hill Mountain from here |goto The Barrens 59.52,28.06
  To the top |goto The Barrens 57.53,28.66 |c
  only Warrior
  step 
  talk Thun'grim Firegaze## 
  turnin Thun'grim Firegaze##1502 |goto The Barrens 57.23,30.34
  accept Forged Steel##1503 |goto The Barrens 57.23,30.34
  only Warrior
  step 
  Run down the Mountain |goto The Barrens 56.61,28.60 |c
  click Stolen Iron Chest##58369
  get Forged Steel Bars##6534 |q 1503/1 |goto The Barrens 55.05,26.65 
  only Warrior
  step 
  ding 11,6425
  only Warrior
  step
  Get back up the Mountain |goto The Barrens 54.54,27.96 |c
  talk Thun'grim Firegaze## 
  turnin Forged Steel##1503 |goto The Barrens 57.23,30.34
  .tip Choose Whatever... I prefer Jambiya (bought earlier) because of speed.
  only Warrior
  step
  use Hearthstone##6948
  Hearth to Razor Hill |goto Durotar 51.74,41.57 |c
  only Warrior
  step
  Train First Aid to level 40 making linen bandages (then sell em)
  .tip If you dont have enough don't worry, you can do it later. |only if Warlock or Mage or Priest
  talk Wuark##3167
  Sell your junk and get repaired |vendor Wuark##3167 |goto 51.80,40.58
  .tip Right Click to continue
  step
  talk Jo'gon##46099
  turnin A Touch of Lightning##27266 |goto 53.06,41.15
  .tip Save "Vanishing Dust" for future quests! =)
  step
  talk Orgnil Soulscar##3142
  turnin Dark Storms##806 |goto 52.35,43.72
  .tip Wait 3 seconds
  accept Margoz##828 |goto 52.35,43.72
  step
  ding 12
  step
  talk Rawrk##5943
  learn Heavy Linen Bandage##3276 |goto 53.40,41.91
  .tip You can skip this if you don't have enough level yet |only if Warlock or Mage or Priest
  step
  talk Suli##46932
  learnspell Conjure Food##597 |goto 53.56,41.55
  learnspell Dampen Magic##604 |goto 53.56,41.55
  learnspell Slow Fall##130 |goto 53.56,41.55
  learnspell Fireball (Rank 3)##145 |goto 53.56,41.55
  only Mage
  step
  talk Dhugru Gorelust##3172
  learnspell Curse of Weakness (Rank 2)##1108 |goto 53.23,40.05
  learnspell Health Funnel##755 |goto 53.23,40.05
  learnspell Shadow Bolt (Rank 2)##705 |goto 53.23,40.05
  only Warlock
  step
  talk Kitha##6027
  buy Grimoire of Phase Shift##16331 |goto 53.27,40.21
  only Warlock
  step
  talk Kaplak##3170
  learnspell Backstab (Rank 2)##2589 |goto 51.99,44.15
  learnspell Kick##1766 |goto 51.99,44.15
  learnspell Parry##3127 |goto 51.99,44.15
  only Rogue
  step
  talk Tai'jin##3706
  learnspell Inner Fire##588 |goto 53.58,41.91
  learnspell Power Word: Fortitude (Rank 2)##1244 |goto 53.58,41.91
  learnspell Power Word: Shield (Rank 2)##592 |goto 53.58,41.91
  learnspell Bless Water##84593 |goto 53.58,41.91
  only Priest
  step 
  talk Swart##3173
  learnspell Fire Nova Totem##1535 |goto 50.64,40.66
  learnspell Purge##370 |goto 50.64,40.66
  learnspell Ancestral Spirit##2008 |goto 50.64,40.66
  learnspell Healing Wave (Rank 3)##547 |goto 50.64,40.66
  only Shaman
  step
  talk Thotar##3171
  learnspell Mend Pet##136 |goto 53.46,45.34
  learnspell Arcane Shot (Rank 2)##14281 |goto 53.46,45.34
  learnspell Distracting Shot##20736 |goto 53.46,45.34
  learnspell Wing CLip##2974 |goto 53.46,45.34
  only Hunter
  step
  talk Tarshaw Jaggedscar##3169
  learnspell Overpower##7384 |goto 53.70,43.48
  learnspell Battle Shout (Rank 2)##5242 |goto 53.70,43.48
  learnspell Shield Bash##72 |goto 53.70,43.48
  .tip Ready to finally interrupt those pesky casters?
  only Warrior
  stickystart "Reagent_Pouch"
  step 
  Head into this cave |goto 52.87,29.14 |c
  talk Gizzle Screwsnip##46106
  .tip In the end of the cave
  turnin Searching for Gizzle##27279 |goto 52.73,25.51
  step
  talk Gizzle Screwsnip##46106
  accept The Dustwind Escape##27278 |goto 52.73,25.51
  Escort him outside |q 27278/1
  step
  label "Reagent_Pouch"
  kill Burning Blade Cultist##3199
  get Reagent Pouch##6652 |q 1525/2
  .tip For the 1st part of the Fire Totem Shaman quest
  only Shaman
  step
  talk Margoz##3208
  turnin Margoz##828 |goto Durotar 56.41,20.05
  accept Skull Rock##827 |goto Durotar 56.41,20.05
  stickystart "Kill_Bloodtalon_Scythemaw"
  step
  title Skull Rock
  Get inside Skull Rock |goto Durotar 55.05,9.83 |c
  NOTE:
  info Statistically, this cave is the top 1 place where people die, in the whole game!
  info Beware... with Voidwalkers
  stickystart "Lieutenant's_Insignia"
  stickystart "Searing_Collars"
  stickystop "Kill_Bloodtalon_Scythemaw"
  step
  Keep hugging the right side until you get to the chest:
  click Burning Blade Stash##58595 |goto Durotar 51.62,9.76
  get Tablet of Verga##6535 |q 1501/1
  only Warlock 
  step
  title Gazz'uz
  kill Gazz'uz##3204 |goto 51.87,9.62
  .tip Usually found in the water "lake" area to the left path.
  .tip He can be very tough to kill. Make sure to LoS his spells.
  .tip Gazz's Voidwalker despawns after he dies.
  .tip If you want you can skip this and just finish the other quests.
  use Faintly Glowing Skull##4945 |only if itemcount(4945) > 0
  .tip on Gazz to regen your HP |only if itemcount(4945) > 0
  use Really Sticky Glue##4941 |only if itemcount(4941) > 0
  .tip on his Voidwalker (get away from him when he is channeling!) |only if itemcount(4941) > 0
  get Eye of Burning Shadow##4903 |q 832 |future
  accept Burning Shadows##832
  info
  Click here for a Video Example (LoS) |popuptext youtu.be/-v0sFEUVy8M |only if Mage or Warlock
  Click here for a Video Example (LoS) |popuptext youtu.be/C00iMnAcJ40 |only if Warrior or Rogue or Shaman or Hunter or Priest
  .tip Warrior is the hardest class to do this, and needs some experience to be successful. |only Warrior
  step
  label "Searing_Collars"
  kill Burning Blade Apprentice##3198+
  collect 6 Searing Collar |q 827/1
  step
  label "Lieutenant's_Insignia"
  get Lieutenant's Insignia |q 5726/1
  stickystart "Kill_Bloodtalon_Scythemaw"
  step
  talk Margoz##3208
  turnin Skull Rock##827 |goto Durotar 56.41,20.05
  .tip Wait 10 sec
  accept Neeru Fireblade##829 |goto Durotar 56.41,20.05
  step
  Finish off killing Raptors:
  label "Kill_Bloodtalon_Scythemaw"
  kill 10 Bloodtalon Scythemaw##3123 |q 27277/1
  step 
  talk Supervisor Hink##46107
  turnin Scythemaw Standstill##27277 |goto 50.50,13.55
  turnin The Dustwind Escape##27278 |goto 50.50,13.55
  step
  Head into Orgrimmar |goto Orgrimmar 48.93,93.03
  step
  talk Innkeeper Gryshka##6929
  turnin Ride to Orgrimmar##6384 |goto 54.11,68.43
  accept Doras the Wind Rider Master##6385 |goto 54.11,68.43
  only if not Rogue
  step
  talk Doras##3310
  turnin Doras the Wind Rider Master##6385 |goto 45.15,63.91
  accept Return to the Crossroads##6386 |goto 45.15,63.91
  only if not Rogue
  step
  talk Shoma##3361
  Sell your junk and get repaired |vendor Shoma##3361 |goto 81.57,18.89
  Right Click to continue
  info
  info Buy Weapon Training if you want/can:
  talk Sayoc##11868
  .tip Daggers, Fist Weapons, Bows, Thrown
  talk Hanashi##2704
  .tip 2H Axes, Bows, Staves
  info
  .tip Skip this step if you like |only if not Warrior and not Shaman
  .tip You can learn Staves / Daggers |only Priest
  .tip Reccomended for Hunter is 2H Axes and Staves |only Hunter
  .tip Go learn 1H Axes |only Rogue
  .tip Try to get a Slow 1H Axe for the main hand |only Rogue
  .tip Skip this if you wont have 35s+ for a weapon and shield next |only if Warrior or Shaman
  only if not Warlock
  step 
  talk Thrall##4949
  turnin Hidden Enemies##5726 |goto 31.64,37.84
  accept Hidden Enemies##5727 |goto 31.64,37.84
  step
  talk Gan'rul Bloodeye##5875
  turnin Creature of Void##1501 |goto Orgrimmar 48.24,45.30
  accept The Binding##1504 |goto Orgrimmar 48.24,45.30
  only Warlock
  step
  talk Neeru Fireblade##3216
  turnin Burning Shadows##832 |only if haveq(832)
  turnin Neeru Fireblade##829 |goto 49.51,50.59
  .tip Wait 4 seconds
  accept Ak'Zeloth##809 |goto 49.51,50.59
  Keep Talking with him "You may speak frankly..." |gossip |q 5727/1
  step
  In here inside the hut:
  use Glyphs of Summoning##7464
  Summon and Kill the VW |q 1504/1
  only Warlock
  step
  talk Gan'rul Bloodeye##5875
  turnin The Binding##1504 |goto Orgrimmar 48.24,45.30
  only Warlock
  step
  talk Kareth##3331
  buy Poniard##2208 |goto 45.62,55.93
  .tip It's 34s I know...
  .tip But you will love this one, trust me.
  only if Warrior or Shaman
  step 
  talk Thrall##4949
  turnin Hidden Enemies##5727 |goto 31.64,37.84
  .tip Skip the next part (RFC)
  step
  title Razor Hill
  use Hearthstone##6948
  Hearth or walk to Razor Hill |goto Durotar 51.74,41.57 |c
  step 
  talk Takrin Pathseeker##3336
  accept Conscript of the Horde##840 |goto 50.69,43.54
  only Rogue
  step 
  Travel West to the Barrens: |goto The Barrens 63.35,19.17 |c |noway |or
  info Either by walking
  info OR by Cart
  title Cart
  invehicle Cart##46472 |goto Durotar 53.02,42.99 |or
  info You can leave the Cart midway
  step 
  talk Kargal Battlescar##3337
  turnin Conscript of the Horde##840 |goto The Barrens 62.27,19.37
  accept Crossroads Conscription##842 |goto The Barrens 62.27,19.37
  info You can leave the Cart by targeting and right click
  only Rogue
  step
  talk Ak'Zeloth##3521
  turnin Ak'Zeloth##809 |goto The Barrens 62.34,20.07
  accept The Demon Seed##924 |goto The Barrens 62.34,20.07
  info On the table:
  click Flawed Power Stones##5620
  get Flawed Power Stone##4986 |q 924
  .tip This item has a timer of 30m!
  step
  Go South towards Ratchet:
  .tip Care with agressive mobs.
  .tip You are doing a deviation for the Rogue quest so work rather fast in the next steps to not despawn the 30m item.
  talk Bragok##16227
  fpath Ratchet |goto The Barrens 63.08,37.16
  only Rogue
  step
  Keep heading South and up this path |goto The Barrens 62.99,44.16 |c
  kill Tazan##6494
  collect Tazan's Satchel## |q 1963/1
  .tip He patrols up and down.
  only Rogue
  step 
  title Xroads
  Travel NW to the Xroads: |goto 52.51,30.94 |c
  .tip Use Sprint
  only Rogue
  step 
  talk Sergra Darkthorn##3338
  turnin Crossroads Conscription##842 |goto 52.23,31.00
  accept Plainstrider Menace##844 |goto 52.23,31.00
  only Rogue
  step
  talk Thork##3429
  accept Disrupt the Attacks##871 |goto 51.50,30.86
  accept Burning Blade Signets##27165 |goto 51.50,30.86
  only Rogue
  step 
  talk Gazrog##3464
  accept Raptor Thieves##869 |goto 51.93,30.32
  only Rogue
  step 
  talk Zargh##3489
  accept Meats to Orgrimmar##6365 |goto 52.61,29.84
  only Rogue
  stickystart "Plainstrider_Beak"
  stickystart "Raptor_Heads"
  step
  Head to and get up the mountain |goto The Barrens,50.86,22.49,0.3 |c
  All the way to the top |goto 48.85,19.92,0.3 |c
  .tip Ignore Stickies if the timer is getting close. |only Rogue
  stickystop "Plainstrider_Beak"
  stickystop "Raptor_Heads"
  step
  click The Altar of Fire##3525 |goto 47.97,19.08
  .tip Inside the cave
  Destroy the Demon Seed |q 924/1
  kill Burning Bladers##3379+
  collect 10 Burning Blade Signet##63038 |q 27165/1
  NOTE:
  info Watch out for a rare Rathorian inside the cave, he has an add in the back.
  stickystart "Plainstrider_Beak"
  stickystart "Raptor_Heads"
  step
  Head to the Razormanes |goto 53.71,24.00 |c
  .tip Grinding Plainstriders on the way
  stickystop "Plainstrider_Beak"
  stickystop "Raptor_Heads"
  stickystart "Fire_Tar"
  step
  title Keg
  Go ahead and clear the zone:
  kill 8 Razormane Water Seeker##3267 |q 871/1
  kill 8 Razormane Thornweaver##3268 |q 871/2
  kill 3 Razormane Hunter##3265 |q 871/3
  info In the back:
  click Chen's Empty Keg## |goto 55.70,27.31
  accept Chen's Empty Keg##819
  stickystart "Plainstrider_Beak"
  stickystart "Raptor_Heads"
  step
  label "Fire_Tar"
  collect Fire Tar##5026 |q 1525/1
  .tip For the Shaman Fire Totem Quest
  only Shaman
  step
  Up the Mountain here |goto The Barrens 54.62,27.99 |c 
  And down from here |goto The Barrens 57.65,28.57 |c
  Go East to Durotar and up the path agane |goto Durotar 36.72,57.84 |c
  only Shaman
  stickystop "Plainstrider_Beak"
  stickystop "Raptor_Heads"
  step
  talk Telf Joolam##5900
  turnin Call of Fire##1525 |goto 38.55,58.95
  accept Call of Fire##1526 |goto 38.55,58.95
  only Shaman
  step
  Next to you at the Shrine:
  use Fire Sapta##6636
  kill Minor Manifestation of Fire##5893
  get Glowing Ember##6655 |goto 38.80,58.25
  only Shaman
  step
  click Brazier of the Dormant Flame##61934
  turnin Call of Fire##1526 |goto 38.91,58.23
  accept Call of Fire##1527 |goto 38.91,58.23
  only Shaman
  step 
  Jump here |goto 38.14,58.31,0.2 |c
  Continue down the path (care) and jump here |goto 37.13,58.07,0.2 |c
  only Shaman
  step
  Go back to The Barrens:
  talk Ak'Zeloth##3521
  turnin The Demon Seed##924 |goto The Barrens 62.34,20.07
  only Shaman
  stickystart "Plainstrider_Beak"
  stickystart "Raptor_Heads"
  step
  talk Kranal Fiss##5907
  turnin Call of Fire##1527 |goto The Barrens 55.86,20.00
  .tip Gratz on Fire Totéms!
  only Shaman
  step
  title Xroads
  Head back to Xroads |goto The Barrens 52.33,29.48
  stickystop "Plainstrider_Beak"
  stickystop "Raptor_Heads"
  step
  talk Zargh##3489
  turnin Return to the Crossroads##6386 |goto 52.61,29.84
  only if not Rogue
  step 
  talk Sergra Darkthorn##3338
  turnin Plainstrider Menace##844 |goto 52.23,31.00
  accept The Zhevra##845 |goto 52.23,31.00 
  only if readyq(844) or completedq(844)
  step 
  talk Tonga Runetotem##3448
  accept The Forgotten Pools##870 |goto 52.25,31.93
  only Rogue
  step 
  talk Halija Whitestrider##3486
  Sell your junk and get repaired |vendor Halija Whitestrider##3486 |goto 52.25,31.86
  .tip Right Click to continue
  only Rogue
  step 
  talk Innkeeper Boorand Plainswind##3934
  home The Crossroads |goto 51.99,29.90
  step
  talk Thork##3429
  turnin Disrupt the Attacks##871 |goto 51.50,30.86
  turnin Burning Blade Signets##27165 |goto 51.50,30.86
  accept The Disruption Ends##872 |goto 51.50,30.86
  accept Supplies for the Crossroads##5041 |goto 51.50,30.86
  step 
  Up the Watchtower:
  talk Darsok Swiftdagger##3449
  accept Harpy Raiders##867 |goto 51.62,30.90
  step 
  talk Apothecary Helbrim##3390
  accept Fungal Spores##848 |goto 51.44,30.16
  accept Wharfmaster Dizzywig##1492 |goto 51.44,30.16
  only Rogue
  step 
  talk Devrak##3615
  fpath Crossroads
  .tip Do not Fly yet.
  turnin Meats to Orgrimmar##6365 |goto 51.51,30.34
  accept Ride to Orgrimmar##6384 |goto 51.51,30.34
  only Rogue
  step 
  talk Devrak##3615
  Fly to Orgrimmar |complete zone("Orgrimmar")
  only Rogue
  step
  Enter the Clef of Shadow |goto Orgrimmar 40.26,54.37
  only Rogue
  step
  talk Therzok##6446
  turnin The Shattered Hand##1963 |goto Orgrimmar 42.73,53.57
  accept The Shattered Hand##1858 |goto Orgrimmar 42.73,53.57
  only Rogue
  step
  talk Innkeeper Gryshka##6929
  turnin Ride to Orgrimmar##6384 |goto Orgrimmar 54.11,68.43
  accept Doras the Wind Rider Master##6385 |goto Orgrimmar 54.11,68.43
  only Rogue
  step
  Next to you, Pick Pocket Gamon:
  get Tazan's Key##7208 |q 1858
  info
  Then:
  use Tazan's Key##7208
  To Unlock and Open Tazan's Satchel |q 1858/1
  only Rogue
  step
  talk Doras##3310
  turnin Doras the Wind Rider Master##6385 |goto Orgrimmar 45.15,63.91
  accept Return to the Crossroads##6386 |goto Orgrimmar 45.15,63.91
  only Rogue
  step
  Enter the Clef of Shadow, agane |goto Orgrimmar 40.26,54.37
  only Rogue
  step
  talk Therzok##6446
  turnin The Shattered Hand##1858 |goto Orgrimmar 42.73,53.57
  .tip Use Blade of Cunning on the MH (slower) and Jambiya on the OH (faster)
  only Rogue
  step 
  title Xroads
  Fly to Xroads |complete zone("The Barrens")
  info OR
  use Hearthstone##6948
  info If you plan on doing a break of at least ~30min after.
  only Rogue
  step
  talk Zargh##3489
  turnin Return to the Crossroads##6386 |goto The Barrens 52.61,29.84
  only Rogue
  step
  This guide is complete!
  .info By Huge
  ..info Any feedback, reach out @discord/git "huge.x", or ingame
  ..info (I wont accept discord friend requests from random people)
  info
  .info Continue with whathever guide you like:
  ..info Leveling guides (classic wow) - with Dungeons and refined
  ..info Zygor Guides (older) - no Dungeons and basic
  info 
  ..info Both aren't aligned with Epoch Reborn
  ..info new quests are outdated and some coordinates misplaced
  info
  info With the changes to the addon's core (and fixes) any other guide (than Epoch's) might have broken syntax, so keep that in mind.
  step
  label "Raptor_Heads"
  kill Raptors##3255+
  collect 12 Raptor Head##5062
  step
  label "Plainstrider_Beak"
  kill Plainstriders##3244+
  collect 7 Plainstrider Beak##5087
]])
