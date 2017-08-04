{ pkgs }:

let
  node-packages = with pkgs; import ./default.nix {
    inherit pkgs system;
    nodejs = nodejs;
  };

in with node-packages; pkgs.stdenv.mkDerivation {
  name = "eslint-wrapped";
  nativeBuildInputs = [
    eslint
    eslint-plugin-react
    eslint-plugin-babel
    eslint-plugin-import
    eslint-plugin-flowtype
    babel-eslint
    pkgs.makeWrapper
  ];

  buildCommand = ''
    mkdir -p $out/bin $out/lib/node_modules

    installDependency() {
      local depSrc="$1"
      for dep in $depSrc/lib/node_modules/*; do
        echo "Linking dependency: $dep"
        ln -s "$dep" $out/lib/node_modules/
      done
    }

    installDependency ${eslint-plugin-react}
    installDependency ${eslint-plugin-babel}
    installDependency ${eslint-plugin-import}
    installDependency ${eslint-plugin-flowtype}
    installDependency ${babel-eslint}

    ln -s ${eslint}/bin/eslint $out/bin/
    wrapProgram $out/bin/eslint --set NODE_PATH $out/lib/node_modules
  '';
}
