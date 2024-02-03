{
  description = "edge-shaper: nixpkgs edge package collection";

  inputs = {
    nixpkgs.url = "nixpkgs/nixpkgs-unstable";
  };
  nixConfig = {
    extra-substituters = "https://aarch64-darwin.cachix.org";
    extra-trusted-public-keys = "aarch64-darwin.cachix.org-1:mEz8A1jcJveehs/ZbZUEjXZ65Aukk9bg2kmb0zL9XDA=";
  };

  outputs = { self, nixpkgs, flake-utils, }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      with pkgs; {
        formatter = nixpkgs-fmt;

        packages.default = buildEnv {
          name = "nixpkgs-edge";
          paths = [
            (callPackage ./pkgs/micromamba { })
          ];
        };
      });
}
