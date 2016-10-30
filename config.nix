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

  node-env = [
    nodejs
    eslint
  ];

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

  security = pkg-set {
    linux = [
      keybase-go
    ];
  };

  dev-tools = pkg-set {
    all = [
      git
      jq
      curl
      wget
      (ctagsWrapped.ctagsWrapped.override { name = "ctags"; })
      nmap
      fasd
      gnumake
      python27Full
      python3
      direnv
      unzip
      nvim
    ];

    linux = [
      hexchat
      sift
      fzf
    ];
  };

  go-env = [
    go
    gotools
    gotags
    golint
    go2nix
  ];

  x11 = pkg-set {
    linux = [
      pavucontrol
      feh
      rofi
      arandr
      xorg.xdpyinfo
      xclip
    ];
  };
in
  rec {
    allowUnfree = true;

    packageOverrides = pkgs : rec {
      dev-env = pkgs.buildEnv {
        name = "dev-env";
        paths =
          nix-tools
          ++ linux-tools
          ++ my-tools
          ++ security
          ++ dev-tools
          ++ go-env
          ++ node-env
          ++ x11;
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
