self: super:

let
  nixpkgs-unstable-src = super.fetchFromGitHub {
    owner = "nixos";
    repo = "nixpkgs-channels";
    rev = "fce7562cf46727fdaf801b232116bc9ce0512049";
    sha256 = "14rvi69ji61x3z88vbn17rg5vxrnw2wbnanxb7y0qzyqrj7spapx";
  };
  nixpkgs-unstable = import nixpkgs-unstable-src {};

  plugins = super.callPackage ./plugins.nix {};
in
{
  custom-neovim = nixpkgs-unstable.neovim.override {
    vimAlias = true;
    withRuby = false;
    withNodeJs = true;

    configure = {
      customRC = ''
        source ~/.config/nvim/init.vim
      '';
      vam = plugins;
    };
  };
}
