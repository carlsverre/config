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
    name = "deoplete-nvim-2017-09-23";
    src = fetchgit {
      url = "https://github.com/Shougo/deoplete.nvim";
      rev = "56130c37e015a96a00fcff38c23ed9c216a842f9";
      sha256 = "1ixpwq1s32y0qa0wzl88k9ldy8xmcv0njgmbijbhcfkskmm0qp32";
    };
    dependencies = [];

  };

  vim-gitgutter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-gitgutter-2017-08-02";
    src = fetchgit {
      url = "https://github.com/airblade/vim-gitgutter";
      rev = "dc73a81bfe59a9de090b89a1312ded3c6f6a6f89";
      sha256 = "15jbmbrmfnxi6gjwk0ia160g872jlprclyb8zrxass1cj2xqr0pb";
    };
    dependencies = [];

  };

  vim-rooter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-rooter-2017-09-20";
    src = fetchgit {
      url = "https://github.com/airblade/vim-rooter";
      rev = "f3505168a7d36c43593bbd506f89d19c7227e266";
      sha256 = "0jajipyj4060jxisc1ix66lx19ffj8lmvyj1z3ffchxypmfvni1a";
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
    name = "neomake-2017-09-21";
    src = fetchgit {
      url = "https://github.com/benekastah/neomake";
      rev = "2713ea9a475841e7a28d7a636fb9e590542f8691";
      sha256 = "0zggm46kg5xdpycx04bynrjva7d0lg90jdjwma4abq91jn8idzxl";
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
    name = "jedi-vim-2017-09-17";
    src = fetchgit {
      url = "https://github.com/davidhalter/jedi-vim";
      rev = "c8164fdfdaea5dd0533dd073e32e406bcb4526eb";
      sha256 = "169k5wsvnahjsh3m036w9z80l1d29i0as9x8r4qdhdic10ppyss6";
    };
    dependencies = [];

  };

  vim-go = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-go-2017-09-19";
    src = fetchgit {
      url = "https://github.com/fatih/vim-go";
      rev = "458d2308542b1c679c2ddcdd9ce9772c02a237ab";
      sha256 = "1nn9yqz92hfkz55djpszxzp4s48q6d82g7c0q468b149l6rsnqwj";
    };
    dependencies = [];

  };

  vim-terraform = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-terraform-2017-09-20";
    src = fetchgit {
      url = "https://github.com/hashivim/vim-terraform";
      rev = "2d9343c7165acbb6225017a9da8baf63bbd27a26";
      sha256 = "1rlrmnck727dby121pdrwij6429rjsp56rn9aki1z2w847nwf8fy";
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
    name = "nrun-vim-2017-05-26";
    src = fetchgit {
      url = "https://github.com/jaawerth/nrun.vim";
      rev = "bc6b28d1757179002a7fa5bbee433fa67f34a713";
      sha256 = "0bc5s0smdkq80gzh82027zgvadhn4lb3klsrijhbdh8g1ylz3gw1";
    };
    dependencies = [];

  };

  tagbar = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "tagbar-2017-09-20";
    src = fetchgit {
      url = "https://github.com/majutsushi/tagbar";
      rev = "ad0e433674282732f3cc09e2d78d0c3b7edcdae6";
      sha256 = "1z8c65w4wmw97jal5k72s94d4lfc03hx6sdrrpmc1x9swgjabncm";
    };
    dependencies = [];

  };

  undotree = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "undotree-2017-08-27";
    src = fetchgit {
      url = "https://github.com/mbbill/undotree";
      rev = "cb3e7390fbb49db2ad2150fb7cd91590a4a65a0a";
      sha256 = "1inb9sgzvi2kpwvpjfzk01s6zmv4dq5l95wscyxyk4cnhn2qiii7";
    };
    dependencies = [];

  };

  vim-grepper = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-grepper-2017-09-13";
    src = fetchgit {
      url = "https://github.com/mhinz/vim-grepper";
      rev = "030bf04a429204a9ec3e3a19f247ae795048fffa";
      sha256 = "1fb4hbqc2kicy51ppsvmbf0awz2kbjyygiz2cnfnsfvd2s38zqnk";
    };
    dependencies = [];

  };

  vim-jsx = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-jsx-2017-07-13";
    src = fetchgit {
      url = "https://github.com/mxw/vim-jsx";
      rev = "b0988275b12ab60f0df6932f70e24bb23856878b";
      sha256 = "0r6b8gnbv7k5dbhgwzl6bvkmwgqv2y58qcj8hnqj41wykvc78hrc";
    };
    dependencies = [];

  };

  cpsm = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "cpsm-2017-02-12";
    src = fetchgit {
      url = "https://github.com/nixprime/cpsm";
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
    name = "vim-javascript-2017-09-18";
    src = fetchgit {
      url = "https://github.com/pangloss/vim-javascript";
      rev = "9bb06bf1c677177b2a9bd803ffd7154624d7e1b6";
      sha256 = "1iyia26bf579vvpn8km29w2dk1w0f24hln5xvz9n7w81dzxn2ci9";
    };
    dependencies = [];

  };

  vim-reason = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-reason-2017-09-05";
    src = fetchgit {
      url = "https://github.com/reasonml-editor/vim-reason";
      rev = "7d58f87bf9bfc95a9d3acc5bb4858b138d8b7877";
      sha256 = "1sf51gd96l077v3v2yxacvs68jvi6gw65zjizcfnwn9fwk5wcx8v";
    };
    dependencies = [];

  };

  nerdtree = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "nerdtree-2017-08-19";
    src = fetchgit {
      url = "https://github.com/scrooloose/nerdtree";
      rev = "5782b228e495c733af4ba2e547e5dc44ebc8bc25";
      sha256 = "01v42gaqq7km1ib3rr39d95cfj9xqyws4wx0mfqq1k3kzqrqnqny";
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
    name = "vim-airline-2017-09-22";
    src = fetchgit {
      url = "https://github.com/vim-airline/vim-airline";
      rev = "031cb310565e281aa8e0697e6fd753fb1f86d16c";
      sha256 = "07kgsacnfk1x182kr8whz1h5i33xlw1v5bk5pm1jvqpyd3704vbc";
    };
    dependencies = [];

  };

  vim-airline-themes = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-airline-themes-2017-09-01";
    src = fetchgit {
      url = "https://github.com/vim-airline/vim-airline-themes";
      rev = "af3292dbbb6d8abe35d0ad50bd86b6ac6219abb7";
      sha256 = "144vkwlc2f2y1b7xzgqvwaxv24l4sb13nqjqfn3jk851c3mpgb7y";
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
    name = "deoplete-go-2017-08-27";
    src = fetchgit {
      url = "https://github.com/zchee/deoplete-go";
      rev = "05f617928a1522c16ed43373ec1b6db145b28720";
      sha256 = "1hai5jsyzcxw7p2pry8pml1mir282bywgibps10d67mc5vjb96b9";
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
    name = "deoplete-jedi-2017-07-16";
    src = fetchgit {
      url = "https://github.com/zchee/deoplete-jedi";
      rev = "56528fd1238bbf2f9363f16710d0936703dc9eab";
      sha256 = "1kwwbr1w3865rlqs04hpxrqv67a14mzyf85pa29djmryi2156wxb";
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
