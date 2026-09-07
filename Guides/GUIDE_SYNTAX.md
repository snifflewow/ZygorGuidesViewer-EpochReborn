# Guide Syntax Handbook

**ZygorGuidesViewer — Epoch Reborn Edition** · WoW 3.3.5a

Written by reading `Parser.lua`, `Goal.lua` and `Step.lua` directly. Where
behaviour is surprising, the file and function are named so you can check it.

---

## Quick start

| I want to… | Write |
|---|---|
| Talk to an NPC | `talk Kaltunk##10176` |
| Take a quest | `accept Your Place In The World##4641 \|goto Durotar 43.33,68.62` |
| Hand one in | `turnin Cutting Teeth##788 \|goto Durotar 42.06,68.33` |
| Kill things for a quest | `kill 10 Mottled Boar##3098 \|q 788/1` |
| Loot a quest item | `collect 10 Sharp Tiger Claw##65764 \|q 28759/1` |
| Learn a spell | `learnspell Battle Shout##6673 \|goto Durotar 42.89,69.43` |
| Sell junk | `Sell your junk \|vendor Duokna##3158 \|goto Durotar 42.59,67.35` |
| Make the player walk somewhere | `Enter the cave \|goto Durotar 42.28,68.43 \|c` |
| Show it to one class only | `only Warrior` |
| Wait for a click | `Click to Continue \|confirm` |

---

## 1 · File skeleton

```lua
local ZygorGuidesViewer = ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup('player') ~= 'Horde' then return end

ZygorGuidesViewer:RegisterGuide(
  'Epoch\\Starting Zones\\Troll (1-6)',        -- \\ separates menu folders
  { next = 'Epoch\\Starting Zones\\Orc/Troll - Durotar (6-12)' },
  [[
  author Huge
  defaultfor Troll
  startlevel 1
  map Durotar
  step
  ...
]])
```

Then register it in `Guides/Autoload.xml`, or it will not load.

### Header keywords

| Keyword | Meaning |
|---|---|
| `author` | Credit line |
| `defaultfor` | Race this guide is the default for |
| `startlevel` | Level the guide begins at |
| `map` | Default zone for coordinates below |

### Options table

| Key | Meaning |
|---|---|
| `next` | Guide to chain to |
| `condition_suggested` | Function deciding when to suggest this guide |

---

## 2 · The one rule that matters

**A step ends when every *completable* goal in it is done.**

Everything else is a consequence of that. So the important question for any line
you write is: *does this line hold the step open, or not?*

### Lines that hold a step open

```
accept · turnin · kill · get · collect · buy · use · trash · bank
learnspell · learn · learnpet · skill · skillmax · ding · level
fpath · home · vendor · confirm · invehicle · outvehicle
havebuff · nobuff · rep · achieve · create · condition · complete · path
```

### Lines that do not

```
info · .tip · plain text · click · clicknpc · bracketed [x,y]
```

These display, and some are clickable, but they never block.

### `goto` is the special case

| Situation | Holds the step? |
|---|---|
| `goto` alongside other actions, no `\|c` | No - decoration |
| `goto` alongside other actions, **with `\|c`** | **Yes** |
| Step made *only* of `goto` lines | Yes, all of them |
| Bracketed `[x,y]` hint | Never |

```
step
kill 8 Jinxed Troll##47146 |q 28760/1
Head down the hill when done |goto Durotar 73.60,56.24 |c
```

---

## 3 · Actions

### Quests
| Write | Completes when |
|---|---|
| `accept Name##ID` | quest enters your log |
| `turnin Name##ID` | quest leaves your log / is flagged done |

### NPCs and world
| Write | Completes when |
|---|---|
| `talk Name##ID` | you talk to them |
| `kill N Name##ID` | **needs `\|q` or `\|killcount`** — see Pitfalls |
| `vendor Name##ID` | you right-click the line, or via `\|q` |
| `trainer Name##ID` | - |
| `click Object##ID` | you click the line (passive) |
| `clicknpc Name##ID` | you click the line (passive) |

### Items
| Write | Completes when |
|---|---|
| `get Name##ID` | it's in your bags (or `\|q` is satisfied) |
| `collect 6 Name##ID` | you hold 6 |
| `buy Name##ID` | bought item |
| `use Name##ID` | used item |
| `trash Name##ID` | destroyed item |

