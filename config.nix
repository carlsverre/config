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
    ];
  };

  security-tools = pkg-set {
    linux = [
      keybase
      kbfs
      openssl
    ];
  };

  desktop-apps = pkg-set {
    linux = [
      hexchat
      i3lock
      slack
      skype
      spotify
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
      python27Full
      direnv
      unzip
      p7zip
      nvim
      gcc
      awscli
      gdb
      ncurses
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
    ];
  };

  music-apps = pkg-set {
    linux = [
      ncmpcpp
      mpc_cli
    ];
  };

  node-env = [
    nodejs
    eslint
  ];

  go-env = [
    go
    gotools
    golint
    go2nix
    glide
  ];

in
  rec {
    allowUnfree = true;

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
          ++ node-env;
      };

      python2-tools = pkgs.buildEnv {
        name = "python2-tools";
        paths = with python27Packages; pkg-set {
          all = [
            ipython
            flake8
            virtualenv
          ];
          linux = [ pylint ];
        };
      };

      python3-tools = pkgs.buildEnv {
        name = "python3-tools";
        paths = with python35Packages; pkg-set {
          all = [
            ipython
            flake8
            virtualenv
          ];
          linux = [ pylint ];
        };
      };
    };
  }
