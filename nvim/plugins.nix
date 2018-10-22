{ pkgs, fetchFromGitHub, fetchgit,
  python3, stdenv, cmake, boost, icu, readline, ncurses
}:

let
  buildVimPluginFrom2Nix = pkgs.vimUtils.buildVimPluginFrom2Nix;
in {
  vim-addon-manager = pkgs.vimPlugins.vim-addon-manager;
  vim2nix = pkgs.vimPlugins.vim2nix;

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
    name = "deoplete-nvim-2018-10-22";
    src = fetchgit {
      url = "https://github.com/Shougo/deoplete.nvim";
      rev = "7a62927dc5f1ab7a944915d89c9b19814f7d21a4";
      sha256 = "1cg56s5i4nxb708qxy8s9czshrbm2hkyhqh0kj2w4nm0c9wjgr1m";
    };
    dependencies = [];

  };

  vim-gitgutter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-gitgutter-2018-10-18";
    src = fetchgit {
      url = "https://github.com/airblade/vim-gitgutter";
      rev = "0597380f6b22f43a3ea6ff8364d5c239bb2504ea";
      sha256 = "18v4y616q29al2lx62gkcv5q9ka8042dk8y6i9b5jmyjfwps0q53";
    };
    dependencies = [];

  };

  vim-rooter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-rooter-2018-09-28";
    src = fetchgit {
      url = "https://github.com/airblade/vim-rooter";
      rev = "d5bb76e31c030e6b9197491ff521eca49332564b";
      sha256 = "1g1x7pkhalg354i41ch0wf2hmyjd33jsrc14lc8m732wxh65i0wa";
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
    name = "ctrlp-vim-2018-09-14";
    src = fetchgit {
      url = "https://github.com/ctrlpvim/ctrlp.vim";
      rev = "ebc568c3992d9002d1d35b85737dfa0d9ce70d9f";
      sha256 = "0hh4wcyx0smv70axn18gdscmcmhwbbccam9klx0c613qccl5w70i";
    };
    dependencies = [];

  };

  jedi-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "jedi-vim-2018-10-14";
    src = fetchgit {
      url = "https://github.com/davidhalter/jedi-vim";
      rev = "b6dfc5fd49c26d4dbe9f54c814956567a7a9b3a8";
      sha256 = "11wvynjl1m23vdp4wvirhmm7vnpji5affbyhwz67yjkvh6c42xqa";
    };
    dependencies = [];

  };

  vim-go = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-go-2018-10-21";
    src = fetchgit {
      url = "https://github.com/fatih/vim-go";
      rev = "674d0398683c83171f685326098eb5115efece9f";
      sha256 = "13awbmhw2l7qiy0336glzlmm1zvw18qyf6k0fc1h4ixkpv38lqim";
    };
    dependencies = [];

  };

  vim-terraform = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-terraform-2018-08-02";
    src = fetchgit {
      url = "https://github.com/hashivim/vim-terraform";
      rev = "7c11252da45c6508524e022d1f2588134902d8d1";
      sha256 = "1qnjjcin934i7yd2fd0xapraindrpavnik1fasv10x5dw8yzxyrs";
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

  vim-graphql = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-graphql-2018-09-29";
    src = fetchgit {
      url = "https://github.com/jparise/vim-graphql";
      rev = "6a15d21b74bbb3d7ee30b5575ef5c4171fe999ba";
      sha256 = "03l5yj77cgpvq16d59g6mrgacs9rps0ppbaipj5klbp7bi6n02gi";
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
    name = "undotree-2018-10-15";
    src = fetchgit {
      url = "https://github.com/mbbill/undotree";
      rev = "9172c17f6d07405f14707ff273e3ca9f35aa9e42";
      sha256 = "12z9y7lljhq3gsxpn1ivyf2cvasc0br3fdkdhnrz305zxib97r5q";
    };
    dependencies = [];

  };

  vim-grepper = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-grepper-2018-10-14";
    src = fetchgit {
      url = "https://github.com/mhinz/vim-grepper";
      rev = "dcbf3f9863fae143b952db0bd6bacf6180c4853b";
      sha256 = "069w2za10jfhm6mbn0hxaimzppcn217yaxbs7pfyg139in3r6i5p";
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
    name = "vim-javascript-2018-08-29";
    src = fetchgit {
      url = "https://github.com/pangloss/vim-javascript";
      rev = "dd84369d731bcb8feee0901cbb9b63a2b219bf28";
      sha256 = "1ca0dd4niy0lkdslgzfjp8pbr7szx6mgzax451r1c479dkmhh4cl";
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
    name = "nerdtree-2018-10-18";
    src = fetchgit {
      url = "https://github.com/scrooloose/nerdtree";
      rev = "f98078d3ae6d356fcc58a4fc8840eb55b1ea522e";
      sha256 = "0l0przj2dn7hairrzy68jfpxsx5fhg7hrz6hsaj12x5v5bm9rhfk";
    };
    dependencies = [];

  };

  vim-delve = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-delve-2018-02-26";
    src = fetchgit {
      url = "https://github.com/sebdah/vim-delve";
      rev = "2f2a61e3649bc63a53a50f17e23b265e666c5a16";
      sha256 = "15wz19ar2agnkiznawywfps3ia8syv7c2c9f0h5ycd2r1bij1l8s";
    };
    dependencies = [];

  };

  vim-multiple-cursors = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-multiple-cursors-2018-10-16";
    src = fetchgit {
      url = "https://github.com/terryma/vim-multiple-cursors";
      rev = "f4fd6ad4e4075dd14d208af059063f1f3cfb7d55";
      sha256 = "17fgwvs8qyyl1yywbmhb7wsv0i0nzl40bgaqik7w72zgndvai7ig";
    };
    dependencies = [];

  };

  vim-fugitive = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-fugitive-2018-10-21";
    src = fetchgit {
      url = "https://github.com/tpope/vim-fugitive";
      rev = "0fd64f8fbfa7eda26a7dcc7d3102843edbe2324d";
      sha256 = "11kk3xsgqcd7r66yg0fjx0q2x4j8l4inp1qcl915lrnpdjm3k8j7";
    };
    dependencies = [];

  };

  vim-airline = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-airline-2018-10-22";
    src = fetchgit {
      url = "https://github.com/vim-airline/vim-airline";
      rev = "08e9aa5386eecfd6a6cbde1eff240619cd81beed";
      sha256 = "0g9rlr6067sqyp0l4yacnr14phx1wn2jvjcq2x2zwkc0b28hxyrs";
    };
    dependencies = [];

  };

  vim-airline-themes = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-airline-themes-2018-10-22";
    src = fetchgit {
      url = "https://github.com/vim-airline/vim-airline-themes";
      rev = "cdbe8d0d619f9b5e98d379d9cf414b20a49174f2";
      sha256 = "1ih0cvmqzxq8hb0ya78pbnqddcs4vz72kz6n9cvc1rws87dhynj3";
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
    name = "ale-2018-10-22";
    src = fetchgit {
      url = "https://github.com/w0rp/ale";
      rev = "2000436dfd7a25a8e9f66788c94bfb4512adda98";
      sha256 = "173ha2z9i2ma3iyrgy97a06xkaa7igq58rka4z585rbdza6vw8gk";
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
    name = "deoplete-go-2018-10-20";
    src = fetchgit {
      url = "https://github.com/zchee/deoplete-go";
      rev = "8bb6d5f51ca825ef88d474c8aa9231692d6c2961";
      sha256 = "15qwhkx24m7drahksrsvvpdzj9wpm0k1722ry6sdwgd40q8d3jrh";
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
    name = "deoplete-jedi-2018-10-12";
    src = fetchgit {
      url = "https://github.com/zchee/deoplete-jedi";
      rev = "2163374234575cbaeba022aed45de74d0b76c21d";
      sha256 = "0i1la046149hrp0qsf4spkl8a5gm61apidgcgna1f4j36yb9i373";
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