### Character
| Write | Notes |
|---|---|
| `learnspell Name##ID` | trainer spells |
| `learn Name##ID` | recipes |
| `ding 5` / `ding 5,955` | level, optionally level+XP |
| `home Razor Hill` | bind hearthstone |
| `fpath Orgrimmar` | discover a flight path |
| `cast Name##ID` | casts said spell |
| `invehicle Name##ID` | boarding a cart, etc. |

### Text
| Write | Renders as |
|---|---|
| `Any free text` | a normal step line |
| `info Some note` | an indented note |
| `.tip Some hint` | an indented hint |

---

## 4 · Coordinates

| Form | Use |
|---|---|
| `\|goto 43.33,68.62` | current map |
| `\|goto Durotar 43.33,68.62` | explicit zone |
| `\|goto Durotar,43.33,68.62,0.5` | zone + arrival radius |
| `\|goto Durotar/0 43.33,68.62` | zone with floor |

> **Commas all the way when you add a radius.**
> `|goto Durotar 43.33,68.62,0.5` misparses — `ParseMapXYDist` matches "Map,X,Y"
> first and reads `"Durotar 43.33"` as the zone. Result: *"Unable to create
> waypoint"* spam in chat.

> **`< 30` does nothing.** Silently discarded. Use the third comma value.

### Bracketed hints

```
He wanders between: |notinsticky
[54.08,76.50]
[54.38,74.39]
```

Rendered, clickable, never blocking. Don't add `|c`.

---

## 5 · Directives

### Completion
| Directive | Meaning |
|---|---|
| `\|q 788` | link to quest 788 |
| `\|q 788/1` | link to objective 1 |
| `\|c` | make a `goto` block until reached |
| `\|or` | group alternatives — any one satisfies the group |
| `\|confirm` | wait for a click |
| `\|confirm FlagName` | click also toggles `guideflag("FlagName")` |
| `\|complete <expr>` | custom expression |
| `\|count 5` | override required count |
| `\|killcount` | count kills without a quest |
| `\|future` | may not be available yet |

### Display
| Directive | Meaning |
|---|---|
| `\|tip text` | inline hint |
| `\|notinsticky` | hide while the step is sticky |
| `\|noordinal` | no step number |
| `\|title Name` | name shown on the waypoint |
| `\|popuptext text` | popup; `\n` makes a line break |

### Movement
`|walk` · `|noway` · `|notravel` · `|nohearth` · `|zombiewalk`

---

## 6 · Conditions

### `only` vs `only if` — these are different features

| Write | What happens |
|---|---|
| `only Warrior` | race/class list only |
| `only Warrior, Shaman` | race/class list only |
| `\|only if Warrior and level >= 4` | full boolean expression |

> `only Warrior and itemcount(2901) == 0` **silently fails.** Without `if`, the
> whole string goes to the race/class matcher, matches nothing, and the line
> disappears forever. Operators or functions ⇒ you need `if`.

### Placement changes the scope

| Where | Applies to |
|---|---|
| Own line | the whole step |
| End of a content line | that line only |

```
step
talk Tar'sere##47082
learnspell Battle Shout##6673 |goto Durotar 72.51,46.77
only Warrior                                    ← whole step, Warriors only
```

```
step
talk Hunter Bon'juru##47101
turnin Tidal Menace##28765 |only if readyq(28765)   ← this line only
accept The Naga Menace##28767
```

> **Careful with step-level `readyq()`.** The moment you turn the quest in it
> goes false and the whole step vanishes, taking any un-accepted follow-up with
> it. Use `readyq(id) or completedq(id)`, or put it inline on the `turnin`.

### Functions

| Function | Returns |
|---|---|
| `haveq(id)` | quest is in your log |
| `readyq(id)` | quest is complete and ready to turn in |
| `completedq(id)` | quest has been turned in |
| `itemcount(id)` | how many you hold |
| `knowspell(id)` | spell known |
| `hasbuff(id)` | buff active |
| `skill("First Aid")` | skill level, 0 if unlearned |
| `zone("Durotar")` / `subzone(...)` | location |
| `guideflag("name")` | flag set by `\|confirm name` |
| `warlockpet("Imp")` | pet summoned |
| `GetMoney()` | copper |

Bare variables: class and race names, `level`, `hardcore`, `walking`, `isdead`.

---

## 7 · Sticky groups

Objectives you pick up *while doing other things* — herbs, drops, apples.

