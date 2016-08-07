{ pkgs }:

let
  configure = import ./configure.nix { pkgs = pkgs; };

  nvim = with pkgs; stdenv.mkDerivation {
    name = "neovim-${neovim.version}-configured";
    inherit (neovim) version;

    nativeBuildInputs = [ makeWrapper git ];

    buildCommand = ''
      mkdir -p $out/bin
      for item in ${neovim}/bin/*; do
        ln -s $item $out/bin/
      done
      ln -s $out/bin/nvim $out/bin/vim
      mkdir -p $out/config/nvim
      cp ${vimUtils.vimrcFile configure} $out/config/nvim/init.vim
      wrapProgram $out/bin/nvim --set XDG_CONFIG_DIRS $out/config
      $out/bin/nvim -i NONE --headless +UpdateRemotePlugins +qall
    '';
  };
in with pkgs; [
  nvim
  ctagsWrapped.ctagsWrapped
]
