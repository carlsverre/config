{ pkgs }:

let
  configure = import ./configure.nix { pkgs = pkgs; };
in
  pkgs.neovim.override {
    configure = configure;
    vimAlias = true;
  }
