local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Winterspring (52-52)',
  {
    next = 'Leveling Guides\\Felwood Part 1 (52-53)',
  },
  [[
step
Enter the tunnel |goto Felwood,65.13,8.01,10 |walk |only if not zone("Moonglade")
Run down the stairs and follow the path |goto Felwood,65.36,2.34,10 |walk |only if not zone("Moonglade")
Leave the tunnel |goto Moonglade,35.75,72.48,10 |walk |only if not zone("Moonglade")
talk Sindrayl##10897
fpath Moonglade |goto Moonglade 48.10,67.34
step
talk Keeper Remulos##11832
turnin Seed of Life##7066 |goto Moonglade 36.18,41.82
|only if readyq(7066)
step
Enter the tunnel |goto Moonglade,35.74,72.49,10 |walk |only if not zone("Winterspring")
Follow the path |goto Felwood,66.26,2.90,10 |walk |only if not zone("Winterspring")
Leave the tunnel |goto Felwood,68.40,5.84,10 |walk |only if not zone("Winterspring")
talk Donova Snowden##9298
turnin It's a Secret to Everybody##3908 |goto Winterspring 31.27,45.16
step
Watch the dialogue
talk Donova Snowden##9298
accept The Videre Elixir##3909 |goto Winterspring 31.27,45.16
step
click Moontouched Feather+
.tip They look like large blue feathers on the ground around this area.
.tip Gather these while heading east to Everlook.
collect 10 Moontouched Feather##12383 |q 978/1 |goto Winterspring 31.35,45.53
You can find more at: |notinsticky
[30.95,47.02]
[29.39,46.67]
[30.18,45.24]
[30.30,44.03]
[31.42,43.31]
[32.02,44.25]
[32.79,44.36]
[33.07,44.01]
[34.85,43.20]
step
talk Azzleby##11119
.tip Avoid higher level enemies while following the road to this location.
.tip Stable your permanent pet.
.tip You are about to tame a temporary pet, so you can learn "Bite 7".
Click Here to Continue |confirm |goto Winterspring 60.39,37.92 |q 978
|only if Hunter
step
talk Maethrya##11138
.tip Avoid higher level enemies while following the road to this location.
fpath Everlook |goto Winterspring 62.33,36.61
]]
)
