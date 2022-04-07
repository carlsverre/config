self: super:

let
  # https://github.com/NixOS/nixpkgs/commits/release-21.11
  # Feb 28 2022
  pkgs-stable = import (fetchTarball "https://github.com/nixos/nixpkgs/archive/7bb8599a66395bec86a96aa2d2db44cce2aa3955.tar.gz") {};
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
        pkgs-stable.fzf
        pkgs-stable.jq
        pkgs-stable.patchelf
        pkgs-stable.ripgrep
        pkgs-stable.rlwrap
        pkgs-stable.sift
        pkgs-stable.sqlite
        pkgs-stable.watchman

        # network-tools
        pkgs-stable.ipcalc

        # lifestyle
        pkgs-stable.playerctl

        # x11-tools
        pkgs-stable.arandr
        pkgs-stable.autorandr
        pkgs-stable.feh
        pkgs-stable.neofetch
        pkgs-stable.zathura
      ];

      extraOutputsToInstall = [ "man" "doc" ];
    };
  }
