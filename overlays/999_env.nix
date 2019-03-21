self: super:

let
  nixpkgs-master-src = super.fetchFromGitHub {
    owner = "nixos";
    repo = "nixpkgs";
    rev = "d3ff902e946aa7eed206332c14b7caad06ee233d";
    sha256 = "1gpsfszww6m5qg0pf6g37h28aqi1acy6khihxzilc00iwr5ysnxz";
  };
  nixpkgs-master = import nixpkgs-master-src {};

  nix-tools = [
    super.nix-prefetch-scripts
    super.nix-prefetch-git
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
    nixpkgs-master.discord
    super.skype
    nixpkgs-master.spotify
    nixpkgs-master.steam
    super.gcolor2
    super.keybase-gui
    super.firefox
    super.dragon-drop
    super.zoom-us
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
    super.custom-neovim
    super.urbit
    super.urbit-bridge
    super.git
    super.jq
    super.bc
    (super.ctagsWrapped.ctagsWrapped.override { name = "ctags"; })
    super.fasd
    super.autojump
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
    nixpkgs-master.terraform
    super.packer
    nixpkgs-master.kubectl
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
    super.nodejs-10_x
    super.flow
    super.yarn
    super.nodePackages.prettier
    super.nodePackages.typescript
  ];

  go-env = [
    super.go
    super.gotools
    super.golint
    super.go2nix
    super.dep
  ];

  rust-env = [
    nixpkgs-master.rustup
  ];

  python2-env = with super.python27Packages; [
    (super.python27Full.withPackages (ps: [
      ps.setuptools
    ]))
    Fabric
  ];

  python3-env = with super.python36Packages; [
    (super.python36Full.withPackages (ps: [
      ps.setuptools
    ]))
    ipython
    flake8
    virtualenv
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
        ++ productivity-tools
        ++ security-tools
        ++ desktop-apps
        ++ network-apps
        ++ x11-tools
        ++ go-env
        ++ rust-env
        ++ node-env
        ++ python2-env
        ++ python3-env;

      extraOutputsToInstall = [ "man" "doc" ];
    };
  }