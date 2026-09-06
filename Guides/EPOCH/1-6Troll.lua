local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Horde' then
  return
end

ZygorGuidesViewer:RegisterGuide(
  'Epoch\\Starting Zones\\Troll (1-6)',
  {
    next = 'Epoch\\Starting Zones\\Orc/Troll - Durotar (6-12)'
  },
  [[
  author Huge
	defaultfor Troll
	startlevel 1
  map Durotar
  step //1
  NOTE:
  info If the addon window is locked in place, clicking for waypoints or other actions will not work.
  info If you want the addon to be clickable, keep the window unlocked, on the top left button.
  Click to Continue |confirm
	step //2
  talk Joz'jarz##46834
  trash Hearthstone##6948
  .tip You will get another one before you need to use it.
  .tip Extra Bag slot!
  accept The Darkspear Tribe##28722 |goto 70.09,42.11
  step //3
	talk Joz'jarz##46834
	turnin The Darkspear Tribe##28722
	accept Thievin' Crabs##28723 |goto 70.09,42.11
	step //4
	kill 10 Amethyst Crab##46835 |q 28723/1
  info Around the area
  step //5
  ding 2
	step //6
	talk Daz'tiro##46718
	turnin Thievin' Crabs##28723 |goto 70.90,45.92
	accept Glyphic Tablet##28728 |goto 70.90,45.92 |only Mage
  accept Simple Tablet##28742 |goto 70.90,45.92 |only Warrior
  accept Etched Tablet##28769 |goto 70.90,45.92 |only Hunter
  accept Encrypted Tablet##28732 |goto 70.90,45.92 |only Rogue
  accept Hallowed Tablet##28730 |goto 70.90,45.92 |only Priest
  accept Rune-Inscribed Tablet##28736 |goto 70.90,45.92 |only Shaman
  accept Tainted Tablet##28740 |goto 70.90,45.92 |only Warlock
	accept Banana Bonanza##28757 |goto 70.90,45.92
  step //7
  talk Tar'sere##47082
  turnin Simple Tablet##28742 |goto 72.51,46.77
  learnspell Battle Shout##6673 |goto 72.51,46.77
  .tip Make sure to keep the buff up at all times while in combat.
  only Warrior
  step //8
	talk Ghal'amon##47144
  Sell your junk |vendor Ghal'amon##47144 |goto 72.60,46.96
  .tip Right Click to continue
  step //9
	talk Hunter Bon'juru##47101
	accept Claws of the Cat##28759 |goto 72.76,47.36
  step //10
  talk Jen'shan##3154
  turnin Etched Tablet##28769 |goto 72.78,47.44
  learnspell Track Beasts##1494 |goto 72.78,47.44
  only Hunter
  step //11
  talk Ishi-yo##47078
  turnin Rune-Inscribed Tablet##28736 |goto 72.04,50.09
  learnspell Rockbiter Weapon##8017 |goto 72.04,50.09
  only Shaman
  step //12
  talk Ken'jai##3707
  turnin Hallowed Tablet##28730 |goto 73.00,48.08
  learnspell Power Word: Fortitude##1243 |goto 73.00,48.08
  only Priest
  step //13
  talk Tarkay##47075
  turnin Encrypted Tablet##28732 |goto 73.04,48.22
  learnspell Stealth##1784 |goto 73.04,48.22
  only Rogue
	step //14
	talk Mai'ah##5884
	turnin Glyphic Tablet##28728 |goto 72.89,48.16
  learnspell Arcane Intellect##1459 |goto 72.89,48.16
  only Mage
  step //15
  talk Uwa##46934
  turnin Tainted Tablet##28740 |goto 72.44,48.98
  learnspell Immolate##348 |goto 72.44,48.98
  only Warlock
  step //16
  info While leveling to 60 be sure to use your racial "Berserking" on cooldown as it will substantially increase your leveling speed.
  info Don't wait for the best moment unless you're about to do a hard quest.
  Click to Continue |confirm
  stickystart "Collect_Sharp_Tiger_Claw"
  stickystart "Sun_Bananas"
  step //17
  title Tigers and Bananas (trees)
  ding 3 |goto 70.29,48.49
  info Killing Tigers and Grabbing Bananas
  .tip You will finish these 2 quests later
  stickystop "Collect_Sharp_Tiger_Claw"
  stickystop "Sun_Bananas"
  step //18
	talk Witch Doctor Leerya##47103
	accept Jinxed Trolls##28760 |goto 72.29,48.78
  step //19
  talk Uwa##46934
  accept Azsharan Idols##28739 |goto 72.44,48.98
  only Warlock
	step //20
	talk Makasgar##47106
	accept The Loa of Death##28764 |goto 73.69,48.40
  stickystart "Collect_Sharp_Tiger_Claw"
  stickystart "Sun_Bananas"
  step //21
  Follow the path up the hill |goto 73.40,53.42 |only if walking |c
  Across the bridge |goto 74.18,54.61 |only if walking |c
  To the top |goto 73.73,55.52 |only if walking |c
	click Second Tablet of Bwonsamdi##250667 |q 28764/2 |goto 73.44,54.79
  .tip Read
  stickystop "Collect_Sharp_Tiger_Claw"
  stickystop "Sun_Bananas"
	step //22
  Go down the hill this way |goto 73.60,56.24 |walk |c
	kill 8 Jinxed Troll##47146 |q 28760/1 |goto 72.06,57.16
  NOTE:
	info Some jinxed trolls are level 5, being harder to deal with at this level.
  info Killing only level 4 is recommended, as these won't give xp or loot.
  step //23
  kill Murloc Tidewarrior##47109+ |goto 73.00,60.28
  info Until you:
  get Pouch of Strange Shells##65771
  accept Pouch of Strange Shells##28766
  stickystart "Collect_Sharp_Tiger_Claw"
  stickystart "Sun_Bananas"
	step //24
	Get into the cave |goto 69.68,51.17
  .tip Kill Tigers and grab Bananas along the way
	click First Tablet of Bwonsamdi##250666 |q 28764/1 |goto 68.75,50.96
  .tip Read
  step //25
  info Finish killing Tigers: |notinsticky
  label "Collect_Sharp_Tiger_Claw"
  kill Juvenile Tiger##47102+ 
  collect 10 Sharp Tiger Claw##65764 |q 28759/1 |goto 70.29,48.49
  step 
  label "Sun_Bananas"
  info Finish picking up Bananas: |notinsticky
  click Sun-Ripened Banana##250663
  collect 10 Sun-Ripened Banana##65762 |q 28757/1
  .tip Around trees
  step //26
  ding 3
	step //27
	talk Witch Doctor Leerya##47103
	turnin Jinxed Trolls##28760 |goto 72.29,48.78
	accept Source of the Jinx##28761 |goto 72.29,48.78
	step //28
	talk Azisary##47100
	turnin Banana Bonanza##28757 |goto 72.88,49.09
	accept Shell Collection##28758 |goto 72.88,49.09
	step //29
	talk Makasgar##47106
	turnin The Loa of Death##28764 |goto 73.69,48.40
	step //30
	talk Hunter Bon'juru##47101
	turnin Claws of the Cat##28759 |goto 72.77,47.36
  turnin Pouch of Strange Shells##28766 |goto 72.77,47.36
  accept accept The Naga Menace##28767 |goto 72.77,47.36
	accept Tidal Menace##28765 |goto 72.77,47.36
  step //31
  ding 4
  step //32
	talk Ghal'amon##47144
  Sell your junk |vendor Ghal'amon##47144 |goto 72.60,46.96
  .tip Right Click to continue
  step //33
  talk Tarkay##47075
  learnspell Backstab##53 |goto 73.04,48.22
  learnspell Pick Pocket##921 |goto 73.04,48.22
  .tip Get a Pick Pocket macro working!
  .tip It will net you tons of cummulative gold by level 60 without you noticing
  only Rogue
  step //34
  talk Jen'shan##3154
  learnspell Aspect of the Monkey##13163
  learnspell Serpent Sting##1978
  only Hunter
	step //35
	talk Mai'ah##5884
  learnspell Conjure Water##5504 |goto 72.89,48.16
  learnspell Frostbolt##116 |goto 72.89,48.16
  only Mage
  step //36
  talk Ken'jai##3707
  learnspell Lesser Heal (Rank2)##2052 |goto 73.00,48.08
  learnspell Power Word: Pain##589 |goto 73.00,48.08
  only Priest
  step //37
  talk Uwa##46934
  learnspell Corruption##172 |goto 72.44,48.98
  learnspell Curse of Weakness##702 |goto 72.44,48.98
  only Warlock
  step //38
  talk Tar'sere##47082
  learnspell Charge##100 |goto 72.51,46.77
  learnspell Rend##772 |goto 72.51,46.77
  only Warrior
  step //39
  talk Canaga Earthcaller##47096
  .tip She walk around the triangle structure
  accept Call of Earth##28733 |goto 72.42,48.83
  only Shaman
  step //40
  talk Ishi-yo##47078
  learnspell Earth Shock##8042 |goto 72.04,50.09
  only Shaman
	step //41
  Leave the camp to the Southwest 
  click Palm Frond Scroll##250665 |goto Durotar 70.25,60.33
  .tip Inside a purple fountain / shrine.
	get Ominous Palm Frond Scroll##65767 |q 28761/1
	step //42
  Head south to the coast |goto 70.97,62.96,0.2
  And then around the hill NE to the murlocs |goto 72.65,62.10 |c
  stickystart "Kill_Murlocs"
  step //43
  info There are a lot of Shells around here:
  collect 8 Tropical Seashell##65763 |q 28758/1 |goto 75.03,58.55
  .tip Little purple shells on the ground
  stickystart "Collect_Azsharan Idol"
  stickystart "Collect_Vial_of_Sediment"
  step //44
  Enter the cave here |goto Durotar 73.11,59.53 |c
	kill Tidemistress Lia'na##47079 |q 28767/1 |goto 73.54,53.79
  collect Lia'na's Trident##65772 |q 28767/2
  .tip Take the left, and go deep in the cave 
  .tip Or the right if the chest is up =)
  step //45
  label "Collect_Azsharan Idol"
  kill Naga Acolyte##47080+
  collect 3 Azsharan Idol##65739 |q 28739/1
  .tip For the Imp quest
  only Warlock
  step //46
  label "Collect_Vial_of_Sediment"
  kill Living Mud##47076+
  collect 2 Vial of Sediment## |q 28733/1
  .tip For the Earth quest
  only Shaman
  step //47
  label "Kill_Murlocs"
  kill 12 Murloc Tidewarrior##47109+ |q 28765/1 |goto 74.55,52.28
  .tip Inside the cave and along the east coast
  step //48
  info Exit the cave / grind mobs until:
  ding 5, 1270
	step //49
  Get back to the camp:
  .tip Or die on purpose and ress in the spirit (if not HC)
	talk Azisary##47100
	turnin Shell Collection##28758 |goto 72.88,49.09
  step //50
	talk Witch Doctor Leerya##47103
	turnin Source of the Jinx##28761 |goto 72.29,48.78
	accept Report to Master Gadrin##28762 |goto 72.29,48.78
	step //51
	talk Hunter Bon'juru##47101
	turnin Tidal Menace##28765 |goto 72.77,47.36
  turnin The Naga Menace##28767 |goto 72.77,47.36
  step //52
  ding 6
  step //53
	talk Ghal'amon##47144
  Sell your junk |vendor Ghal'amon##47144 |goto Durotar 72.60,46.96
  .tip Right Click to continue
  step //54
  talk Tar'sere##47082
  learnspell Thunder Clap##6343 |goto 72.51,46.77
  learnspell Parry##3127 |goto 72.51,46.77
  only Warrior
  step //55
  talk Jen'shan##3154
  learnspell Arcane Shot##3044
  learnspell Hunter's Mark##1130
  only Hunter
  step //56
  talk Canaga Earthcaller##47096
  .tip She walk around the triangle structure
  turnin Call of Earth##28733 |goto 72.42,48.83
  accept Call of Earth##28734 |goto 72.42,48.83
  only Shaman
  step //57
  talk Ishi-yo##47078
  learnspell Earthbind Totem##2484 |goto 72.04,50.09
  learnspell Healing Wave (Rank 2)##332 |goto 72.04,50.09
  only Shaman
  step //58
  Go NE around the mountain |goto 68.71,46.26,0.2 |c
  And get on the path that starts here |goto 66.55,46.59,0.2 |c
  Reach the Altar of Earth |goto 67.23,50.39,0.2 |c
  And drink the potion:
  use Earth Sapta##6635
  only Shaman
  step //59
  talk Minor Manifestation of Earth##5891
  turnin Call of Earth##28734 |goto 67.23,50.39
  accept Call of Earth##28735 |goto 67.23,50.39
  only Shaman
  step //60
  Get bank to the camp:
  talk Canaga Earthcaller##47096
  .tip She walk around the triangle structure
  turnin Call of Earth##28735 |goto 72.42,48.83
  only Shaman
	step //61
	talk Mai'ah##5884
	learnspell Conjure Food##587 |goto 72.89,48.16
  learnspell Fire Blast##2136 |goto 72.89,48.16
  learnspell Fireball(Rank 2)##143 |goto 72.89,48.16
  only Mage
  step //62
  talk Ken'jai##3707
  accept In Favor of Spirituality##5649 |goto Durotar 73.00,48.08
  learnspell Smite (Rank2)##591 |goto Durotar 73.00,48.08
  learnspell Power Word: Shield##17 |goto Durotar 73.00,48.08
  only Priest
  step //63
  talk Uwa##46934
  turnin Azsharan Idols##28739 |goto 72.44,48.98
  learnspell Life Tap##1454 |goto 72.44,48.98
  learnspell Shadow Bolt (Rank 2)##695 |goto 72.44,48.98
  only Warlock
  step //64
  talk Tarkay##47075
  learnspell Gouge##1776 |goto 73.04,48.22
  learnspell Sinister Strike##1757 |goto 73.04,48.22
  only Rogue
	step //65
  info Leave the camp to the SW to leave the island
	talk Razfiri##47105
	accept Report to Razor Hill##28763 |goto Durotar 65.70,61.70
	step //66
	Continue to follow the road SW to Sen'jin Village |goto 62.30,67.00 |c
]])
