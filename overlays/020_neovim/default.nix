self: super:

let
  nixpkgs-unstable-src = super.fetchFromGitHub {
    owner = "nixos";
    repo = "nixpkgs-channels";
    rev = "4c6be1f00c337e15c176b932deb687221f1c4bf0";
    sha256 = "145svfi277k8kk5kq558pspji1wl8akprr9iz0s7q3ydxxfh4yh8";
  };
  nixpkgs-unstable = import nixpkgs-unstable-src {};

  vimrc   = builtins.readFile ./init.vim;
  plugins = super.callPackage ./plugins.nix {};
in
{
  custom-neovim = nixpkgs-unstable.neovim.override {
    vimAlias = true;
    withRuby = false;
    withNodeJs = true;

    configure = {
      customRC = vimrc;
      vam = plugins;
    };
  };
}
