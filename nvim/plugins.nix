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
    name = "deoplete-nvim-2017-06-06";
    src = fetchgit {
      url = "https://github.com/Shougo/deoplete.nvim";
      rev = "8bd63b7e4f9bb3cf2040724dd71cff195564166a";
      sha256 = "1jf6l5li7m4m2ijfndqgm95mpw9c188vfbsggnzp2ivcxc7bd8bv";
    };
    dependencies = [];

  };

  vim-gitgutter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-gitgutter-2017-06-08";
    src = fetchgit {
      url = "https://github.com/airblade/vim-gitgutter";
      rev = "dcac1f74ee5c26125363dca164463bde6657c838";
      sha256 = "0knkdv0sbdwf4p82g438l7pylwzxfbxcj44np3v15wr97w95wmlv";
    };
    dependencies = [];

  };

  vim-rooter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-rooter-2017-03-27";
    src = fetchgit {
      url = "https://github.com/airblade/vim-rooter";
      rev = "aaac40828cf6fcd27d56e00c005e29a8a5ee0fb1";
      sha256 = "06zad6xmbkw8906c8h38hcgyg1y7h8lwl5dv58r5s4q2bnqx4m0c";
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
    name = "vim-freemarker-2017-05-17";
    src = fetchgit {
      url = "https://github.com/andreshazard/vim-freemarker";
      rev = "57602453b969334fc0780fc24f3a4fccf2891a30";
      sha256 = "1285yh9m2fyqys4zm6y7jgh0p1pw03prrgi87nacmpnwy364psfa";
    };
    dependencies = [];

  };

  neomake = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "neomake-2017-06-10";
    src = fetchgit {
      url = "https://github.com/benekastah/neomake";
      rev = "cc916f35fa3d131b2d6529d0e47bde141d99b7c3";
      sha256 = "00kz9ny3z4j6nhgzxarj8d072k6sf4qiwgfj4ckmllq5fyb2ik4l";
    };
    dependencies = [];

  };

  ctrlp-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "ctrlp-vim-2017-06-04";
    src = fetchgit {
      url = "https://github.com/ctrlpvim/ctrlp.vim";
      rev = "019f20a6f280b875b3812ea4d03a4cf1647cd0d9";
      sha256 = "1zyl140ykjc1g7kc306f03q7xcxjzx757hphdgcb63ksql2k1f33";
    };
    dependencies = [];

  };

  jedi-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "jedi-vim-2017-06-10";
    src = fetchgit {
      url = "https://github.com/davidhalter/jedi-vim";
      rev = "6411de0cd1d2a2959f5a0bf977b3f8ecea2209d0";
      sha256 = "1wq2ywr15qzqfqpksfg0g1m0is6zhxza9q73rrpxd33akksfkvx4";
    };
    dependencies = [];

  };

  vim-go = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-go-2017-06-10";
    src = fetchgit {
      url = "https://github.com/fatih/vim-go";
      rev = "7b93bae4b08091c4d6243dafc2e040a84ea91d1d";
      sha256 = "0hrzgxlkqvlh45pvli2aqnzx58vyjhmcz6rr28cm7x8b0wf20r00";
    };
    dependencies = [];

  };

  vim-terraform = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-terraform-2017-06-10";
    src = fetchgit {
      url = "https://github.com/hashivim/vim-terraform";
      rev = "7ded8f9c8372673b4ba0f0879295328b1050bb5e";
      sha256 = "1yhn8dcbzy7c8p1f3ixffcyjc9639k7hkmhpplx899dsazq7gpgr";
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
    name = "tagbar-2017-06-05";
    src = fetchgit {
      url = "https://github.com/majutsushi/tagbar";
      rev = "87a1263f5d8b3623bee5e6036254480e668b5f74";
      sha256 = "1s6727vwrcikv9dmkl6s1c2r2r107p733j8sjjxshl68bi62ms8z";
    };
    dependencies = [];

  };

  undotree = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "undotree-2017-03-24";
    src = fetchgit {
      url = "https://github.com/mbbill/undotree";
      rev = "ad08a88df70c1865b8c9ef6eeac5cdb051d2a18a";
      sha256 = "1i1sss8vzsym44amq19rfy95wm7143ks5h9imm7z7rah7xkcqv9l";
    };
    dependencies = [];

  };

  vim-grepper = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-grepper-2017-05-19";
    src = fetchgit {
      url = "https://github.com/mhinz/vim-grepper";
      rev = "ab3c715c1507c2f4386cbabe9966ccdcf2858754";
      sha256 = "0xcmi6gwmavdqm8hy5xv6a0320y4mbbqknvz6glyh0b58g3ih87d";
    };
    dependencies = [];

  };

  vim-jsx = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-jsx-2016-08-23";
    src = fetchgit {
      url = "https://github.com/mxw/vim-jsx";
      rev = "eb656ed96435ccf985668ebd7bb6ceb34b736213";
      sha256 = "1ydyifnfk5jfnyi4a1yc7g3b19aqi6ajddn12gjhi8v02z30vm65";
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
    name = "vim-javascript-2017-06-06";
    src = fetchgit {
      url = "https://github.com/pangloss/vim-javascript";
      rev = "42c9451ab79e65c54a0816fd7557fb991c62b78b";
      sha256 = "0ykc287qdp44ai6v2q9rp3ykii3n5n6yav3z53ry5aglqix0ihqj";
    };
    dependencies = [];

  };

  nerdtree = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "nerdtree-2017-06-05";
    src = fetchgit {
      url = "https://github.com/scrooloose/nerdtree";
      rev = "a9ab90198be0581fe961125bba3f282a666ef7ff";
      sha256 = "0qf2xjr2hyz08xalgv6yjr5rrrcxgv76sshr7d62sygg6qfsnbgw";
    };
    dependencies = [];

  };

  vim-multiple-cursors = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-multiple-cursors-2017-06-02";
    src = fetchgit {
      url = "https://github.com/terryma/vim-multiple-cursors";
      rev = "3afc475cc64479a406ce73d3333df1f67db3c73f";
      sha256 = "04dijb4hgidypppphcy83bacmfrd9ikyjc761hqq6bl4kc49f5kc";
    };
    dependencies = [];

  };

  vim-airline = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-airline-2017-05-08";
    src = fetchgit {
      url = "https://github.com/vim-airline/vim-airline";
      rev = "466198adc015a9d81e975374d8e206dcf3efd173";
      sha256 = "1dq47y24dc84dkpgv44jh5n2q5jqm5xvriql81441lbwldyq99ld";
    };
    dependencies = [];

  };

  vim-airline-themes = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-airline-themes-2017-05-24";
    src = fetchgit {
      url = "https://github.com/vim-airline/vim-airline-themes";
      rev = "43fe3927b884dcf722f9109e39801db110186dab";
      sha256 = "1rl4im3pllkfvc5z3shmwblzvp4s3lri3clzpirzqmywa027d0p8";
    };
    dependencies = [];

  };

  vimoutliner = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vimoutliner-2017-05-03";
    src = fetchgit {
      url = "https://github.com/vimoutliner/vimoutliner";
      rev = "fd2ca709acc161a9e65e75577c2bfefde173401a";
      sha256 = "13cqhajfz6rag7qwj2rws5gjs1f2jlrb2s30kyjrx227i05vikkn";
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
    name = "deoplete-go-2017-05-26";
    src = fetchgit {
      url = "https://github.com/zchee/deoplete-go";
      rev = "aef73fdf275053a6fb00c3f66d1f18821bc74bd3";
      sha256 = "1ixav3d78wy9zs9a8hg8yqk812srkbkwsaz17lg5sxjq6azljgvq";
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
    name = "deoplete-jedi-2017-05-31";
    src = fetchgit {
      url = "https://github.com/zchee/deoplete-jedi";
      rev = "9188f51c52ec5b241e349c84890b2e289858af8f";
      sha256 = "0ff5rnbfwjifks7jvadm27hzq2g7pql9mcmkczc6r0y8g4slsmzz";
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
