{ stdenv, lib, buildGoPackage, fetchgit, fetchhg, fetchbzr, fetchsvn }:

buildGoPackage rec {
  name = "gocode-${version}";
  version = "20160719-${stdenv.lib.strings.substring 0 7 rev}";
  rev = "1be256566ef385eb611c90414f5163605d1bfb15";

  goPackagePath = "github.com/nsf/gocode";
  allowGoReference = true;

  src = fetchgit {
    inherit rev;
    url = "https://github.com/nsf/gocode";
    sha256 = "1zm95v2sg7m0nwylyvb0an2dk8q1xq32fsgaf3iibli00n2yhwns";
  };
}
