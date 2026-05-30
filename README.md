# spaced-out

A tiny Zig-first asteroid mining simulator core.

The current project is intentionally core-only:

- Zig owns the simulation state and rules.
- There is no browser app, WASM layer, React, database, API, or auth.
- The CLI entrypoint is only a scripted demo so the core can be built and observed.
- TUI and GUI work are deferred until the simulation loop is worth visualizing.
- Asteroid data stays in a small local JSON file for now.

The more ambitious original project context is preserved in `docs/ambitious-project-context.md`. The visualization plan is in `docs/visualization-roadmap.md`.

## Project Layout

```text
spaced-out/
  README.md
  .gitignore
  build.sh
  data/
    asteroids.json
  docs/
    ambitious-project-context.md
    visualization-roadmap.md
  zig/
    src/
      main.zig
      sim.zig
    build.zig
```

`zig/src/sim.zig` is the main place to work. `zig/src/main.zig` is only a small runner that demonstrates the current simulation functions.

## Install Zig

If `zig version` works, you can skip this section.

Install Zig from the official downloads page:

<https://ziglang.org/download/>

On Linux, the basic flow is:

```sh
tar -xf zig-linux-*.tar.xz
sudo mv zig-linux-* /opt/zig
sudo ln -s /opt/zig/zig /usr/local/bin/zig
zig version
```

Package managers may also provide Zig, but the official tarball is usually the most current.

## Build The Core

From the project root:

```sh
./build.sh
```

This compiles the native Zig executable to:

```text
zig/zig-out/bin/spaced_out
```

You can also build directly from the Zig package:

```sh
cd zig
zig build
```

## Run The Demo

From the project root:

```sh
cd zig
zig build run
```

The output is intentionally plain text. It is not meant to be the final interface.

## Where To Start Editing

Start with `zig/src/sim.zig`.

The current simulation functions are deliberately small:

- `selectAsteroid(index: u32)`
- `mine()`
- `sell()`
- `buyUpgrade()`
- `nextTurn()`
- `statusText(status: StatusCode)`

Keep UI concerns out of `sim.zig`. The next UI should call the core rather than own the game rules.

## Next Steps

1. Flesh out the Zig simulation state.
2. Implement the mine/sell loop.
3. Add upgrade math.
4. Add tests for core rules.
5. Add a TUI after the core becomes hard to inspect with plain CLI output.
6. Consider a GUI only after the TUI proves what needs richer visualization.
