self: super:

{
  uhk-agent = super.stdenv.mkDerivation rec {
    name = "uhk-agent-${version}";
    version = "1.2.12";
    src = super.fetchurl {
      url = "https://github.com/UltimateHackingKeyboard/agent/releases/download/v${version}/UHK.Agent-${version}-linux-x86_64.AppImage";
      sha256 = "1gr3q37ldixcqbwpxchhldlfjf7wcygxvnv6ff9nl7l8gxm732l6";
    };

    buildInputs = [ super.appimage-run ];

    unpackPhase = ":";

    installPhase = ''
      mkdir -p $out/{bin,share}
      cp $src $out/share/uhk-agent.AppImage
      echo "#!${super.runtimeShell}" > $out/bin/uhk-agent
      echo "${super.appimage-run}/bin/appimage-run $out/share/uhk-agent.AppImage" >> $out/bin/uhk-agent
      chmod +x $out/bin/uhk-agent $out/share/uhk-agent.AppImage
    '';

  };
}
