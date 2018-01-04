{ pkgs }:

with pkgs;

let
  is-osx = builtins.currentSystem == "x86_64-darwin";
  is-linux = builtins.currentSystem != "x86_64-darwin";

  pkg-set = {
    all ? [],
    osx ? [],
    linux ? []
  }: (
    all
    ++ (if is-osx then osx else [])
    ++ (if is-linux then linux else [])
  );

  nvim = pkgs.callPackage ./nvim {};
  eslint = pkgs.callPackage ./node/eslint.nix {};
  prettier = pkgs.callPackage ./node/prettier.nix {};

  nix-tools = [
    nix-prefetch-scripts
    nix-repl
    nix-prefetch-git
    nox
  ];

  linux-tools = pkg-set {
    linux = [
      patchelf
      hwinfo
      lshw
      pciutils
      parted
      usbutils
    ];
  };

  network-tools = pkg-set {
    linux = [
      curl
      ipcalc
      nmap
      tcpdump
      wget
      bind
      traceroute
    ];
  };

  security-tools = pkg-set {
    linux = [
      keybase
      kbfs
      openssl
      openvpn
      gnupg
    ];
  };

  network-apps = pkg-set {
    linux = [
      insync
      ipfs
    ];
  };

  desktop-apps = pkg-set {
    linux = [
      calibre
      darktable
      hexchat
      i3lock
      slack
      skype
      spotify
      steam
      qtcreator
      gcolor2
      keybase-gui
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
  };

  dev-tools = pkg-set {
    all = [
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
    ];

    linux = [
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
  };

  x11-tools = pkg-set {
    linux = [
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
    ];
  };

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

  python2-env = with python27Packages; pkg-set {
    all = [
      (python27Full.withPackages (ps: [
        ps.setuptools
      ]))
      ipython
      flake8
      virtualenv
      Fabric
    ];
    linux = [ pylint ];
  };

  scala-env = [
    scala
    sbt
  ];

  base-tools =
    nix-tools
    ++ linux-tools
    ++ network-tools
    ++ dev-tools;

in
  rec {
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
          ++ python2-env
          ++ scala-env;
      };
    };
  }
