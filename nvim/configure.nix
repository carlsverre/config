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
        { name = "undotree"; }
        { name = "tagbar"; }
        { name = "vim-nix"; }
        { name = "grepper"; }
        { name = "deoplete-nvim-2016-06-11"; }
        { name = "rooter"; }
        { name = "easytags"; }
        { name = "vim-pi"; }
        { name = "vim-misc"; }

        # javascript
        { name = "vim-javascript"; }
        { name = "jsx"; }

        # python
        { name = "deoplete-jedi"; }
        { name = "jedi"; }
        { name = "python-syntax"; }

        # go
        { name = "deoplete-go"; }
        { name = "vim-go"; }
      ];
    };
  }
