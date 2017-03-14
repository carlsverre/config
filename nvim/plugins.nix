{ pkgs, fetchFromGitHub, fetchgit,
  python3, stdenv, cmake, boost, icu
}:

let
  buildVimPluginFrom2Nix = pkgs.vimUtils.buildVimPluginFrom2Nix;
in {
  vim-addon-manager = pkgs.vimPlugins.vim-addon-manager;
  vim2nix = pkgs.vimPlugins.vim2nix;

  vim-nix = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-nix-2016-11-02";
    src = fetchgit {
      url = "git://github.com/LnL7/vim-nix";
      rev = "b06cccd8ff61149b13d3fc8b7e0d06caa55c9888";
      sha256 = "0d1wxxijyyl449f81asl9d31kg0wvs3m0fypin172ahgpf3lyar4";
    };
    dependencies = [];

  };

  deoplete-nvim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "deoplete-nvim-2017-03-02";
    src = fetchgit {
      url = "git://github.com/Shougo/deoplete.nvim";
      rev = "b9774f4a320838288670fd215901115b06b4a600";
      sha256 = "1r91lnbjqhvpzszygkl4s1m9wc1qh4pg2pd43r66akpnddmgil0k";
    };
    dependencies = [];

  };

  vim-gitgutter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-gitgutter-2017-02-22";
    src = fetchgit {
      url = "git://github.com/airblade/vim-gitgutter";
      rev = "1c034be0d31168c8f4770ef7b69adb67d00d6f3d";
      sha256 = "1wj084frahj80h1nkllmpf0qj06d96a5m5qclnd3fc2aqclcimx0";
    };
    dependencies = [];

  };

  vim-rooter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-rooter-2016-10-27";
    src = fetchgit {
      url = "git://github.com/airblade/vim-rooter";
      rev = "c92dfe299b365449dd4ea46860494affca51ff05";
      sha256 = "0cz56kn1xhdwl2aw1rl7rpwwj52lbh7h22wv3lq61g5vvh3xs1ic";
    };
    dependencies = [];

  };

  vim-colors-solarized = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-colors-solarized-2011-05-09";
    src = fetchgit {
      url = "git://github.com/altercation/vim-colors-solarized";
      rev = "528a59f26d12278698bb946f8fb82a63711eec21";
      sha256 = "05d3lmd1shyagvr3jygqghxd3k8a4vp32723fvxdm57fdrlyzcm1";
    };
    dependencies = [];

  };

  neomake = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "neomake-2017-03-02";
    src = fetchgit {
      url = "git://github.com/benekastah/neomake";
      rev = "149ef4de442590b08cfcc0c2a0f7d6b648049712";
      sha256 = "05sspx1lq26nb8rc4f3lk6qkkk1fhf4i8vqnxcjrd6i5drlmhf9s";
    };
    dependencies = [];

  };

  ctrlp-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "ctrlp-vim-2017-01-13";
    src = fetchgit {
      url = "git://github.com/ctrlpvim/ctrlp.vim";
      rev = "7fa89fec125ce60a341f7c37dd769a8a31c49359";
      sha256 = "12x1bkipvqbz2jczl80rj6yd61hq18g3g2cx2r1yk19f6n8nfjvc";
    };
    dependencies = [];

  };

  jedi-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "jedi-vim-2017-03-01";
    src = fetchgit {
      url = "git://github.com/davidhalter/jedi-vim";
      rev = "2ee9ec64d38df5b529ae5d5bc33e7481557403c7";
      sha256 = "034kazsh9qh525bbsyjyjpwpqmvyzysa8zyasasav8hkimxqrcsb";
    };
    dependencies = [];

  };

  vim-go = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-go-2017-02-19";
    src = fetchgit {
      url = "git://github.com/fatih/vim-go";
      rev = "b9c81562630e9dfc098d25814c16bedcfcf9ffa9";
      sha256 = "0r5r4laqd4jwqc14lkjyccz3ijjzz366r0zgqw5cybspnf622f9a";
    };
    dependencies = [];

  };

  vim-terraform = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-terraform-2017-02-27";
    src = fetchgit {
      url = "git://github.com/hashivim/vim-terraform";
      rev = "5e0178fe7c34d9e8218fde3a6f71b2b924f2bad5";
      sha256 = "1q51s50mwqq2kynjw8vdjgxffzzvwxicb24k68ld9bp57br9bfgn";
    };
    dependencies = [];

  };

  python-syntax = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "python-syntax-2015-11-01";
    src = fetchgit {
      url = "git://github.com/hdima/python-syntax";
      rev = "69760cb3accce488cc072772ca918ac2cbf384ba";
      sha256 = "1ix7li8sjcn3i3g9jm2jng1gkjqh8r11qccfdblkjv7wxxzwpg01";
    };
    dependencies = [];

  };

  tagbar = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "tagbar-2017-02-18";
    src = fetchgit {
      url = "git://github.com/majutsushi/tagbar";
      rev = "959f48798136bfd4ce60075d3c86c580fcf5e5c5";
      sha256 = "02v30744w2jcavwk9cjdy51ldpqylj6pgg6zavj4dni7knbnq3jm";
    };
    dependencies = [];

  };

  undotree = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "undotree-2016-07-19";
    src = fetchgit {
      url = "git://github.com/mbbill/undotree";
      rev = "17dfeb6aeacc40036567d29c691898ac57b09182";
      sha256 = "0xmc95h5nbmjx6hvfd9lvkz8hdp8fw5xm5c7wcyy5f0rg7b6l68x";
    };
    dependencies = [];

  };

  vim-grepper = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-grepper-2017-02-23";
    src = fetchgit {
      url = "git://github.com/mhinz/vim-grepper";
      rev = "4df019bae24a0927935c796cf61180c3cb14773e";
      sha256 = "1q9b16767l85shm6mr0kbj0nvdy81jkm5qiljlqz20ik69rrjcfx";
    };
    dependencies = [];

  };

  vim-jsx = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-jsx-2016-08-23";
    src = fetchgit {
      url = "git://github.com/mxw/vim-jsx";
      rev = "eb656ed96435ccf985668ebd7bb6ceb34b736213";
      sha256 = "1ydyifnfk5jfnyi4a1yc7g3b19aqi6ajddn12gjhi8v02z30vm65";
    };
    dependencies = [];

  };

  cpsm = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "cpsm-2017-02-12";
    src = fetchgit {
      url = "git://github.com/nixprime/cpsm";
      rev = "8e61bf3e30868c57ad7cf1fe4315b2352d61467c";
      sha256 = "0qcc10dx48wyvcgz9q3nid9l1wxvl9m97608s289lj4zps8iqpcs";
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
    name = "vim-javascript-2017-03-02";
    src = fetchgit {
      url = "git://github.com/pangloss/vim-javascript";
      rev = "0f36d47e887606925aeab8556c9601e189532de1";
      sha256 = "1dql5yp3pfsn9pzq4y9wb726cgckjqkc5f93bwqn9xj677gaqlmw";
    };
    dependencies = [];

  };

  nerdtree = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "nerdtree-2017-02-25";
    src = fetchgit {
      url = "git://github.com/scrooloose/nerdtree";
      rev = "e671e403dd1ec1da59f70605c73aaedb6cb0e637";
      sha256 = "0g3bdwbg6hyh83qn4ad1hjk3pvq049fjqwj6viwa668zyvq4vwm4";
    };
    dependencies = [];

  };

  vim-multiple-cursors = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-multiple-cursors-2016-06-03";
    src = fetchgit {
      url = "git://github.com/terryma/vim-multiple-cursors";
      rev = "51d0717f63cc231f11b4b63ee5b611f589dce1b3";
      sha256 = "1s06wp4cjdmfvljzd9gz0wawkfcpkj8l2scjdx626ml740pnhmx8";
    };
    dependencies = [];

  };

  vim-airline = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-airline-2017-02-28";
    src = fetchgit {
      url = "git://github.com/vim-airline/vim-airline";
      rev = "fbd791e7f0431e18b987a2a8937a4c3d34dd2125";
      sha256 = "15m4wdvx4x8m43x5z08sbw74i1l7vwj0qljsgs7jn36yc9453sn7";
    };
    dependencies = [];

  };

  vim-airline-themes = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-airline-themes-2017-02-26";
    src = fetchgit {
      url = "git://github.com/vim-airline/vim-airline-themes";
      rev = "205f6964be55d17c908baaf89066928090b02729";
      sha256 = "0cz39gxmrsnv9r72ymyzjwlgdi2x0dxxibwvlwp6zwdwws4l3fw8";
    };
    dependencies = [];

  };

  vimoutliner = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vimoutliner-2016-07-22";
    src = fetchgit {
      url = "git://github.com/vimoutliner/vimoutliner";
      rev = "bd80cee8d9df9530c730ec4237de7ebe197b3642";
      sha256 = "0ynf60vzahif8ccb50kssjk64bh3r8bai3x37n6qb1gi5m61yn3z";
    };
    dependencies = [];

  };

  vim-easytags = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-easytags-2015-07-01";
    src = fetchgit {
      url = "git://github.com/xolox/vim-easytags";
      rev = "72a8753b5d0a951e547c51b13633f680a95b5483";
      sha256 = "0i8ha1fa5d860b1mi0xp8kwsgb0b9vbzcg1bldzv6s5xd9yyi12i";
    };
    dependencies = ["vim-misc"];

  };

  deoplete-go = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "deoplete-go-2017-02-13";
    src = fetchgit {
      url = "git://github.com/zchee/deoplete-go";
      rev = "9c2d57710f022ea5fe3b0428e6635a3de77bcf9e";
      sha256 = "0rl211rmnzwribzpqxfg99lsyln2x1i8ygyz8b9jy804fm5i24f3";
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
    name = "deoplete-jedi-2017-02-17";
    src = fetchgit {
      url = "git://github.com/zchee/deoplete-jedi";
      rev = "a4dd511535a6fe06717a7bd2d680b9b87ade595d";
      sha256 = "03wwqk4r2rm5yjxqw2f4302lknb9a10yfpw4b0vyr40zch6jascr";
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

  vim-freemarker = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-freemarker-2016-06-30";
    src = fetchgit {
      url = "git://github.com/andreshazard/vim-freemarker";
      rev = "c6ea515d64a401679ef8db5d63d78843a2341dd7";
      sha256 = "0jzpi2jcl1ddcj3kjh0ha9zqpppkrp93vll5nil7awh831m50a0l";
    };
    dependencies = [];

  };
}
