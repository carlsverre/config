self: super:

let
  nvim = super.callPackage ../nvim {};
  eslint = super.callPackage ../node/eslint.nix {};
  prettier = super.callPackage ../node/prettier.nix {};

  nix-tools = [
    super.nix-prefetch-scripts
    super.nix-repl
    super.nix-prefetch-git
    super.nox
  ];

  linux-tools = [
    super.patchelf
    super.hwinfo
    super.lshw
    super.pciutils
    super.parted
    super.usbutils
    super.lsof
  ];

  network-tools = [
    super.curl
    super.ipcalc
    super.nmap
    super.tcpdump
    super.wget
    super.bind
    super.traceroute
    super.pdsh
    super.openssh_with_kerberos
    super.heimdalFull
  ];

  security-tools = [
    super.keybase
    super.kbfs
    super.openssl
    super.openvpn
    super.gnupg
  ];

  network-apps = [
    super.insync
    super.ipfs
  ];

  desktop-apps = [
    super.calibre
    super.darktable
    super.hexchat
    super.i3lock
    super.slack
    super.skype
    (super.spotify.overrideAttrs (old: rec {
      version= "1.0.77.338.g758ebd78-41";
      src = super.fetchurl {
        url = "https://repository-origin.spotify.com/pool/non-free/s/spotify-client/spotify-client_${version}_amd64.deb";
        sha256 = "1971jc0431pl8yixpl37ryl2l0pqdf0xjvkg59nqdwj3vbdx5606";
      };
    }))
    super.steam
    super.gcolor2
    super.keybase-gui
    super.firefox
    (super.google-chrome.override {
      channel = "stable";
      pulseSupport = true;
      chromium = (super.chromium.override {
        channel = "stable";
        enablePepperFlash = true;
        pulseSupport = true;
      });
    })
  ];

  dev-tools = [
    nvim
    super.git
    super.jq
    super.bc
    (super.ctagsWrapped.ctagsWrapped.override { name = "ctags"; })
    super.fasd
    super.gnumake
    super.direnv
    super.unzip
    super.p7zip
    super.gcc
    super.libstdcxx5
    super.awscli
    super.azure-cli
    super.gdb
    super.ncurses
    super.zip
    super.docker_compose
    super.aria2
    super.terraform
    super.packer
    super.kubectl
    super.pv
    super.sift
    super.fzf
    super.mysql
    super.rlwrap
    super.imagemagick
    super.sqlite
    super.file
    super.tree
    super.apg
    super.postgresql
    super.rxvt_unicode.terminfo
    super.lm_sensors
 ];

 x11-tools = [
   super.arandr
   super.autorandr
   super.feh
   super.imv
   super.pavucontrol
   super.rofi
   super.xclip
   super.xorg.xdpyinfo
   super.xorg.xev
   super.mplayer
   super.alsaUtils
 ];

 node-env = [
   super.nodejs-8_x
   super.flow
   eslint
   prettier
 ];

 ocaml-env = [
   super.ocaml
   super.ocamlPackages.merlin
   super.ocamlPackages.reason
 ];

 go-env = [
   super.go
   super.gotools
   super.golint
   super.go2nix
   super.glide
   super.dep
 ];

 python2-env = with super.python27Packages; [
   (super.python27Full.withPackages (ps: [
     ps.setuptools
   ]))
   ipython
   flake8
   virtualenv
   Fabric
   pylint
 ];

 base-tools =
  nix-tools
  ++ linux-tools
  ++ network-tools
  ++ dev-tools;
in
  {
    base-env = super.buildEnv {
      name = "base-env";
      paths = base-tools;
    };

    dev-env = super.buildEnv {
      name = "dev-env";
      paths =
        base-tools
        ++ security-tools
        ++ desktop-apps
        ++ network-apps
        ++ x11-tools
        ++ go-env
        ++ node-env
        ++ ocaml-env
        ++ python2-env;
    };
  }
