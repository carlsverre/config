{ pkgs }:

with pkgs;

let
  nvim = pkgs.callPackage ./nvim {};
  eslint = pkgs.callPackage ./node/eslint.nix {};
  prettier = pkgs.callPackage ./node/prettier.nix {};

  nix-tools = [
    nix-prefetch-scripts
    nix-repl
    nix-prefetch-git
    nox
  ];

  linux-tools = [
    patchelf
    hwinfo
    lshw
    pciutils
    parted
    usbutils
    lsof
  ];

  network-tools = [
    curl
    ipcalc
    nmap
    tcpdump
    wget
    bind
    traceroute
    pdsh
    openssh_with_kerberos
    heimdalFull
  ];

  security-tools = [
    keybase
    kbfs
    openssl
    openvpn
    gnupg
  ];

  network-apps = [
    insync
    ipfs
  ];

  desktop-apps = [
    calibre
    darktable
    hexchat
    i3lock
    slack
    skype
    spotify
    steam
    gcolor2
    keybase-gui
    firefox
    (google-chrome.override {
      channel = "stable";
      pulseSupport = true;
      chromium = (chromium.override {
        channel = "stable";
        enablePepperFlash = true;
        pulseSupport = true;
      });
    })
  ];

  dev-tools = [
    git
    jq
    bc
    (ctagsWrapped.ctagsWrapped.override { name = "ctags"; })
    fasd
    gnumake
    direnv
    unzip
    p7zip
    nvim
    gcc
    libstdcxx5
    awscli
    azure-cli
    gdb
    ncurses
    zip
    docker_compose
    aria2
    terraform
    packer
    kubectl
    pv
    sift
    fzf
    mysql
    rlwrap
    imagemagick
    sqlite
    file
    tree
    apg
    postgresql
    rxvt_unicode.terminfo
    lm_sensors
  ];

  x11-tools = [
    arandr
    autorandr
    feh
    imv
    pavucontrol
    rofi
    xclip
    xorg.xdpyinfo
    xorg.xev
    mplayer
    alsaUtils
  ];

  node-env = [
    nodejs-8_x
    eslint
    flow
    prettier
  ];

  ocaml-env = [
    ocaml
    ocamlPackages.merlin
    ocamlPackages.reason
  ];

  go-env = [
    go
    gotools
    golint
    go2nix
    glide
    dep
  ];

  python2-env = with python27Packages; [
    (python27Full.withPackages (ps: [
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

  in rec {
    allowUnfree = true;

    firefox = {
      enableAdobeFlash = true;
      enableAdobeFlashDRM = true;
    };

    packageOverrides = pkgs : {
      base-env = pkgs.buildEnv {
        name = "base-env";
        paths = base-tools;
      };

      dev-env = pkgs.buildEnv {
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
    };
  }
