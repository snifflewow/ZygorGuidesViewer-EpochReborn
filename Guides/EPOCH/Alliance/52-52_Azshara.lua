local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Azshara (52-52)',
  {
    next = 'Leveling Guides\\Felwood (52-52)',
  },
  [[
step
talk Jarrodenus##12577
fpath Talrendis Point |goto Azshara 11.90,77.59
|only if hardcore
step
talk Loh'atu##11548
accept Spiritual Unrest##5535 |goto Azshara 11.37,78.16
accept A Land Filled with Hatred##5536 |goto Azshara 11.37,78.16
stickystart "Kill_Highborne_Lichlings"
step
Follow the path up |goto Azshara,13.45,73.32,30 |only if walking
kill 6 Highborne Apparition##6116 |q 5535/1 |goto Azshara 14.66,72.47
.tip Watch for patrols and respawns while in the area.	|only if hardcore
You can find more around [17.21,68.82]
step
label "Kill_Highborne_Lichlings"
kill 6 Highborne Lichling##6117 |q 5535/2 |goto Azshara 17.21,68.82
.tip Watch for patrols and respawns while in the area.	|only if hardcore |notinsticky
You can find more around [14.66,72.47]
stickystart "Kill_Haldarr_Trickster"
stickystart "Kill_Haldarr_Felsworns"
step
Follow the path up |goto Azshara,19.36,62.52,30 |only if walking
kill 6 Haldarr Satyr##6125 |q 5536/1 |goto Azshara 19.82,61.38
.tip Watch for respawns while in the area.	|only if hardcore
step
label "Kill_Haldarr_Trickster"
kill 2 Haldarr Trickster##6126 |q 5536/2 |goto Azshara 19.82,61.38
.tip Watch for respawns while in the area.	|only if hardcore |notinsticky
step
label "Kill_Haldarr_Felsworns"
kill 2 Haldarr Felsworn##6127 |q 5536/3 |goto Azshara 19.82,61.38
.tip Watch for respawns while in the area.	|only if hardcore |notinsticky
step
talk Loh'atu##11548
turnin Spiritual Unrest##5535 |goto Azshara 11.37,78.17
turnin A Land Filled with Hatred##5536 |goto Azshara 11.37,78.17
step
talk Brinna Valanaar##14301
.tip Buy enough ammo to fill your ammo bag, plus 12-15 extra stacks.
.tip You will be questing a while without easy access to an ammo vendor.
Visit the Vendor |vendor Brinna Valanaar##14301 |goto Azshara 12.00,78.38 |q 4101 |future
|only if Hunter
]]
)
