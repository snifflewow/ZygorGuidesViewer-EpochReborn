local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Western Plaguelands (51-52)',
  {
    image = ZGV.IMAGESDIR .. 'Western Plaguelands',
    condition_suggested = function()
      return level >= 51 and level <= 52 and not completedq(4493)
    end,
    next = 'Leveling Guides\\Azshara (52-52)',
    hardcore = true,
  },
  [[
step
talk Commander Ashlam Valorfist##10838
turnin A Call to Arms: The Plaguelands!##5090 |goto Western Plaguelands 42.70,84.03
accept Clear the Way##5092 |goto Western Plaguelands 42.70,84.03
stickystart "Kill_Slavering_Ghouls"
step
kill 10 Skeletal Flayer##1783 |q 5092/1 |goto Western Plaguelands 48.51,81.13
|tip Watch for respawns while in the area.	|only if hardcore
You can find more around [50.64,77.01]
step
label "Kill_Slavering_Ghouls"
kill 10 Slavering Ghoul##1791 |q 5092/2 |goto Western Plaguelands 48.51,81.13
|tip Watch for respawns while in the area.	|only if hardcore |notinsticky
You can find more around [50.64,77.01]
step
Kill enemies around this area
|tip You should already be pretty close to reaching level 52.
|tip Getting this far into level 51 will allow you to reach level 52 after turning in quests soon.
|tip Watch for respawns while in the area.	|only if hardcore
ding 51,149000 |goto Western Plaguelands 48.51,81.13
You can find more around [50.64,77.01]
step
talk Commander Ashlam Valorfist##10838
turnin Clear the Way##5092 |goto Western Plaguelands 42.70,84.03
accept The Scourge Cauldrons##5215 |goto Western Plaguelands 42.70,84.03
step
talk High Priestess MacDonnell##11053
turnin The Scourge Cauldrons##5215 |goto Western Plaguelands 42.97,84.50
step
talk Erelas Ambersky##7916
|tip Inside the building.
turnin Favored of Elune?##3661 |goto Teldrassil 55.50,92.05
accept Moontouched Wildkin##978 |goto Teldrassil 55.50,92.05
step
talk Daryn Lightwind##7907
|tip Upstairs inside the building.
turnin The Super Snapper FX##2944 |goto Teldrassil 55.41,92.23
accept Return to Troyas##2943 |goto Teldrassil 55.41,92.23
step
talk Garryeth##4209
|tip Inside the building.
|tip Collect these items from the bank.
collect Insect Analysis Report##8594 |goto Darnassus 39.60,41.98 |q 162
collect Linken's Training Sword##11133 |goto Darnassus 39.60,41.98 |q 3908
collect Bloodpetal##11316 |goto Darnassus 39.60,41.98 |q 4142
step
Enter the building |goto Darnassus 39.04,76.77 < 15 |walk
talk Gracina Spiritmight##7740
|tip Upstairs inside the building.
turnin Rise of the Silithid##162 |goto Darnassus 41.84,85.62
accept March of the Silithid##4493 |goto Darnassus 41.84,85.62
step
talk Innkeeper Shaussiy##6737
|tip Inside the building.
home Auberdine |goto Darkshore 37.04,44.13
]]
)
