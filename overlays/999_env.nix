self: super:

let
  # nixpkgs-stable 20.09
  pkgs-stable = import (fetchTarball "https://github.com/nixos/nixpkgs/archive/65c9cc79f1d179713c227bf447fb0dac384cdcda.tar.gz") {};

  # nixpkgs-unstable Nov 24 2020
  pkgs-unstable = import (fetchTarball "https://github.com/nixos/nixpkgs/archive/6625284c397b44bc9518a5a1567c1b5aae455c08.tar.gz") {};
in
  {
    dev-env = super.buildEnv {
      name = "dev-env";
      paths = [
        # nix
        pkgs-stable.nix-prefetch-scripts
        pkgs-stable.nix-prefetch-git

        # go
        pkgs-stable.go
        pkgs-stable.gotools
        pkgs-stable.golint
        pkgs-stable.dep

        # dev-tools
        (pkgs-stable.neovim.override {
          vimAlias = true;
          withRuby = false;
          withNodeJs = true;
        })
        pkgs-stable.neovim-remote

        pkgs-stable.autojump
        pkgs-stable.direnv
        pkgs-stable.fasd
        pkgs-unstable.fzf
        pkgs-stable.jq
        pkgs-stable.patchelf
        pkgs-stable.ripgrep
        pkgs-stable.rlwrap
        pkgs-stable.sift
        pkgs-stable.sqlite

        # network-tools
        pkgs-stable.ipcalc

        # x11-tools
        pkgs-stable.arandr
        pkgs-stable.autorandr
        pkgs-stable.feh
      ];

      extraOutputsToInstall = [ "man" "doc" ];
    };
  }
