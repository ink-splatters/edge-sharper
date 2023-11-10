# Edge Sharper

when the bleeding edge is not bleeding enough: opinionated collection of nixpkgs packages, patched to use their latest upstream version

## Motivation

[nixpkgs](https://github.com/NixOS/nixpkgs) is massive codebase. Some nix packages lag behind their official releases, even in [unstable](https://nixos.org/channels/nixpkgs-unstable) channel;
so here come a few receipts - for packages used by the author, which bump up their `nixpkgs` version.

### Why not PR?

Those come in parallel: PRs are not merged immediately; that's the reason this repo appeared.

### Temporary

Should the lag with upstream cease to exist, for a given nixpkgs package, the corresponding receipt will be removed from this repo.

## Installation

using `nix profile`:

```shell
nix profile install github:ink-splatters/edge-sharper --accept-flake-config

```

## Packages

name | nixpkgs version |---|upstream version |mods
:---: | :---: | :---:  | :---:  | :---:
__ripgrep__|[13.0.0](https://github.com/BurntSushi/ripgrep/commit/af6b6c543b224d348a8876f0c06245d9ea7929c5)| ⬆️ |[2023-10-10+master.7099e17](https://github.com/BurntSushi/ripgrep/commit/7099e174acbcbd940f57e4ab4913fee4040c826e)| `--withSIMD --withPCRE2`

# License

[MIT](LICENSE)

Note: nixpkgs license [caveats](https://github.com/NixOS/nixpkgs#license) apply to this project as well.
