{ pkgs, fetchFromGitHub, fetchgit,
  python3, stdenv, cmake, boost, icu, readline, ncurses,
  fetchurl
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

    # nix
    { name = "vim2nix"; }
    { name = "vim-nix"; }

    # javascript
    { name = "vim-javascript"; }
    { name = "vim-jsx"; }
    { name = "yats-vim"; }

    # python
    { name = "deoplete-jedi"; }
    { name = "python-syntax"; }
    { name = "jedi-vim"; }

    # go
    { name = "deoplete-go"; }
    { name = "vim-go"; }
    { name = "vim-delve"; }

    # terraform
    { name = "vim-terraform"; }

    # graphql
    { name = "vim-graphql"; }

    # rust
    { name = "rust-vim"; }
  ];

  knownPlugins = {
    vim-addon-manager = pkgs.vimPlugins.vim-addon-manager;
    vim2nix = pkgs.vimPlugins.vim2nix;

    # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    # Update LanguageClient-neovim manually, don't use update-plugins
    # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    LanguageClient-neovim = buildVimPluginFrom2Nix rec {
      version = "0.1.141";
      name = "LanguageClient-neovim-${version}";

      src = fetchgit {
        url = "https://github.com/autozimu/LanguageClient-neovim";
        rev = "${version}";
        sha256 = "1qfbaqcs878fl7647cj04489v6pd2r57gypw7fwgidv4k8grfi4k";
      };
      dependencies = [];

      lc-bin = fetchurl {
        url = "https://github.com/autozimu/LanguageClient-neovim/releases/download/${version}/languageclient-${version}-x86_64-unknown-linux-musl";
        sha256 = "0r1ydrrdz7hznn6hnvwl2pq963p75g39hvl10d2mw0hbry8540js";
      };

      buildPhase = ''
        cp ${lc-bin} bin/languageclient
        chmod a+x bin/languageclient
      '';
    };

    # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    # Put the output of update plugins here
    # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    yats-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "yats-vim-2019-03-01";
      src = fetchgit {
        url = "https://github.com/HerringtonDarkholme/yats.vim";
        rev = "efaa6b5bce12f6700cf6a819dd80ddb881355f97";
        sha256 = "1p8d3593paxc89vf86r9pp6i0kzqc5d0036mzfz2j05ivfvc1am0";
      };
      dependencies = [];

    };

    vim-nix = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-nix-2018-08-27";
      src = fetchgit {
        url = "https://github.com/LnL7/vim-nix";
        rev = "be0c6bb409732b79cc86c177ca378b0b334e1efe";
        sha256 = "1ivkwlm6lz43xk1m7aii0bgn2p3225dixck0qyhxw4zxhp2xiz06";
      };
      dependencies = [];

    };

    deoplete-nvim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "deoplete-nvim-2019-03-06";
      src = fetchgit {
        url = "https://github.com/Shougo/deoplete.nvim";
        rev = "d71a470d2fa4a1dac53fd9eb5684cc4ab7e59400";
        sha256 = "0cb87y2pvqj4lw77pvag2vnb9a1jwz41wzdcgqh49z28r0zksskw";
      };
      dependencies = [];

    };

    vim-gitgutter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-gitgutter-2019-03-04";
      src = fetchgit {
        url = "https://github.com/airblade/vim-gitgutter";
        rev = "5c8efd3625b7f5a586ad3ce5922ad45ae5661393";
        sha256 = "16pp8lb35q7dq10knj69h35y88fghvn31xm41lbc0764w66qi2cq";
      };
      dependencies = [];

    };

    vim-rooter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-rooter-2019-02-25";
      src = fetchgit {
        url = "https://github.com/airblade/vim-rooter";
        rev = "7db12da2d63b6da5cdb968b29788de5e2beec14d";
        sha256 = "1dw9d69hvgnsjbj5qksbwb70kpnlba5nnygwq0baclnk7k5x1mbp";
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
      name = "jedi-vim-2019-02-24";
      src = fetchgit {
        url = "https://github.com/davidhalter/jedi-vim";
        rev = "1f7e661d9d29fa1485e781eaa97a4491f952e316";
        sha256 = "1x96bjw25kmwgi86h0ama4xl6qrbyk7yia5fiw9qkicy1j7yk7j1";
      };
      dependencies = [];

    };

    vim-go = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-go-2019-02-27";
      src = fetchgit {
        url = "https://github.com/fatih/vim-go";
        rev = "66d06f380ef3cbced060b4d514413762a4438fb4";
        sha256 = "0140ibil2qq68j4q6fy4v1add219fcsc1zw583vkc78n5zxwwpyp";
      };
      dependencies = [];

    };

    vim-terraform = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-terraform-2019-03-01";
      src = fetchgit {
        url = "https://github.com/hashivim/vim-terraform";
        rev = "0a76763f971d5d2407d954f256c963005b6efc91";
        sha256 = "07pyajcmjrwx080r9dmh3948pyxfaxiq6k7hgbczgsjqzdjvcac3";
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

    undotree = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "undotree-2019-01-30";
      src = fetchgit {
        url = "https://github.com/mbbill/undotree";
        rev = "db0223fc6857c160b2394489094355feb20318f2";
        sha256 = "0ncqwn0gdz23gp9avdqkd8l0z6zc87m0xmi63b0axarp1lfazr56";
      };
      dependencies = [];

    };

    vim-visual-multi = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-visual-multi-2019-02-06";
      src = fetchgit {
        url = "https://github.com/mg979/vim-visual-multi";
        rev = "3becd178d3f4965220824725a78bbae256894935";
        sha256 = "0nyymyrsbn3wyqrdkn9vk20mjfs12mnvba12dq0p7z6fgyp7z8zr";
      };
      dependencies = [];

    };

    vim-grepper = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-grepper-2019-01-22";
      src = fetchgit {
        url = "https://github.com/mhinz/vim-grepper";
        rev = "32c002c239d1838636bd3787012dc319dc4c96ee";
        sha256 = "044h66b33ri3z5dsnz2pbwx362p7nzfhfqhd8jckxrpzlnc803ly";
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
      name = "vim-javascript-2019-02-25";
      src = fetchgit {
        url = "https://github.com/pangloss/vim-javascript";
        rev = "8450f06ec2c22bf33934728953b722a3847bbc18";
        sha256 = "0k6zxqd20n003baczgvqfvscblh4qg9lymc0w91pyz7lk336050h";
      };
      dependencies = [];

    };

    rust-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "rust-vim-2019-02-18";
      src = fetchgit {
        url = "https://github.com/rust-lang/rust.vim";
        rev = "fdb2d39fb04b139fcdb9b707f9b2ccc219566632";
        sha256 = "0vamhy95gkjybikcf5cifdd66scjf4wmjh2nw67f65n4narw1lps";
      };
      dependencies = [];

    };

    nerdtree = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "nerdtree-2019-03-05";
      src = fetchgit {
        url = "https://github.com/scrooloose/nerdtree";
        rev = "e1916d6fe71f5ff84b74dbca881a598fcda877c4";
        sha256 = "14azwy8phps3sy5rb9w9z2xrjvlpspwwp8npd6qzwggqmr0w5336";
      };
      dependencies = [];

    };

    vim-delve = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-delve-2018-12-10";
      src = fetchgit {
        url = "https://github.com/sebdah/vim-delve";
        rev = "ad30cab549ab8b6014308fe7c095325c08dec211";
        sha256 = "10qkmdy2i9nikn82sdfvsa712lclc2y35jg4lvj98rfnxwks0bvc";
      };
      dependencies = [];

    };

    vim-fugitive = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-fugitive-2019-03-01";
      src = fetchgit {
        url = "https://github.com/tpope/vim-fugitive";
        rev = "bd0b87d36ad80e8acd94f22028d15ebb441b1c28";
        sha256 = "1q4k6iwzjn9xxy57mvr39y87hdv07jw7pls3kb3cac8hm5b9gaba";
      };
      dependencies = [];

    };

    vim-airline = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-airline-2019-02-22";
      src = fetchgit {
        url = "https://github.com/vim-airline/vim-airline";
        rev = "1c3ae6077af76927f82f87e05a7b9fdfba47ce2c";
        sha256 = "1s6il4swnb68n3wskpp5xdsalpcyhchfw5l3y3n4qag855jixf8p";
      };
      dependencies = [];

    };

    vim-airline-themes = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-airline-themes-2018-11-15";
      src = fetchgit {
        url = "https://github.com/vim-airline/vim-airline-themes";
        rev = "3bfe1d00d48f7c35b7c0dd7af86229c9e63e14a9";
        sha256 = "1zwygmwa7gqppa49d2rsdwk5zv8rzj059bbclhs492bmbb5wyyz8";
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
      name = "ale-2019-03-06";
      src = fetchgit {
        url = "https://github.com/w0rp/ale";
        rev = "6aef52f026117e49869080698e0e303d95e83a9a";
        sha256 = "1xvgs0whrnx1pm92sk4s7w4m1wxwr1p4mc4d854vrig728wzyh0b";
      };
      dependencies = [];

    };

    deoplete-go = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "deoplete-go-2019-03-02";
      src = fetchgit {
        url = "https://github.com/zchee/deoplete-go";
        rev = "cb8504f09a04fac9325a5e2aa4a11c2400b1312d";
        sha256 = "1jw3mp3h4klwr6y0w298w91wl222njwv1ars3cfh1zms8y7iii56";
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
      name = "deoplete-jedi-2019-03-02";
      src = fetchgit {
        url = "https://github.com/zchee/deoplete-jedi";
        rev = "f89669d2b089d75f1eccbf8d14277b74857a850d";
        sha256 = "0v0jisqzxb3f77xsqcy5i0s4ik0g66bjfh110111lpynki7lcdyc";
      };
      dependencies = [];

    };
  };
}
