self: super:

let
  libPath = with super; stdenv.lib.makeLibraryPath [
    alsaLib
    atk
    cairo
    cups
    dbus
    expat
    fontconfig
    freetype
    gcc.cc
    gdk_pixbuf
    glib
    gnome2.GConf
    gtk3
    libnotify
    libsecret
    nspr
    nss
    pango
    systemd
    xorg.libX11
    xorg.libxcb
    xorg.libXcomposite
    xorg.libXcursor
    xorg.libXdamage
    xorg.libXext
    xorg.libXfixes
    xorg.libXi
    xorg.libXrandr
    xorg.libXrender
    xorg.libXScrnSaver
    xorg.libXtst
  ];
in
  {
    bitwarden = super.stdenv.mkDerivation rec {
      name = "bitwarden-${version}";
      version = "1.3.0";
      src = super.fetchurl {
        url = "https://github.com/bitwarden/desktop/releases/download/v${version}/Bitwarden-${version}-amd64.deb";
        sha256 = "04bp9h3dbgwzr57646jxbgqy9ihllayv439xaxxdnav7my4llqpp";
      };
      phases = ["unpackPhase" "installPhase" "fixupPhase"];
      unpackPhase = ''
        ar xf $src
        tar xf data.tar.xz
      '';
      installPhase = ''
        mkdir -p $out/bin
        mv usr/share $out/share
        mv opt/Bitwarden $out/share/Bitwarden

        cat > $out/bin/bitwarden <<EOF
        #!${super.stdenv.shell}
        export LD_LIBRARY_PATH="${libPath}:$LD_LIBRARY_PATH"
        exec $out/share/Bitwarden/bitwarden "\$@"
        EOF

        chmod +x $out/bin/bitwarden
      '';
      postFixup = ''
        patchelf \
          --set-interpreter $(cat $NIX_CC/nix-support/dynamic-linker) \
          --set-rpath "${libPath}:\$ORIGIN" \
          "$out/share/Bitwarden/bitwarden"
        find "$out" -name "*.so" -exec patchelf \
          --set-rpath "${libPath}:\$ORIGIN" \
          "{}" \;
      '';
    };
  }
