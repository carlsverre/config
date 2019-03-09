self: super:

{
  urbit = super.stdenv.mkDerivation rec {
    name = "urbit-${version}";
    version = "0.7.3";

    src = super.fetchFromGitHub {
      owner = "urbit";
      repo = "urbit";
      rev = "v${version}";
      sha256 = "192843pjzh8z55fd0x70m3l1vncmixljia3nphgn7j7x4976xkp2";
      fetchSubmodules = true;
    };

    nativeBuildInputs = with super; [ pkgconfig ninja meson ];
    buildInputs = with super; [ curl git gmp libsigsegv ncurses openssl re2c zlib ];

    postPatch = ''
      patchShebangs .
    '';
  };

  urbit-bridge = super.stdenv.mkDerivation rec {
    name = "urbit-bridge-${version}";
    version = "1.1.0";

    buildInputs = with super; [ unzip ];

    src = super.fetchurl {
      url = "https://github.com/urbit/bridge/releases/download/v${version}/bridge-${version}.zip";
      sha256 = "0dlsjsi072p8mflkssqwfa36p7l6ka89y8k1f4vb7xss49qiqv5m";
    };

    installPhase = ''
      mkdir -p $out/bin $out/build
      mv * $out/build

      cat > $out/bin/urbit-bridge <<EOF
      #!${super.stdenv.shell}
      exec ${super.python37}/bin/python3 -m http.server 5000 --bind 127.0.0.1 --directory $out/build
      EOF

      chmod +x $out/bin/urbit-bridge
    '';
  };
}
