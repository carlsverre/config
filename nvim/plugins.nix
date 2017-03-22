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
    name = "deoplete-nvim-2017-03-15";
    src = fetchgit {
      url = "git://github.com/Shougo/deoplete.nvim";
      rev = "436c5bf6c92994f2742cb80a8e14c868d97682c8";
      sha256 = "00q9pmf27l8jzw7r60pk3dsd8iqq9drclvd8jlsxl1gfgzi46wk7";
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

  vim-freemarker = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-freemarker-2016-06-30";
    src = fetchgit {
      url = "git://github.com/andreshazard/vim-freemarker";
      rev = "c6ea515d64a401679ef8db5d63d78843a2341dd7";
      sha256 = "0jzpi2jcl1ddcj3kjh0ha9zqpppkrp93vll5nil7awh831m50a0l";
    };
    dependencies = [];

  };

  neomake = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "neomake-2017-03-21";
    src = fetchgit {
      url = "git://github.com/benekastah/neomake";
      rev = "42a11ac9a5466fa7ba423bfda192dd01eaeceec9";
      sha256 = "0n6k4lj01r122l7x2qmqh7qz1c8am3qjl1ir35433a4rvai8xd1k";
    };
    dependencies = [];

  };

  ctrlp-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "ctrlp-vim-2017-03-19";
    src = fetchgit {
      url = "git://github.com/ctrlpvim/ctrlp.vim";
      rev = "23f78f38394b3ee0316bc9a93b623d94b9555b62";
      sha256 = "0fxj1js7rxyhnw38gz8z0kshdbq0gg9g8qxzs3p8p9dbw0ih844j";
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
    name = "vim-go-2017-03-08";
    src = fetchgit {
      url = "git://github.com/fatih/vim-go";
      rev = "362e15ab492853ff9582ea5856878e1a5b64ed18";
      sha256 = "12div6vqjnsny3bz9mhyb05vk3cfdd1jsniy5hn9v0km7h1gxf2p";
    };
    dependencies = [];

  };

  vim-terraform = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-terraform-2017-03-03";
    src = fetchgit {
      url = "git://github.com/hashivim/vim-terraform";
      rev = "c9a168018de054bcdb6379a3217b880f20012eb1";
      sha256 = "1l1x3vhvh960p6fbw6glp7ydh3s4iflls67ym6g6i3kc7wa60xxd";
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
    name = "undotree-2017-03-15";
    src = fetchgit {
      url = "git://github.com/mbbill/undotree";
      rev = "46e50e19ce069f539f6c32e795227f1e8f922b53";
      sha256 = "0cqm851sh8drb1hna345j3hvpxjrrpvmy33y7l0ldyykkq54jgcv";
    };
    dependencies = [];

  };

  vim-grepper = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-grepper-2017-03-13";
    src = fetchgit {
      url = "git://github.com/mhinz/vim-grepper";
      rev = "253b2da775e27b93884fbb47b49ec1d685747f79";
      sha256 = "0w2a0fpcwqaif61cixlivxc6kf2fcq7m32r13abc4rw0ixqk2gaj";
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
    name = "vim-javascript-2017-03-21";
    src = fetchgit {
      url = "git://github.com/pangloss/vim-javascript";
      rev = "4a442bade3b01d6f5fdd3b44009795307e69ad90";
      sha256 = "18y98m0va5x13p3gfxkyy9zxzsrn03pv716297hhqfmjm9aii3zs";
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
    name = "vim-airline-2017-03-20";
    src = fetchgit {
      url = "git://github.com/vim-airline/vim-airline";
      rev = "b4ad02f9061d4fff1431653b0176aa8fb05db8ef";
      sha256 = "07f6j2rxv9jqn4bnzj111x36mqpa39naanp7x9pb8hwswcankz1k";
    };
    dependencies = [];

  };

  vim-airline-themes = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-airline-themes-2017-03-15";
    src = fetchgit {
      url = "git://github.com/vim-airline/vim-airline-themes";
      rev = "793ce6615b1982d87a083aea301e7db18d59e9c7";
      sha256 = "15vfigk2n37g6hc70iha67zqfzb7nl4nsch58r5fhb81g61vywyk";
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
    name = "deoplete-go-2017-03-21";
    src = fetchgit {
      url = "git://github.com/zchee/deoplete-go";
      rev = "7990da5c8c89a47e0ccd3b7e60a836a6f115641a";
      sha256 = "0ybd9sg4x8pczvl0hz5azzs2sn4nyc7la9890xh373dv3lyb6gk7";
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
    name = "deoplete-jedi-2017-03-02";
    src = fetchgit {
      url = "git://github.com/zchee/deoplete-jedi";
      rev = "fed0870a36ebf88f6f50771394e97cf5fb4ca633";
      sha256 = "1w243wfbnbg1f9wa4x6ki7d1qz38r7vnjxfv960wjzh6398d4blj";
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

  nrun-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "nrun-vim-2016-09-25";
    src = fetchgit {
      url = "git://github.com/jaawerth/nrun.vim";
      rev = "2078cdbd29d4b4701e3f99a12e61b36a29a3a0c2";
      sha256 = "1mb6zs892k0s104dnp0h33ixp60q1kanqflm8dvmsap1mv87ydg8";
    };
    dependencies = [];

  };
}
