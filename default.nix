let
  pkgs      = import <nixpkgs> {};
  stdenv    = pkgs.stdenv;
  nvim      = pkgs.callPackage ./nvim {};

  tools   = with pkgs; [
    python27Packages.ipython
    which
    xclip
    nix-prefetch-git
    git
  ];
in rec {
  devEnv = pkgs.buildEnv {
    name = "dev-env";
    paths = nvim ++ tools;
  };
}
