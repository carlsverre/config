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
      ctagsWrapped.ctagsWrapped
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

  x11 = pkg-set {
    linux = [
      pavucontrol
      feh
    ];
  };

  python-global = [
    (python27Full.buildEnv.override {
      extraLibs = with python27Packages; [
        jedi
      ];
    })
    (python3.buildEnv.override {
      extraLibs = with python35Packages; [
        jedi
      ];
    })
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
