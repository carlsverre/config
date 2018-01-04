{ pkgs, fetchFromGitHub, fetchgit,
  python3, stdenv, cmake, boost, icu
}:

let
  buildVimPluginFrom2Nix = pkgs.vimUtils.buildVimPluginFrom2Nix;
in {
  vim-addon-manager = pkgs.vimPlugins.vim-addon-manager;
  vim2nix = pkgs.vimPlugins.vim2nix;

  vim-nix = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-nix-2017-04-30";
    src = fetchgit {
      url = "https://github.com/LnL7/vim-nix";
      rev = "867488a04c2ddc47f0f235f37599a06472fea299";
      sha256 = "1mwc06z9q45cigyxd0r9qnfs4ph6lbcwx50rf5lmpavakcn3vqir";
    };
    dependencies = [];

  };

  deoplete-nvim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "deoplete-nvim-2017-12-16";
    src = fetchgit {
      url = "https://github.com/Shougo/deoplete.nvim";
      rev = "28e2a57d891b69080ddd3a1fc56c69c78b3c21bc";
      sha256 = "1m0wwbpd81dhrny32xkwpfbhm94xyh462v3vmgics0fbjgn6b27s";
    };
    dependencies = [];

  };

  vim-gitgutter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-gitgutter-2017-11-01";
    src = fetchgit {
      url = "https://github.com/airblade/vim-gitgutter";
      rev = "1e60667322b7cd1bfcba98762fbba746a888d21a";
      sha256 = "1g9giir7gmkp6n6w4z20qm2dyq00w2a8f573c0b8b27cj36ri0wq";
    };
    dependencies = [];

  };

  vim-rooter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-rooter-2017-11-20";
    src = fetchgit {
      url = "https://github.com/airblade/vim-rooter";
      rev = "3509dfb80d0076270a04049548738daeedf6dfb9";
      sha256 = "03j26fw0dcvcc81fn8hx1prdwlgnd3g340pbxrzgbgxxq5kr0bwl";
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

  vim-freemarker = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-freemarker-2017-07-08";
    src = fetchgit {
      url = "https://github.com/andreshazard/vim-freemarker";
      rev = "993bda23e72e4c074659970c1e777cb19d8cf93e";
      sha256 = "1dixs9dbsn6k96x315dysrkmd8d6v0g9nn8nmvsf3i7as6xag0c3";
    };
    dependencies = [];

  };

  neomake = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "neomake-2017-12-14";
    src = fetchgit {
      url = "https://github.com/benekastah/neomake";
      rev = "568b7e1093d282026c6abc4f45a5079dbf72adb4";
      sha256 = "16pgzjnrs9wn6c2lrs5w9sjy5l30z37xpvswvl0qgl3y46sgxz8c";
    };
    dependencies = [];

  };

  ctrlp-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "ctrlp-vim-2017-08-30";
    src = fetchgit {
      url = "https://github.com/ctrlpvim/ctrlp.vim";
      rev = "bde7a2950adaa82e894d7bdf69e3e7383e40d229";
      sha256 = "19q3cfs3rd3q1xfhyz55r1c3750nrjvwz7jxnhqqn751zgimnsyl";
    };
    dependencies = [];

  };

  jedi-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "jedi-vim-2017-12-14";
    src = fetchgit {
      url = "https://github.com/davidhalter/jedi-vim";
      rev = "31ebd30c31f906a734c28e5e893afdfe2334efea";
      sha256 = "0dpv32cifzpqw4ailyr32aby0zhkxjnk9ksgbfzsklaqd14ha2d0";
    };
    dependencies = [];

  };

  vim-go = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-go-2017-12-17";
    src = fetchgit {
      url = "https://github.com/fatih/vim-go";
      rev = "f4b4ba13f95883cbb4f7c43b871a480932614e0f";
      sha256 = "137crjw2bj8zdspk2j937b6z1li4v0z9pns94giyd7r3ixqra6mw";
    };
    dependencies = [];

  };

  vim-terraform = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-terraform-2017-11-19";
    src = fetchgit {
      url = "https://github.com/hashivim/vim-terraform";
      rev = "8d2ffca6628e42bc1a20d1fd1ff7d3542f4d580a";
      sha256 = "12z2r1hazpnx6hxzkwmi1lh8f3q8nvnl7qxpi4jwn1skg8z1q4q1";
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

  nrun-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "nrun-vim-2017-10-19";
    src = fetchgit {
      url = "https://github.com/jaawerth/nrun.vim";
      rev = "847dd4887eded123314896caf50b1c9a8502e599";
      sha256 = "1cqpkd2czj9llx27psnn5zi9q874lv1bdsmq14f4rmrhi2kwmmqh";
    };
    dependencies = [];

  };

  tagbar = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "tagbar-2017-12-17";
    src = fetchgit {
      url = "https://github.com/majutsushi/tagbar";
      rev = "387bbadda98e1376ff3871aa461b1f0abd4ece70";
      sha256 = "0srmslg0v1a7zhzz0wgzgv7jyr0j3q9m766qzb7zimkkb32fcbx9";
    };
    dependencies = [];

  };

  undotree = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "undotree-2017-10-26";
    src = fetchgit {
      url = "https://github.com/mbbill/undotree";
      rev = "cdbb9022b8972d3e156b8d60af33bf795625b058";
      sha256 = "0y62hp8k2kbrq0jhxj850f706rqjv2dkd7dxhz458mrsdk60f253";
    };
    dependencies = [];

  };

  vim-grepper = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-grepper-2017-12-14";
    src = fetchgit {
      url = "https://github.com/mhinz/vim-grepper";
      rev = "df33f2bb8af0d03ec8358e6aab80866c8d9fdab9";
      sha256 = "0mwfvp54z9wypq6m8p6yvgfaahmgf2lj8pzl47g3i5bgq3z1bhk5";
    };
    dependencies = [];

  };

  vim-jsx = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-jsx-2017-10-31";
    src = fetchgit {
      url = "https://github.com/mxw/vim-jsx";
      rev = "5b968dfa512c57c38ad7fe420f3e8ab75a73949a";
      sha256 = "1z3yhhbmbzfw68qjzyvpbmlyv2a1p814sy5q2knn04kcl30vx94a";
    };
    dependencies = [];

  };

  cpsm = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "cpsm-2017-12-12";
    src = fetchgit {
      url = "https://github.com/nixprime/cpsm";
      rev = "c4bebc49e71404a3ce63df8c598a3228a5a3e0e6";
      sha256 = "18zchcssmq4cyrcwp7n3wb8896p93d8447avcd71j0agw9rd5x38";
    };
    dependencies = [];
    buildInputs = [
      python3
      stdenv
      cmake
      boost
      icu
    ];
    buildPhase = ''
      patchShebangs .
      export PY3=ON
      ./install.sh
    '';
  };

  vim-javascript = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-javascript-2017-12-09";
    src = fetchgit {
      url = "https://github.com/pangloss/vim-javascript";
      rev = "7c73d8e1f9ce020ee8ea2ab0af60e9f8fef6c90d";
      sha256 = "1z7f25084frhildj1lla7445sc9na7vavm2dsbzq0lqkgmbqmbpw";
    };
    dependencies = [];

  };

  vim-reason = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-reason-2017-11-06";
    src = fetchgit {
      url = "https://github.com/reasonml-editor/vim-reason";
      rev = "d8f0885979d7b1053e57bb36bb5311c9177d9f5c";
      sha256 = "0qqz03167hxff69favp9vwf05mn0kfqxps2qzkfdkjpq6ffkavia";
    };
    dependencies = [];

  };

  neoformat = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "neoformat-2017-12-04";
    src = fetchgit {
      url = "https://github.com/sbdchd/neoformat";
      rev = "81d2d19e6bb65432b95f930af38ca6dab89d0434";
      sha256 = "13ivv4ymkxk5rl5hkrlb4r328vhhpw6il0zdsynp9j41d4qq198s";
    };
    dependencies = [];

  };

  nerdtree = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "nerdtree-2017-12-17";
    src = fetchgit {
      url = "https://github.com/scrooloose/nerdtree";
      rev = "509122df20e200b50e887c32cb7d92b19171a4ab";
      sha256 = "08vnv84s3asd3k7mim26yg1wr56lggbpsa9qzky2j2jhgm15nzj2";
    };
    dependencies = [];

  };

  vim-delve = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-delve-2017-12-01";
    src = fetchgit {
      url = "https://github.com/sebdah/vim-delve";
      rev = "386a25aba597f214f862a3f0a693ccf22c5f1dfd";
      sha256 = "1ajry62rmdm85qmi9aksdlhw74ckbbvg84j27ybz07687vmvxsl7";
    };
    dependencies = [];

  };

  vim-multiple-cursors = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-multiple-cursors-2017-08-04";
    src = fetchgit {
      url = "https://github.com/terryma/vim-multiple-cursors";
      rev = "a97dab5bc440bf0a7b62bb2de4479963a888f4ff";
      sha256 = "1ac5l5h138ns9z9ni4qbcykkg9yfpjjalk0g9wrra4rp0nlakaqk";
    };
    dependencies = [];

  };

  vim-airline = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-airline-2017-11-27";
    src = fetchgit {
      url = "https://github.com/vim-airline/vim-airline";
      rev = "6c8d0f5e6af878db71b2dc44ccf1d1417381d6a0";
      sha256 = "0azrapbb3w84c62kcbrycm75qmwdfz38852sv7cccwb7v1xgj9ab";
    };
    dependencies = [];

  };

  vim-airline-themes = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-airline-themes-2017-11-18";
    src = fetchgit {
      url = "https://github.com/vim-airline/vim-airline-themes";
      rev = "52dfa2b6c0dc2fd7a0e92954030893de3d173105";
      sha256 = "0m65xmg259781r1wk8dz0d0diiayqyl1wahsb2fdqs369wwx4irr";
    };
    dependencies = [];

  };

  vimoutliner = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vimoutliner-2017-08-02";
    src = fetchgit {
      url = "https://github.com/vimoutliner/vimoutliner";
      rev = "c13141d604959d84225c3a53dc4b0ef5ae8b2bfe";
      sha256 = "1bg45cnpvnk2k7r6l2n3sz0cw2lhrglphak10yp11yqf4q1rxl7x";
    };
    dependencies = [];

  };

  vim-easytags = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-easytags-2015-07-01";
    src = fetchgit {
      url = "https://github.com/xolox/vim-easytags";
      rev = "72a8753b5d0a951e547c51b13633f680a95b5483";
      sha256 = "0i8ha1fa5d860b1mi0xp8kwsgb0b9vbzcg1bldzv6s5xd9yyi12i";
    };
    dependencies = ["vim-misc"];

  };

  deoplete-go = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "deoplete-go-2017-12-09";
    src = fetchgit {
      url = "https://github.com/zchee/deoplete-go";
      rev = "a6924d473b9a350a2329a541a0ccca858216ea10";
      sha256 = "0rcgvbxjzbfhs0c0gjcfpdnfz2dp1zhhn0q9j9y49bfv7pcb64lk";
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
    name = "deoplete-jedi-2017-12-05";
    src = fetchgit {
      url = "https://github.com/zchee/deoplete-jedi";
      rev = "715acf2847b8fa8d436a10a4c3dfd7187d53b72f";
      sha256 = "12d16z4mvc6aln5vnrdf275ci1w7v454zl9x54khqfikc0pwyjg8";
    };
    dependencies = [];

  };

  vim-misc = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-misc-2015-05-21";
    src = fetchgit {
      url = "git://github.com/xolox/vim-misc";
      rev = "3e6b8fb6f03f13434543ce1f5d24f6a5d3f34f0b";
      sha256 = "0rd9788dyfc58py50xbiaz5j7nphyvf3rpp3yal7yq2dhf0awwfi";
    };
    dependencies = [];

  };
}
