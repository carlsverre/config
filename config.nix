{ pkgs }:

{
  allowUnfree = true;
  permittedInsecurePackages = [
    "mono-4.0.4.1"
  ];
}
