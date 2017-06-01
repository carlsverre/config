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
    name = "deoplete-nvim-2017-05-27";
    src = fetchgit {
      url = "https://github.com/Shougo/deoplete.nvim";
      rev = "04de49e2a7480ac9142fc38faba0ed62a9547c32";
      sha256 = "0g2my6n9xsjgpxyp2im12makfy2x4szmabk5kr690wsz2aff1m46";
    };
    dependencies = [];

  };

  vim-gitgutter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-gitgutter-2017-04-28";
    src = fetchgit {
      url = "https://github.com/airblade/vim-gitgutter";
      rev = "b803a28f47b26d16f5fe9e747850992c9985c667";
      sha256 = "024sw99h3s9p3xsg9ih8p4v6m0hkahgl4jgq2jxyd62sc1nhpwbh";
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
    name = "neomake-2017-05-31";
    src = fetchgit {
      url = "https://github.com/benekastah/neomake";
      rev = "329a3f4451881fe5f9cfabc7a56baa4a93f165e0";
      sha256 = "0b69rx7ff1dpwar0icg7rh3gaddl5pgy6igl9r83zr4gbhcjay5q";
    };
    dependencies = [];

  };

  ctrlp-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "ctrlp-vim-2017-05-25";
    src = fetchgit {
      url = "https://github.com/ctrlpvim/ctrlp.vim";
      rev = "0415f77465da3eedb41ce4cfdef6c68e3447661a";
      sha256 = "1pqnnl9zibis1w99xm2r1vvckix263z9wjn4daz874764h7bv3id";
    };
    dependencies = [];

  };

  jedi-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "jedi-vim-2017-05-25";
    src = fetchgit {
      url = "https://github.com/davidhalter/jedi-vim";
      rev = "18af876d6b9177e19ef2a3574470cd9b8fe299ed";
      sha256 = "1bhhp8bk2hpchxcg98kard8bcy0wa88hldk41ky0d3mf8v9nil9j";
    };
    dependencies = [];

  };

  vim-go = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-go-2017-06-01";
    src = fetchgit {
      url = "https://github.com/fatih/vim-go";
      rev = "476239117d80fa68a92bfa937910f2644e0020a7";
      sha256 = "0qvizbkfx7cani5qn3m20c9sg4zm5vh70qrslm1yjrih04qq2yla";
    };
    dependencies = [];

  };

  vim-terraform = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-terraform-2017-05-05";
    src = fetchgit {
      url = "https://github.com/hashivim/vim-terraform";
      rev = "e0ed35d4dedb8bcb07b5920b875741a3e77703d3";
      sha256 = "0jjh52awyq553rqc2xw608y9p6dmw51wk8aindg5017chib9hwch";
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
    name = "tagbar-2017-02-18";
    src = fetchgit {
      url = "https://github.com/majutsushi/tagbar";
      rev = "959f48798136bfd4ce60075d3c86c580fcf5e5c5";
      sha256 = "02v30744w2jcavwk9cjdy51ldpqylj6pgg6zavj4dni7knbnq3jm";
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
    name = "vim-javascript-2017-05-30";
    src = fetchgit {
      url = "https://github.com/pangloss/vim-javascript";
      rev = "9ea6e5df1aaa797790490a413596c4b133a3f5e6";
      sha256 = "1yw4h4366g2j1hmsm08vfq4jrvylil33p5gpws287ydd31wnpfgd";
    };
    dependencies = [];

  };

  nerdtree = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "nerdtree-2017-05-26";
    src = fetchgit {
      url = "https://github.com/scrooloose/nerdtree";
      rev = "c11affabb4bbc0372677eb39f7a03af404e312dc";
      sha256 = "06b9zi2l42kiq6isd85k5ycvpzq8yc6xmpn950qqvcklx96nsjqi";
    };
    dependencies = [];

  };

  vim-multiple-cursors = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-multiple-cursors-2017-04-29";
    src = fetchgit {
      url = "https://github.com/terryma/vim-multiple-cursors";
      rev = "92d0b8dc446e91984cc4a9722b767f5a28504d47";
      sha256 = "1a291sswkxv608rfsdpkv6l1b4vqc487jhzwcvgvjbf9x2w0simb";
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
