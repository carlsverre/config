{ pkgs }:

let
  configure = import ./configure.nix { pkgs = pkgs; };
in with pkgs; [
  (neovim.override {
    configure = configure;
    vimAlias = true;
  })
  ctagsWrapped.ctagsWrapped
]
