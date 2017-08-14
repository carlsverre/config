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
      openvpn
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
    ];

    linux = [
      sift
      fzf
      mysql
      gcolor2
      rlwrap
      imagemagick
      sqlite
      file
      tree
      apg
      postgresql
      qtcreator
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

  music-apps = pkg-set {
    linux = [
      ncmpcpp
      mpc_cli
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
      python27Full
      ipython
      flake8
      virtualenv
      Fabric
    ];
    linux = [ pylint ];
  };

  scala-env = [
    scala
  ];

in
  rec {
    allowUnfree = true;

    firefox = {
      enableAdobeFlash = true;
      enableAdobeFlashDRM = true;
    };

    packageOverrides = pkgs : rec {
      dev-env = pkgs.buildEnv {
        name = "dev-env";
        paths =
          nix-tools
          ++ linux-tools
          ++ network-tools
          ++ security-tools
          ++ desktop-apps
          ++ dev-tools
          ++ x11-tools
          ++ music-apps
          ++ go-env
          ++ node-env
          ++ ocaml-env
          ++ python2-env
          ++ scala-env;
      };
    };
  }
