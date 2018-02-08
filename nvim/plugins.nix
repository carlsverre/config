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
    name = "deoplete-nvim-2018-01-24";
    src = fetchgit {
      url = "https://github.com/Shougo/deoplete.nvim";
      rev = "a338ca8bbee086cc7b9265ae181f22de86d38491";
      sha256 = "10ah1y29dpipshhv146ny9ms2w3w5f7yr32rgqh6r06mi7zbajk3";
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

  ctrlp-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "ctrlp-vim-2018-01-15";
    src = fetchgit {
      url = "https://github.com/ctrlpvim/ctrlp.vim";
      rev = "88abbcb926a415b789ff648cbdc86ed4b353bfc1";
      sha256 = "1ypfx2n5ghbvzd73bn4srhrc3w8yl1y2jrzib1glas94zf6dclf8";
    };
    dependencies = [];

  };

  jedi-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "jedi-vim-2018-01-15";
    src = fetchgit {
      url = "https://github.com/davidhalter/jedi-vim";
      rev = "510b1c94e48b226b5ede11b716441ae064fc997e";
      sha256 = "0f6m3ilshpjjxkd9mrafqw13brnas7avi9ha923r34n1yvqpqhmc";
    };
    dependencies = [];

  };

  vim-go = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-go-2018-01-22";
    src = fetchgit {
      url = "https://github.com/fatih/vim-go";
      rev = "5a205d3a5741a68a47804bfda15121092ae1db3b";
      sha256 = "1na3dv321c861fks9f9g6xhsc8mx924838sqrq7xfzchnd66q97b";
    };
    dependencies = [];

  };

  vim-terraform = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-terraform-2018-01-23";
    src = fetchgit {
      url = "https://github.com/hashivim/vim-terraform";
      rev = "33c0631028a2c3e20f634bc9cffcf3e4175126c2";
      sha256 = "16hblij2dx03y8fvxpjcygvsmgkfdipr2c8dpgh9rwxkfvcc2sja";
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
    name = "vim-grepper-2018-01-18";
    src = fetchgit {
      url = "https://github.com/mhinz/vim-grepper";
      rev = "bb66c6623fbeff1b141fe4d385d4be7ff9f009d1";
      sha256 = "0z8g8wimvs09sirvkc63lszi4s714bmsxd6ds0inz14i2jh3qm1n";
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
    name = "vim-javascript-2018-01-10";
    src = fetchgit {
      url = "https://github.com/pangloss/vim-javascript";
      rev = "4c0a554423df72ecb8d13b143afa7a4cfcb994ec";
      sha256 = "01lbkcfjqwrn2pbxz1jj8g2vxasc2i7s6nc7665s1warn066ykjr";
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

  nerdtree = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "nerdtree-2018-01-07";
    src = fetchgit {
      url = "https://github.com/scrooloose/nerdtree";
      rev = "68572ef46143c5c7d420a6ec86f1ec4595765ce5";
      sha256 = "06zkgmawppm93h0k3i5x4y6scgnr4kj92x4xmh3n7zf8jczkxf52";
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
    name = "vim-airline-2018-01-21";
    src = fetchgit {
      url = "https://github.com/vim-airline/vim-airline";
      rev = "c2ffb8b3ec114301795036f7bf22995746d2acaf";
      sha256 = "0al2fixvhfxfvj8pi6lylb1a0zbxaswi8v832h1sba5pagfiki68";
    };
    dependencies = [];

  };

  vim-airline-themes = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-airline-themes-2018-01-05";
    src = fetchgit {
      url = "https://github.com/vim-airline/vim-airline-themes";
      rev = "4b7f77e770a2165726072a2b6f109f2457783080";
      sha256 = "02wbch9mbj0slafd5jrklmyawrxpisf8c3f5c72gq30j8hlyb86n";
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

  ale = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "ale-2018-02-06";
    src = fetchgit {
      url = "https://github.com/w0rp/ale";
      rev = "a3329ef3fc44a04a2617941eb46deef6c184f4af";
      sha256 = "0lyn35wbnx8rpfh5hlkmqisq1nk3b7gga9kyrnc9yyidcblsjajr";
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
    name = "deoplete-go-2018-01-23";
    src = fetchgit {
      url = "https://github.com/zchee/deoplete-go";
      rev = "4b22122884d8768695241f7810dd5abcbe4f6513";
      sha256 = "1ad53p0qvfkwqrvw1g0j8dm9j4vkk09awdpqbp9pi8z6vd8d4hbp";
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
