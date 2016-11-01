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
  my-tools = pkgs.callPackage ./tools {};
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
    ];
  };

  network-tools = pkg-set {
    linux = [
      tcpdump
      nmap
      curl
      wget
    ];
  };

  security-tools = pkg-set {
    linux = [
      keybase-go
    ];
  };

  desktop-apps = pkg-set {
    linux = [
      hexchat
      i3lock
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
      python3
      direnv
      unzip
      nvim
    ];

    linux = [
      sift
      fzf
      mysql
      gcolor2
    ];
  };

  x11-tools = pkg-set {
    linux = [
      pavucontrol
      feh
      rofi
      arandr
      xclip
      xorg.xdpyinfo
      xorg.xev
    ];
  };

  node-env = [
    nodejs
    eslint
  ];

  go-env = [
    go
    gotools
    gotags
    golint
    go2nix
  ];

in
  rec {
    allowUnfree = true;

    packageOverrides = pkgs : rec {
      dev-env = pkgs.buildEnv {
        name = "dev-env";
        paths =
          nix-tools
          ++ my-tools
          ++ linux-tools
          ++ network-tools
          ++ security-tools
          ++ desktop-apps
          ++ dev-tools
          ++ x11-tools
          ++ go-env
          ++ node-env;
      };

      python2-tools = pkgs.buildEnv {
        name = "python2-tools";
        paths = with python27Packages; pkg-set {
          all = [ ipython flake8 ];
          linux = [ pylint ];
        };
      };

      python3-tools = pkgs.buildEnv {
        name = "python3-tools";
        paths = with python35Packages; pkg-set {
          all = [ ipython flake8 ];
          linux = [ pylint ];
        };
      };
    };
  }
