{ pkgs }:

let
  vimrc   = builtins.readFile ./init.vim;

  plugins = pkgs.callPackage ./plugins.nix {};
in
  {
    customRC = vimrc;
    vam = {
      knownPlugins = pkgs.vimPlugins // plugins;

      pluginDictionaries = [
        { name = "colors-solarized"; }
        { name = "nerdtree"; }
        { name = "gitgutter"; }
        { name = "multiple-cursors"; }
        { name = "neomake"; }
        { name = "ctrlp"; }
        { name = "airline"; }
        { name = "vim-airline-themes"; }
        { name = "undotree"; }
        { name = "tagbar"; }
        { name = "vim-nix"; }
        { name = "grepper"; }
        { name = "deoplete-nvim"; }
        { name = "rooter"; }
        { name = "easytags"; }
        { name = "vim-misc"; }

        # javascript
        { name = "vim-javascript"; }
        { name = "jsx"; }

        # python
        { name = "deoplete-jedi"; }
        { name = "python-syntax"; }
        { name = "jedi-vim"; }

        # go
        { name = "deoplete-go"; }
        { name = "vim-go"; }
      ];
    };
  }
