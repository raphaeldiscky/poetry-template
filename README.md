<h1 align="center">Poetry Template</h1>

A simple Python project template using Poetry for dependency management.

## Quick Start

Install the pinned toolchain, then the project tools and dependencies:

```sh
proto use          # installs every toolchain pinned in .prototools
task install_tools # project tools + dependencies + git hooks
```

Day to day:

```sh
task sync          # install the exact deps in the lockfiles (after cloning or pulling)
task upgrade       # bump all deps to their latest versions and update the lockfiles
```

## Commands

| Command | Description |
| --- | --- |
| `task install_tools` | Install tools, dependencies and git hooks |
| `task sync` | Install exact dependencies from the lockfiles |
| `task upgrade` | Upgrade all dependencies to latest |
| `task add PACKAGE=x` | Add a runtime dependency |
| `task add_dev PACKAGE=x` | Add a development dependency |
| `task format` | Format and fix imports with Ruff |
| `task lint` | Ruff checks (incl. `S` security rules) + Pyrefly types |
| `task deadcode` | Detect dead code with Vulture |
| `task test` | Run tests |
| `task run_ci` | Run the CI pipeline locally |

## Toolchain versions

Every language and tool version lives in **`.prototools`** — one file, read by
both `proto use` locally and `moonrepo/setup-toolchain` in CI. To upgrade a
language, edit that one line.


## Technologies - Libraries 🛠️

- **[python-poetry/poetry](https://github.com/python-poetry/poetry)** - Python packaging and dependency management made easy
- **[astral-sh/ruff](https://github.com/astral-sh/ruff)** - An extremely fast Python linter and code formatter, written in Rust
- **[facebook/pyrefly](https://github.com/facebook/pyrefly)** - A fast type checker, written in Rust
- **[pytest-dev/pytest](https://github.com/pytest-dev/pytest)** - Python testing framework
- **[jendrikseipp/vulture](https://github.com/jendrikseipp/vulture)** - Finds unused (dead) Python code
