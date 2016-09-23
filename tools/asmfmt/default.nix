# This file was generated by go2nix.
{ stdenv, buildGoPackage, fetchgit, fetchhg, fetchbzr, fetchsvn }:

buildGoPackage rec {
  name = "asmfmt-${version}";
  version = "20160612-${stdenv.lib.strings.substring 0 7 rev}";
  rev = "3149d9139654f366cca93adb0f0fa1640e319aa0";

  goPackagePath = "github.com/klauspost/asmfmt";
  subPackages = [ "cmd/asmfmt" ];

  src = fetchgit {
    inherit rev;
    url = "https://github.com/klauspost/asmfmt";
    sha256 = "0f0yniq0v75xmdkg7bfkyx9q4lhmwz59y16gr5yg908l8s22lqq0";
  };

  goDeps = ./deps.nix;
}
