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

  desktop-apps = pkg-set {
    linux = [
      hexchat
      i3lock
      slack
      skype
      spotify
      qtcreator
      gcolor2
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
          ++ x11-tools
          ++ go-env
          ++ node-env
          ++ ocaml-env
          ++ python2-env
          ++ scala-env;
      };
    };
  }
