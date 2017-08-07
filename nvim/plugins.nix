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
    name = "deoplete-nvim-2017-07-27";
    src = fetchgit {
      url = "https://github.com/Shougo/deoplete.nvim";
      rev = "ef11a667beefd172da1d3f2df201be58f6f1f33a";
      sha256 = "1r5mkjb43x0y45lb4wacp5f4x7p9f78yp9jl06dhjgxwr7bkrsis";
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
    name = "vim-freemarker-2017-07-08";
    src = fetchgit {
      url = "https://github.com/andreshazard/vim-freemarker";
      rev = "993bda23e72e4c074659970c1e777cb19d8cf93e";
      sha256 = "1dixs9dbsn6k96x315dysrkmd8d6v0g9nn8nmvsf3i7as6xag0c3";
    };
    dependencies = [];

  };

  neomake = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "neomake-2017-07-30";
    src = fetchgit {
      url = "https://github.com/benekastah/neomake";
      rev = "e1201260edce695f307aa97163e1a00faba03396";
      sha256 = "1707c6jxqng917kcvsvivr260znkn0clyb82g5aqc7q7f53048mj";
    };
    dependencies = [];

  };

  ctrlp-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "ctrlp-vim-2017-07-18";
    src = fetchgit {
      url = "https://github.com/ctrlpvim/ctrlp.vim";
      rev = "3a048e85d3c2f72b1564e2dc43ed5b1d67bd59a9";
      sha256 = "10i2lwjizd74b3zi1ahinz2h8qbd18jzw93xrpw0iswrynfsprjv";
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
    name = "vim-go-2017-07-25";
    src = fetchgit {
      url = "https://github.com/fatih/vim-go";
      rev = "76cd99db6a88e825f361df0043cbff777c4a14fb";
      sha256 = "1pda9dmaacnzwm92a7vsly053dq2c1bcsqx99rwr41mkpzsk649l";
    };
    dependencies = [];

  };

  vim-terraform = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-terraform-2017-08-01";
    src = fetchgit {
      url = "https://github.com/hashivim/vim-terraform";
      rev = "6cece1f81a2cf3c724f8b6edbc464050308fe5b9";
      sha256 = "1kfdzs5q3jnqgp11vp8addky1940nr6nqvzv806zm7rjw21vmx25";
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
    name = "tagbar-2017-07-31";
    src = fetchgit {
      url = "https://github.com/majutsushi/tagbar";
      rev = "d880bcc333938ee1ed4a99fd89480eff9b6502a6";
      sha256 = "0l0smq1x4ljj7m3m5bwzpicgrpkcmkiiccmm94wxv8bzs5d120rb";
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
    name = "vim-grepper-2017-07-27";
    src = fetchgit {
      url = "https://github.com/mhinz/vim-grepper";
      rev = "ab3c715c1507c2f4386cbabe9966ccdcf2858754";
      sha256 = "0xcmi6gwmavdqm8hy5xv6a0320y4mbbqknvz6glyh0b58g3ih87d";
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
    name = "vim-javascript-2017-08-03";
    src = fetchgit {
      url = "https://github.com/pangloss/vim-javascript";
      rev = "739562910ecaaf998395d3780f7c4ae1b345c0ee";
      sha256 = "1iznr6rypxid8zvskfnkgsym5sx17m8h0qqzpn8jgapby0k5fz54";
    };
    dependencies = [];

  };

  vim-reason = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-reason-2017-07-25";
    src = fetchgit {
      url = "https://github.com/reasonml-editor/vim-reason";
      rev = "d4c09cfc3c00ec265e207ea06893a1a4441af1d0";
      sha256 = "1slk5vdgvk42hh24ls7aqlyhp8v0j9irb1rw9y8h88zjh6m8rgyx";
    };
    dependencies = [];

  };

  nerdtree = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "nerdtree-2017-07-29";
    src = fetchgit {
      url = "https://github.com/scrooloose/nerdtree";
      rev = "8cd17c1a478d8302e4782a95963abe46fc22c538";
      sha256 = "1j9hwga5545dilnrvahl8ir9w6sg37pr6lx6h8xig2fwhhhpg852";
    };
    dependencies = [];

  };

  vim-multiple-cursors = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-multiple-cursors-2017-07-31";
    src = fetchgit {
      url = "https://github.com/terryma/vim-multiple-cursors";
      rev = "ac212f93500309724036fa472821320db080e2e6";
      sha256 = "1m42lg7ggsywgaymwsjawn4qil42iapc8hzakav28x50k5aa36xz";
    };
    dependencies = [];

  };

  vim-airline = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-airline-2017-08-01";
    src = fetchgit {
      url = "https://github.com/vim-airline/vim-airline";
      rev = "a2e20bc3ca7f68403f916da2b2344718db92bdd0";
      sha256 = "0j4pnvnzqv8z6lly3jrydj5qhrblh64k32iqy8wggajvbh208a74";
    };
    dependencies = [];

  };

  vim-airline-themes = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-airline-themes-2017-08-02";
    src = fetchgit {
      url = "https://github.com/vim-airline/vim-airline-themes";
      rev = "3bdcf54b4c94f93b720b62222311dd980ce1a89d";
      sha256 = "0rw6qinms356qk8da7150mywfbjpdib9c19i9zl238y14i96am5d";
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
