local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Stranglethorn Vale (32-32)',
  {
    next = 'Leveling Guides\\Hillsbrad Foothills (32-33)',
  },
  [[
step
Follow the path up to the Rebel Camp |goto Stranglethorn Vale,39.05,5.20,20 |only if walking
talk Private Thorsen##738
.tip He periodically (around every 30 minutes) walks along the path to the south, from the Rebel Camp.
.tip If he's here, wait for him to start walking, and follow him.
.tip He will eventually get attacked by two Kurzen enemies.
.tip Help him kill the enemies and he will offer you a quest.
.tip It may take a while for him to start walking, but you have to wait for your hearthstone to cooldown anyway.
accept Jungle Secrets##215 |goto Stranglethorn Vale 37.98,3.41
Also check around [Stranglethorn Vale 40.34,8.44]
step
talk Barnil Stonepot##716
accept Welcome to the Jungle##583 |goto Stranglethorn Vale 35.66,10.53
step
talk Hemet Nesingwary##715
turnin Welcome to the Jungle##583 |goto Stranglethorn Vale 35.66,10.81
step
talk Ajeck Rouack##717
accept Tiger Mastery##185 |goto Stranglethorn Vale 35.61,10.62
step
talk Sir S. J. Erlgadin##718
accept Panther Mastery##190 |goto Stranglethorn Vale 35.55,10.55
stickystart "Kill_Young_Stranglethorn_Tigers"
step
Follow the path up |goto Stranglethorn Vale,30.71,8.28,30 |c |q 185
|only if Hunter
step
NOTE:
Tame a Stranglethorn Tiger
.tip Use your "Tame Beast" ability on a Stranglethorn Tiger.
.tip They look like orange tigers around this area.
.tip Make sure to tame a level 32 Stranglethorn Tiger.
.tip You can abandon your pet right before taming a Stranglethorn Tiger.
.tip This will be your new permanent pet.
.tip You will gain the "Dash" pet ability.
Train Your Pet
.tip Be sure to train your new pet with the highest ranks of Growl and Bite you currently have.
Click Here to Continue |confirm |goto Stranglethorn Vale 29.44,9.80 |q 185
|only if Hunter
step
label "Kill_Young_Stranglethorn_Tigers"
kill 10 Young Stranglethorn Tiger##681 |q 185/1 |goto Stranglethorn Vale 35.23,12.83
You can find more around: |notinsticky
[Stranglethorn Vale 33.42,11.47]
[Stranglethorn Vale 31.79,9.19]
step
kill 10 Young Panther##683 |q 190/1 |goto Stranglethorn Vale 41.70,12.28
You can find more around: |notinsticky
[42.40,10.56]
[41.06,8.26]
step
Follow the path up to the Rebel Camp |goto Stranglethorn Vale,39.05,5.20,20 |only if walking
talk Lieutenant Doren##469
turnin Jungle Secrets##215 |goto Stranglethorn Vale 38.04,3.01
step
talk Ajeck Rouack##717
turnin Tiger Mastery##185 |goto Stranglethorn Vale 35.61,10.62
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##190 |goto Stranglethorn Vale 35.55,10.55
step
Kill enemies around this area
.tip Grind enemies until your Hearthstone is ready to use.
.tip You will be hearthing back to Darkshire.
.tip The guide doesn't take into account this grind, so any extra xp you get now will put you a little bit ahead, and reduce any grinding you have to do later.
.tip This step will complete when your Hearthstone is ready to use.
Grind XP Until You Can Hearth to Darkshire |complete C_Container.GetItemCooldown(6948) == 0 |q 222
step
talk Malissa##3135
.tip Walking around here.
.tip Stock up on poisons.
.tip Open your poison crafting window and purchase the ingredients you need.
Visit the Vendor |vendor Malissa##3135 |goto Duskwood 79.44,44.44 |q 222
|only if Rogue
step
talk Calor##663
.tip He walks around this area in front of the building.
turnin Worgen in the Woods##222 |goto Duskwood 75.30,48.05
accept Worgen in the Woods##223 |goto Duskwood 75.30,48.05
step
Enter the building |goto Duskwood,75.22,48.25,10 |walk
talk Jonathan Carevin##661
.tip He walks around inside the building.
turnin Worgen in the Woods##223 |goto Duskwood 75.32,49.02
.tip The Consecrated Wand reward is the fastest wand in the game and should be held on to. |only if Priest
step
Enter the building |goto Stormwind City,59.96,64.19,10 |walk
talk Elling Trias##482
.tip Upstairs inside the building.
turnin The Missing Diplomat##1245 |goto Stormwind City 59.91,64.17
accept The Missing Diplomat##1246 |goto Stormwind City 59.91,64.17
.tip This requires that you complete the "The Missing Diplomat" questline started in the "Duskwood (31-32)" guide.
step
Enter the building |goto Stormwind City,55.29,68.13,10 |walk
talk Olivia Burnside##2455
.tip Inside the building.
.tip Collect these items from the bank.
collect Crate of Crash Helmets##5849 |goto Stormwind City 57.66,72.78 |q 1179 |only if haveq(1179) or completedq(1179)
collect Musquash Root##2784 |goto Stormwind City 57.66,72.78 |q 335 |only if haveq(335) or completedq(335)
step
talk Archmage Malin##2708
accept Malin's Request##690 |goto Stormwind City 39.77,81.44
step
Enter the building |goto Stormwind City,39.84,85.21,10 |walk
talk Connor Rivers##5081
.tip Inside the building.
accept James Hyal##1301 |goto Stormwind City 40.62,91.83
step
Enter the building |goto Stormwind City,29.19,74.12,10 |walk
talk Zardeth of the Black Claw##1435
.tip Downstairs inside the building.
turnin A Noble Brew##335 |goto Stormwind City 26.45,78.65
accept A Noble Brew##336 |goto Stormwind City 26.45,78.65
step
talk Ursula Deline##5495
trainer Ursula Deline##5495 |goto Stormwind City/0 26.13,77.20 |q 1247
.tip Train your spells.
|only if Warlock
step
Leave the building |goto Stormwind City,29.19,74.12,10 |c |q 336
|only if subzone("The Slaughtered Lamb")
step
NOTE:
Be Prepared to Fight
.tip Dashel Stonefist will attack you after you accept this quest in the next guide step.
.tip Also, two level 25-26 enemies will appear and help him fight.
.tip Ignore the helpers, and just focus on killing Dashel Stonefist as fast as you can.
.tip Once he reaches ~25% health, he will surrender and dismiss the helpers, ending the fight.
Click Here to Continue |confirm |q 1447 |future
step
Enter the alley |goto Stormwind City,70.07,48.07,10 |only if walking
talk Dashel Stonefist##4961
turnin The Missing Diplomat##1246 |goto Stormwind City 70.53,44.88
accept The Missing Diplomat##1447 |goto Stormwind City 70.53,44.88
step
kill Dashel Stonefist##4961
.tip Ignore the helpers that appear to help him fight, and just focus on killing Dashel Stonefist as fast as you can.
.tip Once he reaches ~25% health, he will surrender and dismiss the helpers, ending the fight.
Watch the dialogue
Defeat Dashel Stonefist |q 1447/1 |goto Stormwind City 70.53,44.88
step
talk Dashel Stonefist##4961
turnin The Missing Diplomat##1447 |goto Stormwind City 70.53,44.88
accept The Missing Diplomat##1247 |goto Stormwind City 70.53,44.88
step
talk Jennea Cannon##5497 |only if Mage
talk Einris Brightspear##5515 |only if Hunter
talk Wu Shen##5479 |only if Warrior
talk Osborne the Night Man##918 |only if Rogue
talk Sheldras Moontree##5504 |only if Druid
talk Brother Benjamin##5484 |only if Priest
talk Arthur the Faithful##5491 |only if Paladin
trainer Jennea Cannon##5497 |goto Stormwind City/0 38.62,79.35 |only if Mage |q 1247
trainer Einris Brightspear##5515  |goto Stormwind City/0 61.66,15.30 |only if Hunter |q 1247
trainer Wu Shen##5479 |goto Stormwind City/0 78.72,45.77 |only if Warrior |q 1247
trainer Osborne the Night Man##918 |goto Stormwind City/0 74.54,52.80 |only if Rogue |q 1247
trainer Sheldras Moontree##5504 |goto Stormwind City/0 20.92,55.52 |only if Druid |q 1247
trainer Brother Benjamin##5484 |goto Stormwind City/0 41.64,28.98 |only if Priest |q 1247
trainer Arthur the Faithful##5491 |goto Stormwind City/0 38.65,32.80 |only if Paladin |q 1247
.tip Inside the tower. |only if Mage
.tip Inside the building. |only if Hunter or Warrior or Priest or Paladin
.tip He patrols inside. |only if Priest
.tip Train your spells.
step
Follow the path |goto Stormwind City,74.90,51.57,10 |only if walking
Enter the building |goto Stormwind City,78.04,47.98,10 |walk
talk Wu Shen##5479
.tip Upstairs inside the building.
accept The Islander##1718 |goto Stormwind City 78.68,45.79
|only if Warrior
step
Enter the building |goto Stormwind City,59.96,64.19,10 |walk
talk Elling Trias##482
.tip Upstairs inside the building.
turnin The Missing Diplomat##1247 |goto Stormwind City 59.91,64.17
accept The Missing Diplomat##1248 |goto Stormwind City 59.91,64.17
step
Enter the building |goto Stormwind City,69.09,28.70,15 |walk
Follow the path |goto Stormwind City,72.71,25.85,10 |walk
talk Lord Baurles K. Wishock##1439
.tip Inside the building.
turnin A Noble Brew##336 |goto Stormwind City 75.23,31.67
step
Leave the Petitioner's Chamber |goto Stormwind City,72.80,26.02,10 |walk |only if subzone("Petitioner's Chamber")
Follow the path |goto Stormwind City,72.72,22.92,10 |walk
Continue following the path |goto Stormwind City,70.17,11.34,10 |walk
talk Milton Sheaf##1440
.tip Inside the building.
turnin An Old History Book##337 |goto Stormwind City 74.17,7.49
accept Southshore##538 |goto Stormwind City 74.17,7.49
step
talk Auctioneer Jaxon##15659
.tip Purchase these items from the Auction House
.tip They are used for a quest later.
.tip You can skip this step if you cannot afford it.
collect Bolt of Woolen Cloth##2997 |q 565/1 |future |goto Stormwind City 53.61,59.76
collect Hillman's Cloak##3719 |q 565/3 |future |goto Stormwind City 53.61,59.76
collect 4 Lesser Bloodstone Ore##4278 |q 627 |future |goto Stormwind City 53.61,59.76
|only if not selfmade
step
talk Olivia Burnside##2455
.tip Inside the building.
.tip Deposit these items into the bank.
bank 4 Lesser Bloodstone Ore##4278 |goto Stormwind City 57.66,72.78 |q 627 |future |only if itemcount(4278) >= 4
step
Enter the building |goto Wetlands,10.79,59.77,10 |walk
talk Vincent Hyal##5082
.tip Inside the building.
turnin James Hyal##1301 |goto Wetlands 10.81,60.42
accept James Hyal##1302 |goto Wetlands 10.81,60.42
step
NOTE:
Be Ready to Attack Tapoke "Slim" Jahn
.tip He is standing inside the building, near the entrance of the inn in Menethil Harbor.
.tip You can see him from where you turn in and accept quests in the next guide step.
.tip Immediately after you accept the quest in the next guide step, Tapoke "Slim" Jahn will stealth and start walking toward the building entrance.
.tip Follow him and attack him after he leaves the inn.
.tip He will summon another enemy to help him fight.
.tip Crowd control or ignore his helper, and just focus on killing Tapoke "Slim" Jahn as quickly as you can.
.tip He will surrender at ~15% health and his helper will disappear.
.tip As a Mage, you can try to Sheep him immediately once he becomes attackable, to prevent him from summoning his helper.		|only if Mage
Click Here to Continue |confirm |q 1249 |future
step
talk Mikhail##4963
.tip Inside the building.
turnin The Missing Diplomat##1248 |goto Wetlands 10.60,60.77
accept The Missing Diplomat##1249 |goto Wetlands 10.60,60.77
step
kill Tapoke "Slim" Jahn##4962
.tip He stealths inside the inn and walks out of the building to this location.
.tip He unstealths and tries to run away, so you will have to attack him.
.tip He will summon another enemy to help him fight.
.tip Crowd control or ignore his helper, and just focus on killing Tapoke "Slim" Jahn as quickly as you can.
.tip He will surrender at ~15% health and his helper will disappear.
.tip As a Mage, you can try to Sheep him immediately once he becomes attackable, to prevent him from summoning his helper.		|only if Mage
.tip If you have trouble, try to find someone to help you.
Defeat Tapoke Jahn |q 1249/1 |goto Wetlands 10.79,59.60
step
Enter the building |goto Wetlands,10.79,59.77,10 |walk
talk Mikhail##4963
.tip Inside the building.
turnin The Missing Diplomat##1249 |goto Wetlands 10.60,60.77
step
talk Tapoke "Slim" Jahn##4962
.tip Inside the building.
accept The Missing Diplomat##1250 |goto Wetlands 10.54,60.26
step
talk Mikhail##4963
.tip Inside the building.
turnin The Missing Diplomat##1250 |goto Wetlands 10.60,60.77
accept The Missing Diplomat##1264 |goto Wetlands 10.60,60.77
step
talk Innkeeper Helbrek##1464
.tip Inside the building.
home Deepwater Tavern |goto Wetlands 10.70,60.95
step
Leave the building |goto Wetlands,10.79,59.77,10 |walk |only if subzone("Deepwater Tavern")
talk Bethaine Flinthammer##10046
.tip Stable your permanent pet.
.tip You are about to tame a temporary pet soon, so you can learn "Bite 5".
Click Here to Continue |confirm |goto Wetlands 10.53,59.73 |q 564 |future
|only if Hunter
step
NOTE:
Tame a Plains Creeper
.tip Use your "Tame Beast" ability on a Plains Creeper.
.tip They look like grey spiders around this area.
.tip Make sure to tame a level 32 Plains Creeper.
Learn the "Bite 5" Pet Ability
.tip Kill enemies around this area until you see a message in your chat saying you learned "Bite 5".
.tip You will teach "Bite 5" to your permanent pet soon.
Click Here to Continue |confirm |goto Arathi Highlands 42.24,58.83 |q 564 |future
|only if Hunter
]]
)
