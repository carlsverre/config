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
    name = "deoplete-nvim-2017-11-23";
    src = fetchgit {
      url = "https://github.com/Shougo/deoplete.nvim";
      rev = "e9e45ebcf7757ca7d32003cb54a0e31bf2afadb8";
      sha256 = "0fv7jki7am3x1z2jiyycmfw80n5hqkf176lkb7l2g0fwmi0x3m2v";
    };
    dependencies = [];

  };

  vim-gitgutter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-gitgutter-2017-11-01";
    src = fetchgit {
      url = "https://github.com/airblade/vim-gitgutter";
      rev = "1e60667322b7cd1bfcba98762fbba746a888d21a";
      sha256 = "1g9giir7gmkp6n6w4z20qm2dyq00w2a8f573c0b8b27cj36ri0wq";
    };
    dependencies = [];

  };

  vim-rooter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-rooter-2017-11-20";
    src = fetchgit {
      url = "https://github.com/airblade/vim-rooter";
      rev = "3509dfb80d0076270a04049548738daeedf6dfb9";
      sha256 = "03j26fw0dcvcc81fn8hx1prdwlgnd3g340pbxrzgbgxxq5kr0bwl";
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
    name = "neomake-2017-11-25";
    src = fetchgit {
      url = "https://github.com/benekastah/neomake";
      rev = "ce72b477bd098bf3d70c95a3ac3402820625164f";
      sha256 = "1fa1jsr036bmvsarx1780d032n8s5v5fi5csd5vl0n4xxnx65baw";
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
    name = "jedi-vim-2017-11-22";
    src = fetchgit {
      url = "https://github.com/davidhalter/jedi-vim";
      rev = "3be8833913bb2166cfe711e32e76e6c036058b9d";
      sha256 = "191qwm4dcs50rvi0f15dyzfk2kmiwwl8jxl9nfalrf8lkayj7sf7";
    };
    dependencies = [];

  };

  vim-go = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-go-2017-11-25";
    src = fetchgit {
      url = "https://github.com/fatih/vim-go";
      rev = "ccf98e09595125abfb87b22a195c374a05f0552b";
      sha256 = "1sghzghi8aqwyh208fb9wvij1gq96b8kq3imjp8znl5ycbjp8xhj";
    };
    dependencies = [];

  };

  vim-terraform = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-terraform-2017-11-19";
    src = fetchgit {
      url = "https://github.com/hashivim/vim-terraform";
      rev = "8d2ffca6628e42bc1a20d1fd1ff7d3542f4d580a";
      sha256 = "12z2r1hazpnx6hxzkwmi1lh8f3q8nvnl7qxpi4jwn1skg8z1q4q1";
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

  tagbar = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "tagbar-2017-10-19";
    src = fetchgit {
      url = "https://github.com/majutsushi/tagbar";
      rev = "dc155af2fdd20e081680d777bde558c56f8d55c3";
      sha256 = "0xicazayayp208qv7ln4shj41favj5a6aysvz29pwqy28svmg3xd";
    };
    dependencies = [];

  };

  undotree = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "undotree-2017-10-26";
    src = fetchgit {
      url = "https://github.com/mbbill/undotree";
      rev = "cdbb9022b8972d3e156b8d60af33bf795625b058";
      sha256 = "0y62hp8k2kbrq0jhxj850f706rqjv2dkd7dxhz458mrsdk60f253";
    };
    dependencies = [];

  };

  vim-grepper = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-grepper-2017-10-29";
    src = fetchgit {
      url = "https://github.com/mhinz/vim-grepper";
      rev = "4b75063e09944a542246779da449fcf358d82c2b";
      sha256 = "1zpgq08gzv6grwx5lnaa8qyh55cnh5x76kl9f29zypmawxg4p5ka";
    };
    dependencies = [];

  };

  vim-jsx = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-jsx-2017-10-31";
    src = fetchgit {
      url = "https://github.com/mxw/vim-jsx";
      rev = "5b968dfa512c57c38ad7fe420f3e8ab75a73949a";
      sha256 = "1z3yhhbmbzfw68qjzyvpbmlyv2a1p814sy5q2knn04kcl30vx94a";
    };
    dependencies = [];

  };

  cpsm = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "cpsm-2017-10-30";
    src = fetchgit {
      url = "https://github.com/nixprime/cpsm";
      rev = "3744240ca48f98eea064f3cbc1a62b3f25f44030";
      sha256 = "0x5jac7x85bqdh38vggi1fvxjw2z29b2227n471f3cxy8arvylrw";
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
    name = "vim-javascript-2017-11-24";
    src = fetchgit {
      url = "https://github.com/pangloss/vim-javascript";
      rev = "85804bbfc30e2d4ce63d7ae7aa218e083c701f74";
      sha256 = "13pjvaw7b8ff47x219h7wf0c9mfw5x9myisvxvljlwig4pl1m30v";
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

  neoformat = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "neoformat-2017-11-12";
    src = fetchgit {
      url = "https://github.com/sbdchd/neoformat";
      rev = "abfbd96924539de56ffe0c10622e3cc57c19a380";
      sha256 = "0ars3hd9fl7xf0q7dgxw0vdv3xar1l86l7cq8xm6aqkgiw4jc8v9";
    };
    dependencies = [];

  };

  nerdtree = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "nerdtree-2017-11-20";
    src = fetchgit {
      url = "https://github.com/scrooloose/nerdtree";
      rev = "b89de09810b646ec2107160db3af9e530d20446c";
      sha256 = "0saa3iqa5zfn4m61iq661dszq4fnqjgrhmigzx0r8s4cskglg3jc";
    };
    dependencies = [];

  };

  vim-delve = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-delve-2017-10-16";
    src = fetchgit {
      url = "https://github.com/sebdah/vim-delve";
      rev = "822b6c202b4d5be2306238e04fcf1d56f9ccc6fd";
      sha256 = "0l370cgsqvwsqib31p285d918rii1qzq52k44mav142bl0r19phn";
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
    name = "vim-airline-2017-11-20";
    src = fetchgit {
      url = "https://github.com/vim-airline/vim-airline";
      rev = "3e13bab201cb5d1b9c612132debe31d6d82ff68f";
      sha256 = "1magdjx3v63kjl31g1fjdplhiw9id8vcf4g7xv6r3z5ba6lx2cmq";
    };
    dependencies = [];

  };

  vim-airline-themes = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-airline-themes-2017-11-18";
    src = fetchgit {
      url = "https://github.com/vim-airline/vim-airline-themes";
      rev = "52dfa2b6c0dc2fd7a0e92954030893de3d173105";
      sha256 = "0m65xmg259781r1wk8dz0d0diiayqyl1wahsb2fdqs369wwx4irr";
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
    name = "deoplete-go-2017-11-14";
    src = fetchgit {
      url = "https://github.com/zchee/deoplete-go";
      rev = "844a0dce554f92cbd9938baf34f1801b5d872e58";
      sha256 = "15sf8ssb85va6b0si07nyh5c5xdikdl99fihgprqk1wxi9mp28cj";
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
    name = "deoplete-jedi-2017-11-21";
    src = fetchgit {
      url = "https://github.com/zchee/deoplete-jedi";
      rev = "2abdc8c915dbf4e64be1d4e96edb8b5ebc76dfa3";
      sha256 = "0phgjf6v90lwcbx2lks461ny6v4x5ypcs2cidg51w2jav2xvlqrq";
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
