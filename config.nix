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

  nvim-paths = pkgs.callPackage ./nvim {};
  my-tools = pkgs.callPackage ./tools {};

  nix-tools = [
    nix-prefetch-scripts
    nix-repl
    nix-prefetch-git
  ];

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
      ctags
      nmap
      fasd
      gnumake
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

  node-env = [
    nodejs
  ];

  x11 = pkg-set {
    linux = [
      pavucontrol
      feh
    ];
  };

  python-global = [
    python27Full
    python3
  ];

  games = pkg-set {
    linux = [
      (dwarf-fortress.override {
        theme = dwarf-fortress-packages.cla-theme;
      })
      dwarf-therapist
    ];
  };

in
  rec {
    allowUnfree = true;

    packageOverrides = pkgs : rec {
      dev-env = pkgs.buildEnv {
        name = "dev-env";
        paths =
          nvim-paths
          ++ nix-tools
          ++ my-tools
          ++ security
          ++ dev-tools
          ++ go-env
          ++ node-env
          ++ python-global
          ++ x11
          ++ games;
      };

      python2-tools = pkgs.buildEnv {
        name = "python2-tools";
        paths = with python27Packages; [
          ipython
          pylint
        ];
      };

      python3-tools = pkgs.buildEnv {
        name = "python3-tools";
        paths = with python35Packages; [
          ipython
          pylint
        ];
      };
    };
  }
