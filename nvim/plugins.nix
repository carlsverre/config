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
    name = "deoplete-nvim-2017-09-14";
    src = fetchgit {
      url = "https://github.com/Shougo/deoplete.nvim";
      rev = "821d375307183ac5c0936a8d4e4ae872dba76a8e";
      sha256 = "1x9cqsc4n314x7lr41gzqicfd61y026b0684phg0g95hhwkmvaw1";
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
    name = "vim-rooter-2017-08-30";
    src = fetchgit {
      url = "https://github.com/airblade/vim-rooter";
      rev = "4701f65883a2652c5ba2460591d4cf3d0af18070";
      sha256 = "0ziq4kr71cn74zdb1b2bq8ja7wb3q6hlqmfc241fbcx0g1d6snfl";
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
    name = "neomake-2017-09-13";
    src = fetchgit {
      url = "https://github.com/benekastah/neomake";
      rev = "8794ee654a715867d34045af49dd00e8474b0850";
      sha256 = "1vlb0kanqglh3yj7xgyc8phwc2kg921cm706yimd84n9jkp3wg1i";
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
    name = "jedi-vim-2017-08-16";
    src = fetchgit {
      url = "https://github.com/davidhalter/jedi-vim";
      rev = "0c6a2b77379f994c316983ca7f59784c1c957f78";
      sha256 = "0h40ga3ggs7mh4f7z0lshjm6x4n3px5dy5930wki6h81zfzxrf77";
    };
    dependencies = [];

  };

  vim-go = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-go-2017-09-12";
    src = fetchgit {
      url = "https://github.com/fatih/vim-go";
      rev = "262fb6308e81c086bf01fa0ca42bbb9e570c6298";
      sha256 = "001y5zw6yv5rnb3zpgi0sk5c1lahgh33l7inzb9kn5rnfgrnqssy";
    };
    dependencies = [];

  };

  vim-terraform = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-terraform-2017-09-12";
    src = fetchgit {
      url = "https://github.com/hashivim/vim-terraform";
      rev = "365dfb31e90845550295fa265e5406f93d148e03";
      sha256 = "0n5y3sr0sndcqgqr0n54i5d8c5f7lpm3l8a9qkl9hnxi155hjcsj";
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
    name = "tagbar-2017-09-13";
    src = fetchgit {
      url = "https://github.com/majutsushi/tagbar";
      rev = "3e417256e82c87d235b2c674aa6d6847db90c932";
      sha256 = "09hzxgnj44pv2kx56qa8h5dlhhmv6mzp8mbby6iiw87y97297gm9";
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
    name = "vim-javascript-2017-09-11";
    src = fetchgit {
      url = "https://github.com/pangloss/vim-javascript";
      rev = "c217c783bd185d84fe7cee6d97b9b65e77ac3fe4";
      sha256 = "032whq889ihs59r7qg2ydv6clf9mc0iy6d7c6j8gw81k6ry0l090";
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
    name = "vim-airline-2017-09-05";
    src = fetchgit {
      url = "https://github.com/vim-airline/vim-airline";
      rev = "ea461925619c3d812eb45a6b8c58eb85d951f43e";
      sha256 = "1gbbj76pqkhpamjxh7ag9srklp3hb7h559vnfqlw97l5f8594wi2";
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
