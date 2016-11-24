{ pkgs }:

let
  vimrc   = builtins.readFile ./init.vim;
  plugins = pkgs.callPackage ./plugins.nix {};
in
  pkgs.neovim.override {
    vimAlias = true;
    configure = {
      customRC = vimrc;
      vam = {
        knownPlugins = plugins;

        pluginDictionaries = [
          { name = "vim-colors-solarized"; }
          { name = "nerdtree"; }
          { name = "vim-gitgutter"; }
          { name = "vim-multiple-cursors"; }
          { name = "neomake"; }
          { name = "ctrlp-vim"; }
          { name = "cpsm"; }
          { name = "vim-airline"; }
          { name = "vim-airline-themes"; }
          { name = "undotree"; }
          { name = "tagbar"; }
          { name = "vim-grepper"; }
          { name = "deoplete-nvim"; }
          { name = "vim-rooter"; }
          { name = "vim-easytags"; }
          { name = "vim-misc"; }

          # nix
          { name = "vim2nix"; }
          { name = "vim-nix"; }

          # javascript
          { name = "vim-javascript"; }
          { name = "vim-jsx"; }

          # python
          { name = "deoplete-jedi"; }
          { name = "python-syntax"; }
          { name = "jedi-vim"; }

          # go
          { name = "deoplete-go"; }
          { name = "vim-go"; }
        ];
      };
    };
  }
