{ pkgs }:

with pkgs;

let
  nvim-paths = pkgs.callPackage ./nvim {};

  nix-tools = [
    nix-prefetch-scripts
    nix-repl
    nix-prefetch-git
  ];

  dev-tools = [
    git
    jq
    curl
    ctags
    nmap
    fzf
    hexchat
    fasd
    gnumake
  ];

  go-env = [
    go
    gotools
  ];

  node-env = [
    nodejs
  ];

  x11 = [
    xclip
  ];

  python-global = [
    python27Full
    python3
  ];

in
  rec {
    allowUnfree = true;

    packageOverrides = pkgs : rec {
      dev-env = pkgs.buildEnv {
        name = "dev-env";
        paths =
          nvim-paths
          ++ nix-tools
          ++ dev-tools
          ++ go-env
          ++ node-env
          ++ python-global
          ++ x11;
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