```
step
talk Foreman Thazz'ril##11378
accept Lazy Peons##5441 |goto Durotar 44.62,68.64
stickystart "Collect_Cactus_Apples"

step
...other steps happen here...

step
label "Collect_Cactus_Apples"
click Cactus Apple##171938+
collect 6 Cactus Apple##11583 |q 4402/1
.tip Green cactuses with small red balls, on the ground.

step
stickystop "Collect_Cactus_Apples"
```

| Keyword | Meaning |
|---|---|
| `stickystart "Name"` | start showing that group |
| `label "Name"` | the step the group displays |
| `stickystop "Name"` | stop showing it |

The quoted name must match **exactly** in all three.

---

## 8 · Routes — `path`

For a circuit: peon-waking rounds, herb loops, mob-pull routes.

```
step
title Lazy Peon Route
use the Foreman's Blackjack##16114
Awaken 5 Peons |q 5441/1
map Durotar/0
path loop on; dist 35
path 43.79,57.72  42.84,57.34  41.18,58.84
path 40.91,60.43  38.86,61.83
```

| Option | Values | Meaning |
|---|---|---|
| `follow` | `loose` *(default)* / `strict` / `strictbounce` | see below |
| `loop` | `on` / `off` | restart at point 1 after the last |
| `dist` | number | arrival radius |

| Mode | Behaviour |
|---|---|
| `loose` | starts at the point **nearest you**; reaching *any* point targets the next. Best for farming circuits. |
| `strict` | points must be reached in order. |
| `strictbounce` | reverses at the end instead of jumping to the start. |

`ants` and `markers` parse but do nothing — this fork moves one arrow rather
than drawing the whole route.

---

## 9 · Pitfalls

| Symptom | Cause | Fix |
|---|---|---|
| Step never advances | bare `kill` with no `\|q` | add `\|q` or `\|killcount` |
| Fast-forward always stops here | `get` on a consumed item | add `\|q` |
| A line vanished forever | `only` used with an expression | use `only if` |
| *"Unable to create waypoint"* spam | `\|goto Zone x,y,dist` | `\|goto Zone,x,y,dist` |
| Whole step disappears mid-way | step-level `readyq()` | `readyq(id) or completedq(id)` |
| `.tip` still shows after hiding its line | tips are independent goals | give each tip the same condition |
| `_NOTE_` renders literally | no underscore formatting | `\|cffffff00NOTE\|r` |
| `equip` line does nothing | not implemented in the parser | use free text |
| `\|gossip 12345` does nothing | parsed and discarded | write the dialogue option as text |

**Why bare `kill` breaks.** `kill` is completeable, but `Goal.lua:IsComplete`
only handles it when `usekillcount` is set. Otherwise it returns `false, false`
— status `impossible` — which blocks the step permanently.

**Why consumables break fast-forward.** `get` with no `|q` checks your bags.
Once the item is used or handed in, it can never report complete again.

**Actions that stop right-click fast-forward** (`Goal.lua:IsAuxiliary`):
`accept`, `confirm`, `ding`, `get`, `goal`, `kill`, `turnin`.

---

## 10 · A full step, annotated

```
step
talk Daz'tiro##46718
turnin Thievin' Crabs##28723 |goto 70.90,45.92
accept Glyphic Tablet##28728 |goto 70.90,45.92 |only Mage
accept Simple Tablet##28742 |goto 70.90,45.92 |only Warrior
accept Banana Bonanza##28757 |goto 70.90,45.92
```
*One NPC, one turn-in, class-specific pickups, one shared pickup.*

```
step
kill Juvenile Tiger##47102+
Pickup Bananas
.tip Around the trees.
collect 10 Sharp Tiger Claw##65764 |q 28759/1
collect 10 Sun-Ripened Banana##65762 |q 28757/1
```
*Two collections in parallel. `+` means any of that mob.*

```
step
title Cart
invehicle Cart##46472 |goto Durotar 54.63,74.27 |or
.tip They come every 1m45s.
.tip You can enter a moving one.
```
*A named waypoint and a boardable object.*

---

## Checklist before committing a guide

- [ ] Every `kill` has `|q` or `|killcount`
- [ ] Every `get`/`collect` for a consumed item has `|q`
- [ ] Every `only` with an operator says `only if`
- [ ] Every `|goto` with a radius uses commas throughout
- [ ] Every `stickystart` has a matching `label` and `stickystop`
- [ ] IDs verified against Epoch, not vanilla
- [ ] Registered in `Guides/Autoload.xml`
