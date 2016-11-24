{ pkgs }:

[
  (pkgs.callPackage ./asmfmt {})
  (pkgs.callPackage ./errcheck {})
  (pkgs.callPackage ./gocode {})
  (pkgs.callPackage ./godef {})
  (pkgs.callPackage ./gogetdoc {})
  (pkgs.callPackage ./gometalinter {})
  (pkgs.callPackage ./gotags {})
  (pkgs.callPackage ./impl {})
  (pkgs.callPackage ./motion {})
]
