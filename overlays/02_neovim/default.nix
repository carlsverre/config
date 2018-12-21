self: super:

let
  vimrc   = builtins.readFile ./init.vim;
  plugins = super.callPackage ./plugins.nix {};
  neovim = super.callPackage ./neovim.nix {};
in
{
  neovim = super.neovim.override {
    vimAlias = true;
    withRuby = false;

    configure = {
      customRC = vimrc;
      vam = plugins;
    };
  };
}
