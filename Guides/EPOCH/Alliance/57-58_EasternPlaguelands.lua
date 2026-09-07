local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then
  return
end
if UnitFactionGroup('player') ~= 'Alliance' then
  return
end
ZygorGuidesViewer:RegisterGuide(
  'Leveling Guides\\Eastern Plaguelands (57-58)',
  {
    next = 'Leveling Guides\\Western Plaguelands (58-59)',
  },
  [[
step
Cross into Eastern Plaguelands and follow the river north |goto Western Plaguelands,69.30,45.04,50 |only if walking and zone("Western Plaguelands")
talk Tirion Fordring##1855
.tip He walks around this area.
accept Demon Dogs##5542 |goto Eastern Plaguelands 7.56,43.70
accept Blood Tinged Skies##5543 |goto Eastern Plaguelands 7.56,43.70
accept Carrion Grubbage##5544 |goto Eastern Plaguelands 7.56,43.70
stickystart "Kill_Plaguebats"
stickystart "Kill_Plaguehound_Runts"
stickystart "Collect_Slabs_Of_Carrion_Worm_Meat"
step
click Mangled Human Remains
.tip It looks like a human skeleton on the ground.
.tip Do not get too close to the building.	|only if hardcore
collect SI:7 Insignia (Turyen)##16002 |q 6185/3 |goto Eastern Plaguelands 28.81,74.88
step
Uncover the Blightcaller |q 6185/4 |goto Eastern Plaguelands 27.28,74.96
.tip Be careful to stay out of range of the elite enemies nearby.
step
click Mangled Human Remains
.tip It looks like a human skeleton on the ground.
.tip Be careful to stay out of range of the elite enemies nearby.
collect SI:7 Insignia (Fredo)##16001 |q 6185/2 |goto Eastern Plaguelands 27.28,74.96
step
click Mangled Human Remains
.tip It looks like a human skeleton on the ground.
collect SI:7 Insignia (Rutger)##16003 |q 6185/1 |goto Eastern Plaguelands 28.81,79.85
step
talk Pamela Redpath##10926
.tip She walks around this area inside this crumbled house.
turnin Sister Pamela##5601 |goto Eastern Plaguelands 36.45,90.80
accept Pamela's Doll##5149 |goto Eastern Plaguelands 36.45,90.80
stickystop "Kill_Plaguebats"
stickystop "Kill_Plaguehound_Runts"
stickystop "Collect_Slabs_Of_Carrion_Worm_Meat"
stickystart "Collect_Pamelas_Dolls_Left_Side"
stickystart "Collect_Pamelas_Dolls_Right_Side"
step
click Pamela's Doll's Head##176116
.tip It looks like a brown ball, with two X's for eyes, with flies buzzing around it.
.tip It can be in any of the 3 buildings around this area.
.tip Enemies may spawn after interacting with the doll.	|only if hardcore
collect Pamela's Doll's Head##12886 |goto Eastern Plaguelands 39.07,91.53 |q 5149
step
label "Collect_Pamelas_Dolls_Left_Side"
click Pamela's Doll's Left Side##176142
.tip It looks like a brown half of a doll, with one arm and one leg, with flies buzzing around it.
.tip It can be in any of the 3 buildings around this area.
.tip Enemies may spawn after interacting with the doll.	|only if hardcore
collect Pamela's Doll's Left Side##12887 |goto Eastern Plaguelands 39.07,91.53 |q 5149
step
label "Collect_Pamelas_Dolls_Right_Side"
click Pamela's Doll's Right Side##176143
.tip It looks like a brown half of a doll, with one arm and one leg, with flies buzzing around it.
.tip It can be in any of the 3 buildings around this area.
.tip Enemies may spawn after interacting with the doll.	|only if hardcore
collect Pamela's Doll's Right Side##12888 |goto Eastern Plaguelands 39.07,91.53 |q 5149
step
use Pamela's Doll's Head##12886
collect Pamela's Doll##12885 |q 5149/1
step
talk Pamela Redpath##10926
.tip She walks around this area inside this crumbled house.
turnin Pamela's Doll##5149 |goto Eastern Plaguelands 36.45,90.80
accept Auntie Marlene##5152 |goto Eastern Plaguelands 36.45,90.80
accept Uncle Carlin##5241 |goto Eastern Plaguelands 36.45,90.80
stickystart "Kill_Plaguehound_Runts"
stickystart "Collect_Slabs_Of_Carrion_Worm_Meat"
step
label "Kill_Plaguebats"
kill 30 Plaguebat##8600 |q 5543/1 |goto Eastern Plaguelands 43.24,82.95
You can find more around: |notinsticky
[42.24,69.81]
[35.16,74.32]
[27.42,69.07]
[19.99,68.52]
[18.56,77.87]
[33.76,82.90]
step
label "Kill_Plaguehound_Runts"
kill 20 Plaguehound Runt##8596 |q 5542/1 |goto Eastern Plaguelands 43.24,82.95
You can find more around: |notinsticky
[42.24,69.81]
[27.42,69.07]
[19.99,68.52]
[18.56,77.87]
[33.76,82.90]
step
kill 5 Plaguehound##8597 |q 5542/2 |goto Eastern Plaguelands 70.01,68.38
You can find more around: |notinsticky
[76.41,66.59]
[71.11,56.12]
stickystop "Collect_Slabs_Of_Carrion_Worm_Meat"
step
talk Caretaker Alen##11038
.tip He walks around this area.
accept Zaeldarr the Outcast##6021 |goto Eastern Plaguelands 79.54,63.77
accept The Restless Souls##5281 |goto Eastern Plaguelands 79.54,63.77
step
talk Duke Nicholas Zverenhoff##11039
turnin Duke Nicholas Zverenhoff##6030 |goto Eastern Plaguelands 81.43,59.82
step
talk Carlin Redpath##11063
turnin Uncle Carlin##5241 |goto Eastern Plaguelands 81.52,59.77
accept Defenders of Darrowshire##5211 |goto Eastern Plaguelands 81.52,59.77
step
talk Khaelyn Steelwing##12617
fpath Light's Hope Chapel |goto Eastern Plaguelands 81.63,59.28
stickystart "Kill_Frenzied_Plaguehounds"
stickystart "Collect_Slabs_Of_Carrion_Worm_Meat"
step
talk Aurora Skycaller##10304
turnin Troubled Spirits of Kel'Theril##5245 |goto Eastern Plaguelands 53.51,22.00
stickystart "Darrowshire_Spirits"
step
Destroy This Item:
.tip It is no longer needed.
trash Jaron's Pick##12891
step
Kill enemies around this area
.tip You should already be pretty close to reaching level 58.
ding 58 |goto Eastern Plaguelands 66.88,40.62
step
label "Kill_Frenzied_Plaguehounds"
kill 5 Frenzied Plaguehound##8598 |q 5542/3 |goto Eastern Plaguelands 62.63,47.95
.tip When fighting near the road, watch for a group of elite patrols and avoid them.	|only if hardcore
You can find more around: |notinsticky
[51.17,43.24]
[49.69,35.97]
step
click Large Termite Mound##177464+
.tip They look like large brown and white stones cracked open with green goo leaking out of the top of them around this area.
.tip When fighting near the road, watch for a group of elite patrols and avoid them.	|only if hardcore
collect 100 Plagueland Termites##15043 |q 5903/1 |goto Eastern Plaguelands 45.90,34.10
You can find more around: |notinsticky
[42.19,38.20]
[42.84,34.28]
[40.61,31.38]
[36.03,31.81]
[32.08,35.71]
[26.47,37.57]
[25.22,37.89]
[28.46,32.49]
[26.16,29.78]
[23.87,25.24]
[22.45,21.52]
[20.40,27.00]
step
label "Darrowshire_Spirits"
Kill ghouls around this area
.tip Only enemies that look like ghouls will count.
.tip They share spawn points with other undead in the area.
talk Darrowshire Spirit##11064+
.tip They appear after you kill the ghouls.
Free #15# Darrowshire Spirits |q 5211/1 |goto Eastern Plaguelands 66.88,40.62
You can find more around: |notinsticky
[42.19,38.20]
[42.84,34.28]
[40.61,31.38]
[36.03,31.81]
[32.08,35.71]
[26.47,37.57]
[25.22,37.89]
[28.46,32.49]
[26.16,29.78]
[23.87,25.24]
[22.45,21.52]
[20.40,27.00]
step
Enter the building |goto Eastern Plaguelands,14.59,33.47,10 |walk
talk Egan##11140
.tip Inside the building.
turnin The Restless Souls##5281 |goto Eastern Plaguelands 14.45,33.74
step
talk Augustus the Touched##12384
.tip Inside the building.
accept Augustus' Receipt Book##6164 |goto Eastern Plaguelands 14.45,33.48
step
Enter the building |goto Eastern Plaguelands,17.56,33.03,10 |walk
click Augustus' Receipt Book
.tip Upstairs inside the building.
collect Augustus' Receipt Book##15884 |q 6164/1 |goto Eastern Plaguelands 17.43,31.09
step
Enter the building |goto Eastern Plaguelands,14.59,33.47,10 |walk
talk Augustus the Touched##12384
.tip Inside the building.
turnin Augustus' Receipt Book##6164 |goto Eastern Plaguelands 14.45,33.48
step
label "Collect_Slabs_Of_Carrion_Worm_Meat"
kill Carrion Grub##8603+
.tip Go out of your way to kill grubs, the drop rate can be bad.
collect 15 Slab of Carrion Worm Meat##13853 |q 5544/1 |goto Eastern Plaguelands 43.24,82.95
You can find more around: |notinsticky
[42.24,69.81]
[35.16,74.32]
[27.42,69.07]
[19.99,68.52]
[18.56,77.87]
[33.76,82.90]
step
Follow the path |goto Eastern Plaguelands,11.93,61.49,40 |only if walking
talk Tirion Fordring##1855
.tip He walks around this area.
.tip Run all the way around the mountain.
.tip You will die if you go through the cave, run all the way around. |only if hardcore
turnin Demon Dogs##5542 |goto Eastern Plaguelands 7.57,43.70
turnin Blood Tinged Skies##5543 |goto Eastern Plaguelands 7.57,43.70
turnin Carrion Grubbage##5544 |goto Eastern Plaguelands 7.57,43.70
accept Redemption##5742 |goto Eastern Plaguelands 7.57,43.70
step
talk Tirion Fordring##1855
.tip He walks around this area.
.tip Type "/sit" into your chat, or press X.
.tip You must be sitting for the dialogue option to appear when you talk to him.
Select _"I am ready to hear your tale, Tirion."_
Listen to Tirion's Tale |q 5742/1 |goto Eastern Plaguelands 7.57,43.70
step
Destroy These Items:
.tip They are no longer needed.
trash Slab of Carrion Worm Meat##13853 |goto Eastern Plaguelands 7.57,43.70
step
talk Tirion Fordring##1855
.tip He walks around this area.
turnin Redemption##5742 |goto Eastern Plaguelands 7.57,43.70
step
Enter the crypt |goto Eastern Plaguelands,27.86,85.48,10 |walk
kill Zaeldarr the Outcast##12250
.tip Downstairs inside the crypt.
collect Zaeldarr's Head##15785 |q 6021/1 |goto Eastern Plaguelands 27.46,84.88
step
talk Caretaker Alen##11038
.tip He walks around this area.
turnin Zaeldarr the Outcast##6021 |goto Eastern Plaguelands 79.54,63.77
step
talk Carlin Redpath##11063
turnin Defenders of Darrowshire##5211 |goto Eastern Plaguelands 81.52,59.76
]]
)
