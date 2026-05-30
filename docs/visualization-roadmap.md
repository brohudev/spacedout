# Visualization Roadmap

The project should stay core-only until the simulation loop is interesting enough to inspect.

## Current Phase: Zig Core

Focus on plain Zig first:

- game state
- asteroid selection
- mining yield
- cargo and selling
- upgrade math
- market ticks
- turn progression
- tests for simulation rules

The core should not depend on any UI. Keep the simulation reusable from a CLI, TUI, GUI, or browser layer later.

## Next Phase: TUI

Once the core grows beyond a scripted demo, add a terminal UI before adding a graphical UI.

A TUI is the best next step because it keeps the feedback loop close to Zig while making the simulation easier to watch. It can show:

- credits, cargo, turn, selected asteroid
- asteroid list
- current market prices
- action menu
- scrolling game log
- debug values for balancing

The TUI should call into the same simulation functions that the CLI demo uses.

## Later Phase: GUI

Add a GUI only after the core and TUI prove what needs to be visualized.

A GUI might make sense when the project needs:

- richer charts
- asteroid maps
- mouse-driven selection
- animation
- canvas or WebGL rendering
- a more polished presentation layer

At that point, a browser GUI, React, or WASM can be reconsidered as a visualization layer around the already-working Zig core.
