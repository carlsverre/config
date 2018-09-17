{ pkgs, fetchFromGitHub, fetchgit,
  python3, stdenv, cmake, boost, icu, readline, ncurses
}:

let
  buildVimPluginFrom2Nix = pkgs.vimUtils.buildVimPluginFrom2Nix;
in {
  vim-addon-manager = pkgs.vimPlugins.vim-addon-manager;
  vim2nix = pkgs.vimPlugins.vim2nix;

  vim-nix = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-nix-2018-07-01";
    src = fetchgit {
      url = "https://github.com/LnL7/vim-nix";
      rev = "7d71026ba7c2d0a4bdb915e884c4ac8dbdc45bf0";
      sha256 = "084vs1p0qpkc4cx049v3mkyylj1n1yvd45i1sc9qafgp4x5va457";
    };
    dependencies = [];

  };

  deoplete-nvim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "deoplete-nvim-2018-07-10";
    src = fetchgit {
      url = "https://github.com/Shougo/deoplete.nvim";
      rev = "6b377491a77f5ac30b700cdccd18d1fe38d66894";
      sha256 = "01612xzh94ilx6vb9dp3njcz8jasy28c0sjxqv7164mdh0psr5vq";
    };
    dependencies = [];

  };

  vim-gitgutter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-gitgutter-2018-07-06";
    src = fetchgit {
      url = "https://github.com/airblade/vim-gitgutter";
      rev = "6076c9678643a8b2fc9973f16ec9efcd5dbe1aca";
      sha256 = "1dyrll5rm61qdmzkym67hfyw80qnw10s1qrz9ryw3zvh1s2ad43l";
    };
    dependencies = [];

  };

  vim-rooter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-rooter-2018-06-30";
    src = fetchgit {
      url = "https://github.com/airblade/vim-rooter";
      rev = "abcf7c6e69d5486d5244237780940aae5b3550df";
      sha256 = "098lwafy1rfn7s11vl32rz8r68nywlj1gd8h6dgavkqgl1amnl0k";
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
    name = "ctrlp-vim-2018-06-28";
    src = fetchgit {
      url = "https://github.com/ctrlpvim/ctrlp.vim";
      rev = "43cc73b8e7d4ab45f17118573eb81fd45704b989";
      sha256 = "16jn9n6vavwiwh6l2av2i3livan72saaz0d0v8vmznrrs2ngi1gk";
    };
    dependencies = [];

  };

  jedi-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "jedi-vim-2018-07-10";
    src = fetchgit {
      url = "https://github.com/davidhalter/jedi-vim";
      rev = "7cade1fb6253c6aaa29445fffcc6b52770c1095f";
      sha256 = "12ylmr5nay62qf26r3n6sz3cfkr00zw8a67wi03mkrwj7hx05bbj";
    };
    dependencies = [];

  };

  vim-go = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-go-2018-07-10";
    src = fetchgit {
      url = "https://github.com/fatih/vim-go";
      rev = "03c93b2957ccc76bf58ac35a30305f387b8a86f5";
      sha256 = "1mwy38zrvxxks0c2qcsvycmx202hfmn0aa212rr3xxzlm14l8ns6";
    };
    dependencies = [];

  };

  vim-terraform = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-terraform-2018-04-16";
    src = fetchgit {
      url = "https://github.com/hashivim/vim-terraform";
      rev = "4e91b8c3a73fb9ecbf159fb5ca24ed6f39fad4f9";
      sha256 = "08qs61lll525ahwi1n4ksain04y830qd62sdxy3hjf6xjlppanzj";
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
    name = "vim-graphql-2018-06-25";
    src = fetchgit {
      url = "https://github.com/jparise/vim-graphql";
      rev = "4a46f86f0dbd6ff3bd22db8f48a692075d64f6c2";
      sha256 = "08dxdicslxhmy6qqbwgriry8m8g22qpjbd0v2bz2c2lcig68qwfy";
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
    name = "undotree-2018-07-02";
    src = fetchgit {
      url = "https://github.com/mbbill/undotree";
      rev = "a80159c9f5c238575b63984b8bc610bc5de6b233";
      sha256 = "10l091qbigcj053l65bs3cdnysasl7f2qdbsk8bk6k0xj7rrpgzl";
    };
    dependencies = [];

  };

  vim-grepper = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-grepper-2018-04-24";
    src = fetchgit {
      url = "https://github.com/mhinz/vim-grepper";
      rev = "04d659c9e0a57e0c3e989069601d2a98df0386c4";
      sha256 = "16k5ahcn9i4wvlhw16j0gfgxw0clry72l78lk28qmx9p2gh1ka3g";
    };
    dependencies = [];

  };

  vim-jsx = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-jsx-2018-02-19";
    src = fetchgit {
      url = "https://github.com/mxw/vim-jsx";
      rev = "52ee8bb9f4b53e9bcb38c95f9839ec983bcf7f9d";
      sha256 = "0widi2gnxvdfzhhn0digcjqb28npxv0dpm3l37ijklcfxbc16hzi";
    };
    dependencies = [];

  };

  cpsm = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "cpsm-2018-02-01";
    src = fetchgit {
      url = "https://github.com/nixprime/cpsm";
      rev = "8a4a0a05162762b857b656d51b59a5bf01850877";
      sha256 = "0v44gf9ygrqc6rpfpiq329jija4icy0iy240yk30c0r04mjahc0b";
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
    name = "vim-javascript-2018-07-02";
    src = fetchgit {
      url = "https://github.com/pangloss/vim-javascript";
      rev = "54b0c4e16da2614a82bb3864ff188d72d39dc15f";
      sha256 = "0gc5f3pnjbl8qarhjpif5bp254y7p0fflywnpz0ap13nm222wc6r";
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
    name = "nerdtree-2018-06-15";
    src = fetchgit {
      url = "https://github.com/scrooloose/nerdtree";
      rev = "d6032c876c6d6932ab7f07e262a16c9a85a31d5b";
      sha256 = "0s7z60rcdkziqqjc45adfqykpznv7aagfyfi5ybsxi5w4b8f2b9s";
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
    name = "vim-multiple-cursors-2018-04-17";
    src = fetchgit {
      url = "https://github.com/terryma/vim-multiple-cursors";
      rev = "b781b1461bd4b346958309e1733a9d6ad1a66b6c";
      sha256 = "0hadbp2yj0kzcwj5rp18diq3b24xgxn46n7c29dgrjg91w4vagfd";
    };
    dependencies = [];

  };

  vim-fugitive = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-fugitive-2018-07-10";
    src = fetchgit {
      url = "https://github.com/tpope/vim-fugitive";
      rev = "85c6c7a8376f464feb16c59c007a0c17d61ba3b3";
      sha256 = "1rjb0qd8kk6rd9rxapa6x3wcv3j4w24v7qb2hrkkbifcv3gwjy7c";
    };
    dependencies = [];

  };

  vim-airline = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-airline-2018-06-18";
    src = fetchgit {
      url = "https://github.com/vim-airline/vim-airline";
      rev = "b790fd212088c0c882f16416f07cbd6035882028";
      sha256 = "0vkjcbiv8lnb8id7xdwh9v1v0wg04ff5i5m6r56nn7yvwzj1n9r3";
    };
    dependencies = [];

  };

  vim-airline-themes = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-airline-themes-2018-06-14";
    src = fetchgit {
      url = "https://github.com/vim-airline/vim-airline-themes";
      rev = "b35f952a6ae6768ae2c6a9f4febc7945cc311f74";
      sha256 = "1j9y9irrzsq1bwp3b22ls016byi0yc9ymigzhw0n180rk6nb36c7";
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
    name = "ale-2018-07-07";
    src = fetchgit {
      url = "https://github.com/w0rp/ale";
      rev = "c1a2aa27f36690dec1433a15307fe7198ec27629";
      sha256 = "0jn1y8n5223aq5ly9nm5w9402r8svkgfrjbqzsvg903vfz5mk8aj";
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
    name = "deoplete-go-2018-07-03";
    src = fetchgit {
      url = "https://github.com/zchee/deoplete-go";
      rev = "2d402d856d98d4a351fdcf40d837da0cf52ccdfd";
      sha256 = "0hj5bhfhd9am11ixaxad370p982bjig53mbm74fi6slhjpikdrdq";
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
    name = "deoplete-jedi-2018-07-10";
    src = fetchgit {
      url = "https://github.com/zchee/deoplete-jedi";
      rev = "5540e76ee3194f2eaa2df51945297cb847a1dfa8";
      sha256 = "0mqq42v4l2y0hkcs83j0cp7hxamv6gn5g8z4bccrbssgrsv61cg6";
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
