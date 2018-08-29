self: super:

let
  nixpkgs-master-src = super.fetchFromGitHub {
    owner = "nixos";
    repo = "nixpkgs";
    rev = "49d97c34958c1b31c509fe1cb52d97c998bd6184";
    sha256 = "179j9kh9fdqsiyzgdh30sm4hbl98hrzw611v07qmpbi0mahf5jxk";
  };
  nixpkgs-master = import nixpkgs-master-src {};

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
    super.gnupg1compat
  ];

  network-apps = [
    super.insync
    super.ipfs
  ];

  desktop-apps = [
    super.bitwarden
    super.calibre
    super.darktable
    super.hexchat
    super.i3lock
    super.slack
    super.skype
    nixpkgs-master.spotify
    super.steam
    super.gcolor2
    super.keybase-gui
    super.firefox
    super.dragon-drop
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

  productivity-tools = [
    super.taskwarrior
  ];

  dev-tools = [
    nvim
    super.git
    super.jq
    super.bc
    (super.ctagsWrapped.ctagsWrapped.override { name = "ctags"; })
    super.fasd
    super.dos2unix
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
   super.dep
 ];

 python-env = with super.python27Packages; [
   (super.python27Full.withPackages (ps: [
     ps.setuptools
   ]))
   ipython
   flake8
   virtualenv
   pylint
   Fabric
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
        ++ productivity-tools
        ++ security-tools
        ++ desktop-apps
        ++ network-apps
        ++ x11-tools
        ++ go-env
        ++ node-env
        ++ ocaml-env
        ++ python-env;
      extraOutputsToInstall = [ "man" "doc" ];
    };
  }
