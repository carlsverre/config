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
    name = "deoplete-nvim-2017-05-03";
    src = fetchgit {
      url = "https://github.com/Shougo/deoplete.nvim";
      rev = "fbaede26d2a0eab8577b4b91f8ae53b9d723632b";
      sha256 = "11ziqls5f2kj1c5g9q0651dmhcpx7br6knivjzgm3jlfxj49gl12";
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
    name = "vim-freemarker-2017-04-25";
    src = fetchgit {
      url = "https://github.com/andreshazard/vim-freemarker";
      rev = "54f09b3644f432cc430bdb57da2db540cdf920ec";
      sha256 = "0mmh7xv0cnrghf8q2g70mx8fijzg9fz1mayzgwqma15sc8m6s1hq";
    };
    dependencies = [];

  };

  neomake = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "neomake-2017-05-04";
    src = fetchgit {
      url = "https://github.com/benekastah/neomake";
      rev = "638f4074325727bb7ec22ff9d53676090c7663ca";
      sha256 = "0s56cxmsqfghwbj1ms341mg8alq5zzkg634hma9xj8d6s8liz51l";
    };
    dependencies = [];

  };

  ctrlp-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "ctrlp-vim-2017-04-28";
    src = fetchgit {
      url = "https://github.com/ctrlpvim/ctrlp.vim";
      rev = "cbd52e3bdd388afd7accaba6e0aea754f32da271";
      sha256 = "08d6zrwsdrpjm9az5zdzdx8c27dmnc9flvsfp3ig6yz6jinvwc1x";
    };
    dependencies = [];

  };

  jedi-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "jedi-vim-2017-04-27";
    src = fetchgit {
      url = "https://github.com/davidhalter/jedi-vim";
      rev = "40a02a7fd187bf82ce3cda517feffbda8015ef5c";
      sha256 = "0ls1mz30iz33px97m2hp9s7yli8fi34rmcdcn240vkb8n8l91g2s";
    };
    dependencies = [];

  };

  vim-go = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-go-2017-04-02";
    src = fetchgit {
      url = "https://github.com/fatih/vim-go";
      rev = "b4936d89bd1480a864382108b49ebf5d2d16728a";
      sha256 = "1mfsxdnipfigqmmy9l6md98f1ww9b0663a95xa4l713v66sy60cw";
    };
    dependencies = [];

  };

  vim-terraform = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-terraform-2017-04-23";
    src = fetchgit {
      url = "https://github.com/hashivim/vim-terraform";
      rev = "6ea1581a41c383cae82d3895520e4c6c7a53904d";
      sha256 = "0d9ld3zh8k7g0jah32szrkyil12m2qyqgdwy3kj3l2ahvq38qp21";
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
    name = "nrun-vim-2016-09-25";
    src = fetchgit {
      url = "https://github.com/jaawerth/nrun.vim";
      rev = "2078cdbd29d4b4701e3f99a12e61b36a29a3a0c2";
      sha256 = "1mb6zs892k0s104dnp0h33ixp60q1kanqflm8dvmsap1mv87ydg8";
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
    name = "vim-grepper-2017-05-04";
    src = fetchgit {
      url = "https://github.com/mhinz/vim-grepper";
      rev = "17f9ecee8e1fe31ebe7597376a595bd42fe4c6c3";
      sha256 = "0cwxr3m7d2mvj2bpg0n25pzr7kq4sx2ljylqzlsk9pjicjd022nw";
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
    name = "vim-javascript-2017-05-04";
    src = fetchgit {
      url = "https://github.com/pangloss/vim-javascript";
      rev = "1e59f84882b6ab017533e25bcff1a635d9a0ce49";
      sha256 = "150f47p5kx0nrspl73sfgm8m0sfms8nn2llhjhc5m70y1gvj2ng9";
    };
    dependencies = [];

  };

  nerdtree = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "nerdtree-2017-04-12";
    src = fetchgit {
      url = "https://github.com/scrooloose/nerdtree";
      rev = "45f4d61f04e7ef33360f7735931da9ea2ebc05e0";
      sha256 = "1wcfz94q8lv304pdr2721gsalhvns3g9ya4lq1agp2r3m6hfsrw6";
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
    name = "vim-airline-2017-05-02";
    src = fetchgit {
      url = "https://github.com/vim-airline/vim-airline";
      rev = "d593359500c0d117a44e67ff5db8897b049e8090";
      sha256 = "19ysy5f070gd709xllf67gyj7rgdlii055n134zfz524z3a935g8";
    };
    dependencies = [];

  };

  vim-airline-themes = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-airline-themes-2017-03-27";
    src = fetchgit {
      url = "https://github.com/vim-airline/vim-airline-themes";
      rev = "66c2839bb1126c71a0a2d1da9804161ccd3b78b6";
      sha256 = "01czd1al7ni88q7mwszlayax6d92bkzr5a5pxssn2080xpv7vqbk";
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
    name = "deoplete-go-2017-03-21";
    src = fetchgit {
      url = "https://github.com/zchee/deoplete-go";
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
    name = "deoplete-jedi-2017-04-26";
    src = fetchgit {
      url = "https://github.com/zchee/deoplete-jedi";
      rev = "58354e749d81a55cc7e591beb4b4628b5e3cbd9e";
      sha256 = "1j5vp6yspnjqnrrfqvhz0xwhc4v1z73y0170nxpxw7xlb80bi05m";
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
