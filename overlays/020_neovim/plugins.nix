{ pkgs, fetchFromGitHub, fetchgit,
  python3, stdenv, cmake, boost, icu, readline, ncurses,
  fetchurl, nodejs-10_x
}:

let
  buildVimPluginFrom2Nix = pkgs.vimUtils.buildVimPluginFrom2Nix;
in {
  pluginDictionaries = [
    { name = "vim-colors-solarized"; }
    { name = "nerdtree"; }
    { name = "vim-gitgutter"; }
    { name = "vim-fugitive"; }
    { name = "vim-visual-multi"; }
    { name = "ale"; }
    { name = "ctrlp-vim"; }
    { name = "cpsm"; }
    { name = "vim-airline"; }
    { name = "vim-airline-themes"; }
    { name = "undotree"; }
    { name = "vim-grepper"; }
    { name = "deoplete-nvim"; }
    { name = "vim-rooter"; }
    { name = "vimoutliner"; }
    { name = "LanguageClient-neovim"; }
    { name = "vim-rtags"; }
    { name = "deoplete-rtags"; }

    # nix
    { name = "vim2nix"; }
    { name = "vim-nix"; }

    # javascript
    { name = "vim-javascript"; }
    { name = "vim-jsx"; }
    { name = "yats-vim"; }
    { name = "nvim-typescript"; }

    # python
    { name = "deoplete-jedi"; }
    { name = "python-syntax"; }
    { name = "jedi-vim"; }

    # go
    { name = "deoplete-go"; }
    { name = "vim-go"; }

    # terraform
    { name = "vim-terraform"; }

    # graphql
    { name = "vim-graphql"; }

    # rust
    { name = "rust-vim"; }

    # reason
    { name = "vim-reason-plus"; }
  ];

  knownPlugins = {
    vim-addon-manager = pkgs.vimPlugins.vim-addon-manager;
    vim2nix = pkgs.vimPlugins.vim2nix;

    # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    # Update the following packages manually, don't use update-plugins
    # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    LanguageClient-neovim = buildVimPluginFrom2Nix rec {
      version = "0.1.146";
      name = "LanguageClient-neovim-${version}";

      src = fetchgit {
        url = "https://github.com/autozimu/LanguageClient-neovim";
        rev = "${version}";
        sha256 = "1xz2z49z13j3b64qbiy9r6appv6pwprgk69mkamw675wqamny395";
      };
      dependencies = [];

      lc-bin = fetchurl {
        url = "https://github.com/autozimu/LanguageClient-neovim/releases/download/${version}/languageclient-${version}-x86_64-unknown-linux-musl";
        sha256 = "1gv1cdg06vq1hgq79k4m17gih175alsxqpii1076acbc06xy5iqg";
      };

      buildPhase = ''
        cp ${lc-bin} bin/languageclient
        chmod a+x bin/languageclient
      '';
    };

    nvim-typescript = buildVimPluginFrom2Nix {
      name = "nvim-typescript-2019-02-17";
      src = fetchgit {
        url = "https://github.com/mhartington/nvim-typescript";
        rev = "2fd4da80cd31cd0314b437a9f68b6536ec67b2a2";
        sha256 = "1hykl7q6f6qi54dmw4ggk1jzjizy9zy6inwkm24kxfafq8n79gh9";
      };
      dependencies = [];
      buildInputs = [
        nodejs-10_x
        pkgs.nodePackages.typescript
      ];

      buildPhase = ''
        pushd rplugin/node/nvim_typescript
        mkdir -p node_modules/@types
        ln -sfv ${pkgs.nodePackages."@types/tmp"}/lib/node_modules/@types/tmp node_modules/@types
        ln -sfv ${pkgs.nodePackages."@types/node"}/lib/node_modules/@types/node node_modules/@types
        ln -sfv ${pkgs.nodePackages.tmp}/lib/node_modules/tmp node_modules
        ln -sfv ${pkgs.nodePackages.neovim}/lib/node_modules/neovim node_modules
        ln -sfv ${pkgs.nodePackages.lodash}/lib/node_modules/lodash node_modules
        ln -sfv ${pkgs.nodePackages.typescript}/lib/node_modules/typescript node_modules
        npm run build
        popd
      '';
    };

    # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    # Put the output of update plugins here
    # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    yats-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "yats-vim-2019-05-05";
      src = fetchgit {
        url = "https://github.com/HerringtonDarkholme/yats.vim";
        rev = "80ae726dfdc87ef25df3225c35d8ba3fd10a36c0";
        sha256 = "0ds96zhiihkjhsfbxmrh149a656y5xw6fl7v5hih72lzvnplzi5z";
      };
      dependencies = [];

    };

    vim-nix = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-nix-2019-06-03";
      src = fetchgit {
        url = "https://github.com/LnL7/vim-nix";
        rev = "a3eed01f4de995a51dfdd06287e44fcb231f6adf";
        sha256 = "0pwdfwws1dj3705m00ghw3dvym5zbm00bfsj023gmbp6vr8wn6yi";
      };
      dependencies = [];

    };

    deoplete-nvim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "deoplete-nvim-2019-06-04";
      src = fetchgit {
        url = "https://github.com/Shougo/deoplete.nvim";
        rev = "29ac14bce25a7066dd417aab0256cd230ec3f7a7";
        sha256 = "1dc006xxc7zkv13mzkskc2mwhn84grms08l79259xqs98sy5wh6z";
      };
      dependencies = [];

    };

    vim-gitgutter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-gitgutter-2019-06-03";
      src = fetchgit {
        url = "https://github.com/airblade/vim-gitgutter";
        rev = "a4e8d3f188180114501a77baa005e408cfd1f0f6";
        sha256 = "1qx6j45xkaj1f5l22paqh5xg42akdf9blclkblxih0123x8nwgqw";
      };
      dependencies = [];

    };

    vim-rooter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-rooter-2019-05-18";
      src = fetchgit {
        url = "https://github.com/airblade/vim-rooter";
        rev = "eef98131fef264d0f4e4f95c42e0de476c78009c";
        sha256 = "144wwvi295q387w6cy9mv2inzla8ngd735gmf65lf33llp8hga59";
      };
      dependencies = [];

    };

    vim-colors-solarized = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-colors-solarized-2011-05-09";
      src = fetchgit {
        url = "https://github.com/altercation/vim-colors-solarized";
        rev = "528a59f26d12278698bb946f8fb82a63711eec21";
        sha256 = "05d3lmd1shyagvr3jygqghxd3k8a4vp32723fvxdm57fdrlyzcm1";
      };
      dependencies = [];

    };

    ctrlp-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "ctrlp-vim-2019-02-09";
      src = fetchgit {
        url = "https://github.com/ctrlpvim/ctrlp.vim";
        rev = "2e773fd8c7548526853fff6ee2e642eafbbe3d04";
        sha256 = "0jvl4ydxmqnbcrzw71jf64vqlnc91970b25r6xl08a0lfb9xi3vd";
      };
      dependencies = [];

    };

    jedi-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "jedi-vim-2019-04-28";
      src = fetchgit {
        url = "https://github.com/davidhalter/jedi-vim";
        rev = "69aa410afaefbecbcaac2a8254af7bed290d6927";
        sha256 = "0wd29y66k12rndh1zf3wfdz3gqv25dahf0m61rg3zii6dcyk0qsd";
      };
      dependencies = [];

    };

    vim-go = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-go-2019-06-02";
      src = fetchgit {
        url = "https://github.com/fatih/vim-go";
        rev = "2d2f5b35c9fc8cdecb5ec7c9cb7a606cc5262334";
        sha256 = "06km40yq56h96hapnj6krmhxmcg0shnyzf4msabbzlsrgi6amiv9";
      };
      dependencies = [];

    };

    vim-terraform = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-terraform-2019-06-03";
      src = fetchgit {
        url = "https://github.com/hashivim/vim-terraform";
        rev = "ffdee14ef1babdb45acf0710e0aaf54fcfc65de0";
        sha256 = "1l5ywl3rkhxvzhdks9f4pllfhlm8pws6rdb6j3sdhf6jfh2w8lcy";
      };
      dependencies = [];

    };

    python-syntax = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "python-syntax-2015-11-01";
      src = fetchgit {
        url = "https://github.com/hdima/python-syntax";
        rev = "69760cb3accce488cc072772ca918ac2cbf384ba";
        sha256 = "1ix7li8sjcn3i3g9jm2jng1gkjqh8r11qccfdblkjv7wxxzwpg01";
      };
      dependencies = [];

    };

    vim-graphql = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-graphql-2019-02-13";
      src = fetchgit {
        url = "https://github.com/jparise/vim-graphql";
        rev = "792c7bcb138c1e787a7527f16ce63e8cf53df6ba";
        sha256 = "1hncf7kjn6acji67x263xraqlvdg4kszwhlzcggym81mcxmpmzl6";
      };
      dependencies = [];

    };

    vim-rtags = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-rtags-2018-07-22";
      src = fetchgit {
        url = "https://github.com/lyuts/vim-rtags";
        rev = "3ef48de532c2e875f0fc3c33b34befed2bf37016";
        sha256 = "03mrs1ggpszppvga8bbrjgay82f4p69n0a7harzdcvfmdawzp69i";
      };
      dependencies = [];

    };

    undotree = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "undotree-2019-03-13";
      src = fetchgit {
        url = "https://github.com/mbbill/undotree";
        rev = "be23eacb2a63380bd79e207a738c728214ecc9d3";
        sha256 = "00zyvff32zp7pyjzkq8da9xhr378mlpi8gj717yfr9wbwwarwfd7";
      };
      dependencies = [];

    };

    vim-visual-multi = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-visual-multi-2019-06-03";
      src = fetchgit {
        url = "https://github.com/mg979/vim-visual-multi";
        rev = "727095b35430f0c7e4344cecfa3bf3d5aced2323";
        sha256 = "0nchwk8v45rhsni6ccl9vz54f7hzykpq4c1argm2zcs0f1q55kwl";
      };
      dependencies = [];

    };

    vim-grepper = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-grepper-2019-05-31";
      src = fetchgit {
        url = "https://github.com/mhinz/vim-grepper";
        rev = "a73a9dc920bd0b3ba8b298c258bd4d4814d9a162";
        sha256 = "15dcrla2z1r5phabfn72b6vbsyji8nsw3g5lif14pkg7ps3py79n";
      };
      dependencies = [];

    };

    vim-jsx = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-jsx-2018-08-07";
      src = fetchgit {
        url = "https://github.com/mxw/vim-jsx";
        rev = "ffc0bfd9da15d0fce02d117b843f718160f7ad27";
        sha256 = "0ff4w5n0cvh25mkhiq0ppn0w0lzc6sds1zwvd5ljf0cljlkm3bbg";
      };
      dependencies = [];

    };

    cpsm = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "cpsm-2018-09-07";
      src = fetchgit {
        url = "https://github.com/nixprime/cpsm";
        rev = "900023c56dfdd200841d5c2f2f7000f332d2614f";
        sha256 = "1p1ry11f39fcz32i3b3p0p8n99qrnvrx4d7p0123123dj7wbxk3p";
      };
      dependencies = [];
      buildInputs = [
        python3
        stdenv
        cmake
        boost
        icu
        ncurses
      ];
      buildPhase = ''
        patchShebangs .
        export PY3=ON
        ./install.sh
      '';
    };

    vim-javascript = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-javascript-2019-04-16";
      src = fetchgit {
        url = "https://github.com/pangloss/vim-javascript";
        rev = "ee445807a71ee6933cd6cbcd74940bc288815793";
        sha256 = "0x4cscpfll8m7f9hvx4fjxff5vscz4kzvs14ai1sdg75b6dngxl0";
      };
      dependencies = [];

    };

    vim-reason-plus = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-reason-plus-2019-05-11";
      src = fetchgit {
        url = "https://github.com/reasonml-editor/vim-reason-plus";
        rev = "6f3c92a4dfc18ffd497eec2d1c2c0ea7c0056eb5";
        sha256 = "0al370a6sj2lz3m8x96byixd4f236f1vq95j3d7n6b7a3sa0n3j6";
      };
      dependencies = [];

    };

    rust-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "rust-vim-2019-05-19";
      src = fetchgit {
        url = "https://github.com/rust-lang/rust.vim";
        rev = "53f40ec6c628099e353f25cabd54e5047c28d81d";
        sha256 = "162aa8l4wkssxdw5k3nvbzmqacjkdiy882hhi6mr5596a8wg58js";
      };
      dependencies = [];

    };

    deoplete-rtags = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "deoplete-rtags-2020-02-29";
      src = fetchgit {
        url = "https://github.com/carlsverre/deoplete-rtags";
        rev = "bc531ca704349912350982ca5e788a3b73f56bf9";
        sha256 = "0k0p7k32m5xhdkckvcs6y2ngshjvs54jzjw1aq5yh02cacxbnj0n";
      };
      dependencies = [];

    };

    nerdtree = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "nerdtree-2019-05-09";
      src = fetchgit {
        url = "https://github.com/scrooloose/nerdtree";
        rev = "67fa9b3116948466234978aa6287649f98e666bd";
        sha256 = "0pzkcpqaalx3jncxfd3yf1ml7q5kkw4z1wqshilkr55nrb26chdg";
      };
      dependencies = [];

    };

    vim-fugitive = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-fugitive-2019-06-03";
      src = fetchgit {
        url = "https://github.com/tpope/vim-fugitive";
        rev = "a135d1096740e6a4c133be195fd14948128e8d77";
        sha256 = "0bny24a2i78zi1pa8lwqvb5j3qp53hahs8m6rpknbkpi2pm7z5qa";
      };
      dependencies = [];

    };

    vim-airline = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-airline-2019-06-03";
      src = fetchgit {
        url = "https://github.com/vim-airline/vim-airline";
        rev = "48d9d5e901b3d914428094f5a5235aba95ca138b";
        sha256 = "0r2hfm9yg890dyfvcnqkaqzdm41s7x8gaybf5pzl4vka2g4jb6ay";
      };
      dependencies = [];

    };

    vim-airline-themes = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-airline-themes-2019-05-06";
      src = fetchgit {
        url = "https://github.com/vim-airline/vim-airline-themes";
        rev = "e6f233231b232b6027cde6aebeeb18d9138e5324";
        sha256 = "1sb7nb7j7bz0pv1c9bgdy0smhr0jk2b1vbdv9yzghg5lrknpsbr6";
      };
      dependencies = [];

    };

    vimoutliner = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vimoutliner-2018-07-04";
      src = fetchgit {
        url = "https://github.com/vimoutliner/vimoutliner";
        rev = "aad0a213069b8a1b5de91cca07d153fc8352c957";
        sha256 = "0pgkgs6xky0skhpp3s9vrw3h48j80im0j39q4vc2b3pd1ydy6rx2";
      };
      dependencies = [];

    };

    ale = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "ale-2019-06-03";
      src = fetchgit {
        url = "https://github.com/w0rp/ale";
        rev = "eb6015c6fd43d1630046556b2598e8c52c203e6a";
        sha256 = "133midnhkw5pd5y7p03ghiamxnqqpcmgzbncshx9s4jgwzbsrd1q";
      };
      dependencies = [];

    };

    deoplete-go = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "deoplete-go-2019-04-27";
      src = fetchgit {
        url = "https://github.com/zchee/deoplete-go";
        rev = "33e229d2d9b61aab0c11ebc07aae41282731bdef";
        sha256 = "0i8nhz41ik568gimy1f0vjwq473x0hzszi7g4yvjry00lkg4sjq6";
      };
      dependencies = [];
      buildInputs = [ python3 ]; 
      buildPhase = ''
        pushd ./rplugin/python3/deoplete/ujson
        python3 setup.py build --build-base=$PWD/build --build-lib=$PWD/build
        popd
        find ./rplugin/ -name "ujson*.so" -exec mv -v {} ./rplugin/python3/ \;
      '';
    };

    deoplete-jedi = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "deoplete-jedi-2019-05-22";
      src = fetchgit {
        url = "https://github.com/zchee/deoplete-jedi";
        rev = "55471c298412ea3017b0189fd96c032a780963e1";
        sha256 = "1s85a6inp4j1k2llg8vgdiwb4n1rk9hdahrczl32fwxi95c0fv41";
      };
      dependencies = [];

    };
  };
}
