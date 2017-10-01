{ pkgs }:

let
  node-packages = with pkgs; import ./default.nix {
    inherit pkgs system;
    nodejs = nodejs;
  };

in node-packages.prettier
