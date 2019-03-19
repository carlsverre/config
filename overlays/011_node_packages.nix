self: super:

let
  nodePackages = import ../node/default.nix {
    pkgs = super;
    nodejs = super.nodejs-10_x;
  };
in
{
  nodePackages = super.nodePackages // nodePackages;
}
