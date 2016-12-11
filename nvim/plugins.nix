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
    name = "deoplete-nvim-2016-11-22";
    src = fetchgit {
      url = "git://github.com/Shougo/deoplete.nvim";
      rev = "9af1917dcc4459fb2147f854b9cfe456db651759";
      sha256 = "1syzmq6p1x8a5zwqkv01c68hi39h9zzaz0nzip8ayij67rv9xhc3";
    };
    dependencies = [];

  };

  vim-gitgutter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-gitgutter-2016-10-27";
    src = fetchgit {
      url = "git://github.com/airblade/vim-gitgutter";
      rev = "1742a8f568df549f4daeda90174b54d0c371501f";
      sha256 = "1d4d4lpf43dd5fpn3cqb3lrfr4k6ilmanmk9cymwf9byri3s4xdv";
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
    name = "neomake-2016-11-23";
    src = fetchgit {
      url = "git://github.com/benekastah/neomake";
      rev = "25934345e756619e785b65739bc7d7ac5b9a3595";
      sha256 = "12zan1cbs395s9k34j4icmf1v2ph9145hkci9py166zwhlp66ll6";
    };
    dependencies = [];

  };

  ctrlp-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "ctrlp-vim-2016-11-18";
    src = fetchgit {
      url = "git://github.com/ctrlpvim/ctrlp.vim";
      rev = "d9eb5aecab74db300bdf2c76308b2c02c469cf5e";
      sha256 = "18s5vq9ziv8h81hgj6yn5rq01lwfz8679m9s8hsfd96ndwm0rpzd";
    };
    dependencies = [];

  };

  jedi-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "jedi-vim-2016-11-16";
    src = fetchgit {
      url = "git://github.com/davidhalter/jedi-vim";
      rev = "f191ccd6fb7f3bc2272a34d6230487caf64face7";
      sha256 = "0xi7xql4zxjz0hkgarpwqwfs360ra3njlxfb9ssp3a5srnpxzp3k";
    };
    dependencies = [];

  };

  vim-go = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-go-2016-11-24";
    src = fetchgit {
      url = "git://github.com/fatih/vim-go";
      rev = "d079826894f328cf9d2777ffc6ca7df82c911e3e";
      sha256 = "04gssrh65g3pmqhp2q6ajb94wj7rbvcq735xhqcw5nvnqvs0vkns";
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
    name = "tagbar-2016-11-07";
    src = fetchgit {
      url = "git://github.com/majutsushi/tagbar";
      rev = "01f57ac5643b0365021ab891f78519d849867a5e";
      sha256 = "0k0006r895m19kpwqy1ibiia5qm47v4h3mgrlr349wlzqibhmws1";
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
    name = "vim-grepper-2016-11-24";
    src = fetchgit {
      url = "git://github.com/mhinz/vim-grepper";
      rev = "2d120123b88d146ee5118081db19492742083ece";
      sha256 = "1bb3j56r43qfr8jccrf7gi7y1qj415nmbsyy8542s36ckq5sif9k";
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
    name = "cpsm-2016-09-21";
    src = fetchgit {
      url = "git://github.com/nixprime/cpsm";
      rev = "565ab53a66fa52c46d80adf6981b07f4bdffcb1d";
      sha256 = "125gcnqrg2276sp715q924cxwjxwsv3j4m0n1zj17w9srnpn4r1k";
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
    name = "vim-javascript-2016-11-20";
    src = fetchgit {
      url = "git://github.com/pangloss/vim-javascript";
      rev = "a87c94438b038a060fa2920055a50a0c1cf08186";
      sha256 = "02msjh6hsr5j9p4i7wvqhxv3f98nl6jxqw2hl2qawfddlzqqwzzm";
    };
    dependencies = [];

  };

  nerdtree = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "nerdtree-2016-10-21";
    src = fetchgit {
      url = "git://github.com/scrooloose/nerdtree";
      rev = "eee431dbd44111c858c6d33ffd366cae1f17f8b3";
      sha256 = "1fyz3fp2v77piydadcg47pbb7dds9b015kj1baqaxr4gn2gfwq7f";
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
    name = "vim-airline-2016-11-23";
    src = fetchgit {
      url = "git://github.com/vim-airline/vim-airline";
      rev = "3ebd7ad64b3c7acb1e6df7140814645da37a057c";
      sha256 = "1355vcca9v4p05qqs86hdr9zv16ysibcxn1ffnsslchgfn3fxdsv";
    };
    dependencies = [];

  };

  vim-airline-themes = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "vim-airline-themes-2016-11-24";
    src = fetchgit {
      url = "git://github.com/vim-airline/vim-airline-themes";
      rev = "5bfa07ae06cbf3e73a137c2953e9877167e5986b";
      sha256 = "0an7phxaa5ygqdg8lx3b2pl430q7y9v57agxj5npyd1ii9nbp9q0";
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
    name = "deoplete-go-2016-11-12";
    src = fetchgit {
      url = "git://github.com/zchee/deoplete-go";
      rev = "807b5536e7cebd06d0ce7b7d54c021a82774aee2";
      sha256 = "1ragxnlzpf17f1wdy512hkz6bd673gzl16f14v78873rcyxpiw53";
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
    name = "deoplete-jedi-2016-11-18";
    src = fetchgit {
      url = "git://github.com/zchee/deoplete-jedi";
      rev = "4215499602ac17e61d60fa65fa97c395564f3d41";
      sha256 = "1ki9pnfrkxxnrp33i0vy9xw3hjffx49pgm5xldz1sdr3cgy91csc";
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

  floobits-neovim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
    name = "floobits-neovim-2016-10-07";
    src = fetchgit {
      url = "git://github.com/floobits/floobits-neovim";
      rev = "85d3493d05ac1d7f5606d40fbe619df16af917bc";
      sha256 = "16c12dgk60mmhyijfk4f33k8i48r1hpjlnxlvdk5kymv7b2xq0fa";
    };
    dependencies = [];

  };
}
