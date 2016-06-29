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
  ];

  go-env = [
    go
    gotools
  ];

  python-env = with python27Packages; [
    python
    ipython
  ];

  node-env = with python27Packages; [
    nodejs
  ];

  x11 = [
    xclip
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
          ++ python-env
          ++ node-env
          ++ x11;
      };
    };
  }
