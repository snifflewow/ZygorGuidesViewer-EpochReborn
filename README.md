# ZygorGuidesViewer - Epoch Reborn Edition

Leveling guide viewer for **World of Warcraft 3.3.5a (WotLK)**, adapted for
**Project Epoch Reborn**.

Built on the community 3.3.5 Zygor Guides Viewer port, with a substantially repaired guide
engine and hand-written, class-aware guides for Epoch's custom content.

> **Status:** Engine is stable and in daily use. Guide coverage is Horde
> starting zone for Orc/Troll through Durotar (1-13), written and tested against Epoch Reborn directly.
> More is being written. Contributions are welcome.

---

## Relationship to the upstream project

This started from
**[SimonGaufreteau/ZygorGuidesViewer](https://github.com/SimonGaufreteau/ZygorGuidesViewer)**,
which is the community 3.3.5 Epoch port and the right place to look if you want
the Alliance/Era guide set or a version closer to upstream Zygor.

It is a **separate project rather than a pull request**, for one concrete reason:
the guide engine here has diverging completion semantics. `|c`, `get`, `click`,
`vendor`, `readyq()` and `completedq()` all behave differently, and guides written
for one engine will not behave correctly on the other. That is a fork-shaped
difference, not a patch-shaped one.

The **bug fixes are not fork-specific** and apply cleanly upstream. They are
listed below and offered freely - see [Contributing back](#contributing-back).

---

## What's different

### Engine fixes

| Fixed | What was wrong |
|---|---|
| `\|c` on `\|goto` | Waypoint goals were excluded from step completion entirely, so `\|goto x,y \|c` never auto-advanced |
| `get` | No completion check at all - a `get` goal could never complete regardless of what you looted |
| `click` / `clicknpc` | Never set `goal.action`, so the goal silently degraded to plain text |
| `vendor` | Not completeable and not clickable; now completes on right-click |
| `readyq()` | Tested a `.inlog` field that is never set on the quest object, so it always returned false |
| `completedq()` | Read an undefined variable instead of its parameter - always evaluated against `nil` |
| Bare `\|q ID` | The generic "complete when the quest completes" path was commented out |
| Multi-line `\|popuptext` | `\n` now renders as a real line break |
| Duplicate parser branches | Unreachable `startlevel`, `popuptext` and `tip` branches removed |
| Duplicate option keys | An options-panel entry was silently overwritten by a key collision |

### Added

- **Route following (`path`)** - multi-point routes with `loose` / `strict` /
  `strictbounce` follow modes, looping, and a sound cue on each advance. The
  original implementation was left commented out and unfinished.
- **Data-driven skin system** - skins are folders plus a small `Style-*.lua`
  data file with inheritance. Adding a skin needs no engine edits. Modelled on
  the architecture in the modern Zygor Classic addon.
- **Action button row** - icons above the window for the current step's
  kill / talk / use target, so you can target or use in one click.
- **Waypoint hints** - bracketed `[x,y]` coordinate lists render and are
  clickable without gating the step.
- **Custom guide folders** - guides under your own top-level folder are no longer
  force-sorted into generated `Level X-Y` buckets.

### Cleaned up

Removed 25 unreferenced functions, six dead files, four broken loader references
that were throwing errors on every load, and ~43 MB of unreachable assets
(guide-browser images this fork has no UI for, and guide data that was never
loaded). Repo went from ~69 MB to ~26 MB.

---

## Requirements

- World of Warcraft **3.3.5a** client (Interface 30300)
- Built and tested against **Project Epoch / Epoch Reborn**

Not compatible with Classic Era, Cataclysm Classic, or retail.

---

## Installation

### Option A - download a release (recommended)

1. Grab the latest `.zip` from [Releases](../../releases).
2. Extract into `World of Warcraft/Interface/AddOns/`.
   The release zip already contains a correctly named `ZygorGuidesViewer` folder.
3. Restart the client.

### Option B - Download ZIP

GitHub's green **Code → Download ZIP** gives you a folder named
`ZygorGuidesViewer-main`. **Rename it to `ZygorGuidesViewer`** or the addon will not
appear in your addon list.

---

## Usage

- Pick a guide with the **Guides** button.
- **Unlock the window** (padlock, top-left) to make step lines clickable -
  clicking a line sets its waypoint or marks it done.
- **Right-click the forward arrow** to fast-forward through completed and
  inapplicable steps.
- Options are under **Interface → AddOns → Zygor Guides Viewer**.

### Included guides

| Set | Coverage |
|---|---|
| **Epoch** | Orc 1-6, Troll 1-6, Durotar 6-13, class-aware, written against Epoch Reborn |
| Zygor Leveling | Horde and Alliance vanilla content, Older and Updated versions |
| Dungeons | Classic Horde and Alliance |

Epoch has over a thousand modified or new quests, so the vanilla guides drift in
places. The `Epoch\` guides are the ones verified against Epoch.

---

## Writing guides

Read **[GUIDE_SYNTAX.md](Guides/GUIDE_SYNTAX.md)**.

It was written by reading the parser, not by inferring from existing guides, 
and it documents the behaviours that are
easy to get wrong - `|only` versus `|only if`, when a `goto` needs `|c`, why a
bare `kill` blocks a step forever.

Start from `Guides/EPOCH/0_Example.lua`. Register new files in
`Guides/Autoload.xml`.

For quest, item and NPC IDs, use
[pfQuest-Epoch](https://github.com/Bennylavaa/pfQuest-epoch) (by Bennylavaa) or Questie Epoch.

---

## Reporting problems

Guide bugs and engine bugs are different, so saying which helps:

- **Guide issue** (wrong coordinate, wrong quest ID, step out of order) - name
  the guide and step number.
- **Engine issue** (a directive not behaving as documented) - a minimal step
  that reproduces it is ideal.
- **NPC description issue** (a wrong or misplaced description below NPC names when in talk) - p.e. Thrall description just said ",". If you notice any NPC info out of place / wrong description say so. There are **many** wrong. It is a "one everyday, goes a long way" situation.

Epoch changes IDs from vanilla, so "this ID is wrong" is a common and very
fixable report. On top of that Reborn can remap some ID's or NPC/Mob locations as well.

---

## Contributing back

Several of the fixes above are plain bugs in the shared codebase and are not
tied to anything fork-specific - see [Engine fixes](#engine-fixes). They are small, isolated
diffs and anyone is welcome to take them upstream, with or without attribution.

Feel free to send feedback and don't hesitate to contact for any explanation or collaboration intent.

---

## Credits

- **Zygor Guides** - the original addon and the base leveling guides.
- **TUG** - the original route and the initial 3.3.5 port.
- **[Simon Gaufreteau](https://github.com/SimonGaufreteau/ZygorGuidesViewer)** -
  the Epoch community port this repository started from: the Era guide backport,
  the `Retrofit.lua` compatibility layer, and the repo tooling.
- Engine repairs, skin system, route following and the Epoch Horde guides in
  this fork.
