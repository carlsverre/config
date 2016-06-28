{ pkgs }:

with pkgs;

let
  nvim-paths = pkgs.callPackage ./nvim {};
in
  rec {
    allowUnfree = true;

    packageOverrides = pkgs : rec {
      dev-env = pkgs.buildEnv {
        name = "dev-env";
        paths = nvim-paths ++ [
          python27Packages.ipython
          which
          xclip
          git
          nix-prefetch-scripts
          nix-repl
          nix-prefetch-git
        ];
      };
    };
  }
