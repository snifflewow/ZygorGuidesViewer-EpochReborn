local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Azshara (53-54)',
  {},
  [[
step
talk Islen Waterseer##5901
turnin Seeking Spiritual Aid##5158 |goto The Barrens 65.83,43.78
step
Watch the dialogue
talk Islen Waterseer##5901
accept Cleansed Water Returns to Felwood##5159 |goto The Barrens 65.83,43.78
step
Enter the building |goto The Barrens,62.08,39.26,15 |walk
talk Innkeeper Wiley##6791
.tip Inside the building.
home Ratchet |goto The Barrens 62.05,39.41
step
Enter the building |goto The Barrens,62.52,38.58,10 |walk
talk Liv Rizzlefix##8496
.tip Inside the building.
accept Volcanic Activity##4502 |goto The Barrens 62.45,38.74
step
talk Fuzruckle##3496
.tip Desposit these items into the bank.
bank Eridan's Vial##11682 |goto The Barrens 62.64,37.42 |q 4441 |future
bank Filled Cursed Ooze Jar##11947 |goto The Barrens 62.64,37.42 |q 4512 |future
.tip You should have 6 of these.
bank Filled Tainted Ooze Jar##11949 |goto The Barrens 62.64,37.42 |q 4512 |future
.tip You should have 6 of these.
bank Moontouched Feather##12383 |goto The Barrens 62.64,37.42 |q 978 |future
.tip You should have 10 of these.
bank Purified Moonwell Water##12906 |goto The Barrens 62.64,37.42 |q 5159 |future
bank Videre Elixir##11243 |goto The Barrens 62.64,37.42 |q 3909 |future
.tip You should have 3 of these.
step
Kill enemies around this area
.tip You are about to go back to Un'Goro Crater soon, and have to fight higher level enemies, so being a level higher is important.
.tip This is the last long grind you will have to do before reaching level 60.
.tip These Blood Elves drop Runecloth, and you will need 240 Runecloth for cloth turn ins in the major cities, for a quick burst of xp.
.tip If you'd rather run dungeons to reach level 54, skip this step and run dungeons after you hearth back to Ratchet soon.
.tip Blood Elf Reclaimers are ranged attackers that deal heavy damage.	|only if hardcore
.tip Enemies may bunch together so be careful.				|only if hardcore
.tip Watch for patrols and respawns while in the area.			|only if hardcore
ding 54 |goto Azshara 56.94,29.30
It's a long run, but you can get more arrows at [12.00,78.38]		|only if Hunter
|only if not hardcore
]]
)
