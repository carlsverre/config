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
    name = "deoplete-nvim-2018-12-17";
    src = fetchgit {
      url = "https://github.com/Shougo/deoplete.nvim";
      rev = "48bcbe06757907de62919d27dc75d51dc1deed3a";
      sha256 = "1f7l8mczp5kl06swwzbdhbjqc9vw9xnyx1pbxla7wly2djjcawh2";
    };
    dependencies = [];

  };

  vim-gitgutter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-gitgutter-2018-12-15";
    src = fetchgit {
      url = "https://github.com/airblade/vim-gitgutter";
      rev = "1d422b9f98194e38bc56e54192c9bc66d95c21f1";
      sha256 = "1xv4brbhpxx23q2wklxxclzj9n1fi34m2rj0syf7ggp9fy7y50dk";
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
    name = "ctrlp-vim-2018-11-22";
    src = fetchgit {
      url = "https://github.com/ctrlpvim/ctrlp.vim";
      rev = "e953ee7a80dc96cd00c20ed6fe82e0e817d977ff";
      sha256 = "1qnh4w9wb0r7lf5sw37kq29rq887hihga3cxw766mk8rwb2ad3kv";
    };
    dependencies = [];

  };

  jedi-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "jedi-vim-2018-12-03";
    src = fetchgit {
      url = "https://github.com/davidhalter/jedi-vim";
      rev = "7f4f2db260e3e693c8b9fc91498f9299c99148c2";
      sha256 = "0rykw5nbk6xxgifav30fmnzwfhbi4mc1qp84p8gc1lv2pajncx31";
    };
    dependencies = [];

  };

  vim-go = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-go-2018-12-17";
    src = fetchgit {
      url = "https://github.com/fatih/vim-go";
      rev = "189676476a638364e76fce9998c37f7ac79f7056";
      sha256 = "1hw3z436x5zcfgicqf4k0abvjww1671lic4pa6yyhxs0c7rzazlc";
    };
    dependencies = [];

  };

  vim-terraform = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-terraform-2018-12-20";
    src = fetchgit {
      url = "https://github.com/hashivim/vim-terraform";
      rev = "0f62e7937781cee672227f292b59ce687b28f037";
      sha256 = "1iwsy5hcsxjzcgksfqwcn8lqwys828dsihazixjv01a31d2wrjsk";
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
    name = "vim-graphql-2018-11-25";
    src = fetchgit {
      url = "https://github.com/jparise/vim-graphql";
      rev = "142f34682e7536d0e0a9d9ebb312fe68677dd241";
      sha256 = "0vg6pja0ja6ck31a33dcmd2mfav0ip8ry99dvk1f39zsj78fbjcb";
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
    name = "vim-grepper-2018-11-08";
    src = fetchgit {
      url = "https://github.com/mhinz/vim-grepper";
      rev = "4a47e20c98eee758b905a2cd7ca29f433c08e7e7";
      sha256 = "14lwf5fmpqd0d6gywld6jmvis1r73i9ib4zlxlb3xkzx6di8kp5a";
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
    name = "vim-javascript-2018-12-15";
    src = fetchgit {
      url = "https://github.com/pangloss/vim-javascript";
      rev = "7201a3b27caa491e697ec9c1bdb63b10623beae1";
      sha256 = "068qkc4kbkwcd6vg97ig33hh3i4yys5w1g69b0mm9ba34krzr687";
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
    name = "nerdtree-2018-12-12";
    src = fetchgit {
      url = "https://github.com/scrooloose/nerdtree";
      rev = "72c3656799289d4635520c28e17f737066ce19d6";
      sha256 = "1dy77vjj2prn0cl2k3cf7bd240nvh95m6h6lpv0zshjzjap7m1fx";
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
    name = "vim-fugitive-2018-12-19";
    src = fetchgit {
      url = "https://github.com/tpope/vim-fugitive";
      rev = "73220820b5eb399d29067f114888da0d8e1e08da";
      sha256 = "16njwddf5kc147kjxhxfmrc39ab2rqbybmpgjpjsd50gbr0y50fa";
    };
    dependencies = [];

  };

  vim-airline = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-airline-2018-12-18";
    src = fetchgit {
      url = "https://github.com/vim-airline/vim-airline";
      rev = "72888d87ea57761f21c9f67cd0c0faa5904795eb";
      sha256 = "0k3c6p3xy6514n1n347ci4q9xjm9wwqirpdysam6f7r39crgmfhd";
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
    name = "ale-2018-12-20";
    src = fetchgit {
      url = "https://github.com/w0rp/ale";
      rev = "73ca1e71918a0b50b7bbcbed91857c3618ad93cc";
      sha256 = "0w481yfkw34cr5ai4kwfb72sf2b5iqdv64b6nc2cpqg48ajlahx5";
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
    name = "deoplete-go-2018-11-23";
    src = fetchgit {
      url = "https://github.com/zchee/deoplete-go";
      rev = "75f3d42ef71a07c06778cab56e76b994a42a55c3";
      sha256 = "1b42mcflc5fzi0fhgr99cyrdapbd79gcwgb4qnqg6b8bbn488kyv";
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
    name = "deoplete-jedi-2018-12-03";
    src = fetchgit {
      url = "https://github.com/zchee/deoplete-jedi";
      rev = "583ee29a0a0fe6206f3f106b8866ff2b663fde74";
      sha256 = "0lbiwk6fc1z9i3sx4y62gsl3yr8pzv09s4wwxq1k8cziddbiypig";
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
