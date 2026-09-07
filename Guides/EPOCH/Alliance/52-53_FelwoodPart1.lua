local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Felwood Part 1 (52-53)',
  {
    image = ZGV.IMAGESDIR .. 'Felwood',
    condition_suggested = function()
      return level >= 52 and level <= 53 and not completedq(5882)
    end,
    next = 'Leveling Guides\\Feralas (53-53)',
    hardcore = true,
  },
  [[
step
_NOTE:_
Tame a Felpaw Ravager
|tip Use your "Tame Beast" ability on a Felpaw Ravager.
|tip They look like grey wolves around this area.
Learn the "Bite 7" Pet Ability
|tip Kill enemies around this area until you see a message in your chat saying you learned "Bite 7".
|tip You will teach "Bite 7" to your permanent pet soon.
Click Here to Continue |confirm |goto Felwood 62.21,19.91 |q 978
|only if Hunter
step
talk Azzleby##11119
|tip Abandon your temporary pet and get your permanent pet from the stable.
|tip Teach "Bite 7" to your permanent pet.
Click Here to Continue |confirm |goto Winterspring 60.39,37.92 |q 978
|only if Hunter
step
talk Arathandris Silversky##9528
|tip She walks around this area.
turnin Cleansing Felwood##4101 |goto Felwood 54.15,86.83
step
talk Arathandris Silversky##9528
|tip She walks around this area.
Select _"I need a Cenarion beacon."_
collect Cenarion Beacon##11511 |goto Felwood 54.15,86.83
step
Follow the road south to Emerald Sanctuary |goto Felwood 60.92,15.98 < 50 |only if walking and subzone("Talonbranch Glade")
talk Greta Mosshoof##10922
|tip She walks around this area.
turnin Collection of the Corrupt Water##5157 |goto Felwood 51.21,82.11
accept Seeking Spiritual Aid##5158 |goto Felwood 51.21,82.11
step
Enter the building |goto Felwood 51.26,81.70 < 10 |walk
talk Eridan Bluewind##9116
|tip Inside the building.
turnin Flute of Xavaric##939 |goto Felwood 51.35,81.51
accept Felbound Ancients##4441 |goto Felwood 51.35,81.51
turnin Further Corruption##4906 |goto Felwood 51.35,81.51
step
talk Taronn Redfeather##10921
|tip Inside the building.
turnin Verifying the Corruption##5156 |goto Felwood 50.89,81.62
step
Follow the path |goto Felwood 49.02,89.29 < 50 |only if walking and not subzone("Deadwood Village")
Kill enemies around this area
|tip Watch for enemies grouped at the camps here as they may pull in groups.	|only if hardcore
|tip Deadwood Gardeners may reduce the healing on you.				|only if hardcore
|tip Deadwood Pathfinders are ranged attackers.					|only if hardcore
collect 6 Corrupted Soul Shard##11515 |goto Felwood 48.32,92.99
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 53.
|tip Grinding a bit here will reduce the amount you have to grind all at once later.
|tip Watch for enemies grouped at the camps here as they may pull in groups.	|only if hardcore
|tip Deadwood Gardeners may reduce the healing on you.				|only if hardcore
|tip Deadwood Pathfinders are ranged attackers.					|only if hardcore
ding 53 |goto Felwood 48.32,92.99
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
talk Grazle##11554
|tip Each turnin is 5 feathers, you should have enough to do multiple turnins.
accept Feathers for Grazle##8466 |goto Felwood 51.00,85.00 |instant
|only if itemcount(21377) >= 5
step
Leave Deadwood Village |goto Felwood 49.56,88.70 < 50 |only if walking and subzone("Deadwood Village")
talk Arathandris Silversky##9528
|tip She walks around this area.
|tip This will award you with Cenarion Plant Salve.
|tip You can use these to cleanse 'Corrupted Songflower' around the zone for a large buff.
|tip It is heavily recommended to cleanse one anytime you see it.
]]
)
