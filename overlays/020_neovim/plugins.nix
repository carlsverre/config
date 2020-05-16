{ pkgs, fetchFromGitHub, fetchgit,
  python3, stdenv, cmake, boost, icu, readline, ncurses,
  fetchurl, nodejs-12_x
}:

let
  buildVimPluginFrom2Nix = pkgs.vimUtils.buildVimPluginFrom2Nix;
in {
  pluginDictionaries = [
    { name = "vim-solarized8"; }
    { name = "nerdtree"; }
    { name = "vim-gitgutter"; }
    { name = "vim-fugitive"; }
    { name = "vim-visual-multi"; }
    { name = "ale"; }
    { name = "vim-airline"; }
    { name = "vim-airline-themes"; }
    { name = "undotree"; }
    { name = "vim-grepper"; }
    { name = "deoplete-nvim"; }
    { name = "vim-rooter"; }
    { name = "vimoutliner"; }
    { name = "LanguageClient-neovim"; }
    { name = "vim-rtags"; }
    { name = "deoplete-rtags"; }
    { name = "fzf"; }
    { name = "fzf-vim"; }

    # nix
    { name = "vim2nix"; }
    { name = "vim-nix"; }

    # javascript
    { name = "vim-javascript"; }
    { name = "vim-jsx"; }
    { name = "yats-vim"; }
    { name = "nvim-typescript"; }

    # python
    { name = "deoplete-jedi"; }
    { name = "python-syntax"; }
    { name = "jedi-vim"; }

    # go
    { name = "deoplete-go"; }
    { name = "vim-go"; }

    # terraform
    { name = "vim-terraform"; }

    # graphql
    { name = "vim-graphql"; }

    # rust
    { name = "rust-vim"; }

    # reason
    { name = "vim-reason-plus"; }
  ];

  knownPlugins = {
    vim-addon-manager = pkgs.vimPlugins.vim-addon-manager;
    vim2nix = pkgs.vimPlugins.vim2nix;

    # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    # Update the following packages manually, don't use update-plugins
    # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    LanguageClient-neovim = buildVimPluginFrom2Nix rec {
      version = "0.1.157";
      name = "LanguageClient-neovim-${version}";

      src = fetchgit {
        url = "https://github.com/autozimu/LanguageClient-neovim";
        rev = "${version}";
        sha256 = "0vyb1487ya5cajslmyfhpprdlvz2hj2sn6b31nj43nv0n8jyrrf9";
      };
      dependencies = [];

      lc-bin = fetchurl {
        url = "https://github.com/autozimu/LanguageClient-neovim/releases/download/${version}/languageclient-${version}-x86_64-unknown-linux-musl";
        sha256 = "0igipyk0zd7d5mwvyrya09yj70y4g795dn256jra1m8i3q4d2y3g";
      };

      buildPhase = ''
        cp ${lc-bin} bin/languageclient
        chmod a+x bin/languageclient
      '';
    };

    nvim-typescript = buildVimPluginFrom2Nix {
      name = "nvim-typescript-2019-02-17";
      src = fetchgit {
        url = "https://github.com/mhartington/nvim-typescript";
        rev = "cb325b5273e1eba4e8536fdf211a4d7e49b5d6f9";
        sha256 = "0bbbj25jhdx0ls2d7p9ir54hmdxvql9kn3hid1s4h963ww1mah0j";
      };
      dependencies = [];
      buildInputs = [
        nodejs-12_x
        pkgs.nodePackages.typescript
        pkgs.nodePackages.rollup
        pkgs.nodePackages.tslib
      ];

      userHook = "";

      buildPhase = ''
        pushd rplugin/node/nvim_typescript
        mkdir -p node_modules/@types

        ln -sfv ${pkgs.nodePackages."@types/tmp"}/lib/node_modules/@types/tmp node_modules/@types
        ln -sfv ${pkgs.nodePackages."@types/node"}/lib/node_modules/@types/node node_modules/@types
        ln -sfv ${pkgs.nodePackages."@types/lodash-es"}/lib/node_modules/@types/node node_modules/@types
        ln -sfv ${pkgs.nodePackages.tmp}/lib/node_modules/tmp node_modules
        ln -sfv ${pkgs.nodePackages.neovim}/lib/node_modules/neovim node_modules
        ln -sfv ${pkgs.nodePackages.lodash}/lib/node_modules/lodash node_modules
        ln -sfv ${pkgs.nodePackages.lodash-es}/lib/node_modules/lodash-es node_modules
        ln -sfv ${pkgs.nodePackages.typescript}/lib/node_modules/typescript node_modules
        ln -sfv ${pkgs.nodePackages.rollup}/lib/node_modules/rollup node_modules
        ln -sfv ${pkgs.nodePackages.rollup-plugin-terser}/lib/node_modules/rollup-plugin-terser node_modules
        ln -sfv ${pkgs.nodePackages.rollup-plugin-node-resolve}/lib/node_modules/rollup-plugin-node-resolve node_modules

        cp -r ${pkgs.nodePackages.rollup-plugin-typescript}/lib/node_modules/rollup-plugin-typescript node_modules
        chmod 777 node_modules/rollup-plugin-typescript/node_modules
        ln -sfv ${pkgs.nodePackages.tslib}/lib/node_modules/tslib node_modules/rollup-plugin-typescript/node_modules

        npm run build
        popd
      '';
    };

    # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    # Put the output of update plugins here
    # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    yats-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "yats-vim-2020-05-05";
      src = fetchgit {
        url = "https://github.com/HerringtonDarkholme/yats.vim";
        rev = "4333bafec3a32713aae2b0d3b1e756d6f705f825";
        sha256 = "09j35lrwgcw578ki2pjf7fiak115f7xd36hkqrf925svm2mlswzx";
      };
      dependencies = [];

    };

    vim-nix = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-nix-2019-06-03";
      src = fetchgit {
        url = "https://github.com/LnL7/vim-nix";
        rev = "a3eed01f4de995a51dfdd06287e44fcb231f6adf";
        sha256 = "0pwdfwws1dj3705m00ghw3dvym5zbm00bfsj023gmbp6vr8wn6yi";
      };
      dependencies = [];

    };

    deoplete-nvim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "deoplete-nvim-2020-05-09";
      src = fetchgit {
        url = "https://github.com/Shougo/deoplete.nvim";
        rev = "86b18d9b7fc1dcf1270ed83b9b1c52ff41ee5a7a";
        sha256 = "1kkxw6vl2xl5rzwhimicv9hn9b69gbik6hf45yxc966s04k176z3";
      };
      dependencies = [];

    };

    vim-gitgutter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-gitgutter-2020-05-01";
      src = fetchgit {
        url = "https://github.com/airblade/vim-gitgutter";
        rev = "b356cc9a7da08ebeb919cd04b2831dad71a34d38";
        sha256 = "0y13nbrfank0rqsq5pf1cfcrrfapfvqinhbww97lxhs9clv44kny";
      };
      dependencies = [];

    };

    vim-rooter = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-rooter-2020-04-17";
      src = fetchgit {
        url = "https://github.com/airblade/vim-rooter";
        rev = "d64f3e04df9914e784508019a1a1f291cbb40bd4";
        sha256 = "1vwydkjm5h12kcnqmg2cv1cqf9hmhmyy2lx5lj3g0g6ra27yfjnw";
      };
      dependencies = [];

    };

    deoplete-rtags = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "deoplete-rtags-2020-02-29";
      src = fetchgit {
        url = "https://github.com/carlsverre/deoplete-rtags";
        rev = "bc531ca704349912350982ca5e788a3b73f56bf9";
        sha256 = "0k0p7k32m5xhdkckvcs6y2ngshjvs54jzjw1aq5yh02cacxbnj0n";
      };
      dependencies = [];

    };

    jedi-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "jedi-vim-2020-03-07";
      src = fetchgit {
        url = "https://github.com/davidhalter/jedi-vim";
        rev = "e83112f9aab147ab485ee7af72e01d047c5206d3";
        sha256 = "0yj1bsfn43crmfn0ylyzyz41z0vmvapl5cgm7k1rnbj96i7vifx7";
      };
      dependencies = [];

    };

    vim-go = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-go-2020-05-08";
      src = fetchgit {
        url = "https://github.com/fatih/vim-go";
        rev = "d8bbc29e8315289e5a88f7d47a4b64243dd9701f";
        sha256 = "0gd5alal2h8qd81flglnmr26pgibrmir6flg5mnchvkin7qr3iy0";
      };
      dependencies = [];

    };

    vim-terraform = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-terraform-2020-03-03";
      src = fetchgit {
        url = "https://github.com/hashivim/vim-terraform";
        rev = "89c47c6c68f6260ba34ee0733437d863046fbe95";
        sha256 = "1gkr3akvx44802i8cv4zw8j3bk5qk0h0rgz5k9jgkfch2yc76gzg";
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

    vim-graphql = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-graphql-2020-03-29";
      src = fetchgit {
        url = "https://github.com/jparise/vim-graphql";
        rev = "a3ff39f955e60baeddd8c3c4d1cab291ce37d66e";
        sha256 = "0py0z33qhff671l80ika6zz8gd9zjh0c3x41v3gwjl9089j3if07";
      };
      dependencies = [];

    };

    fzf = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "fzf-2020-05-15";
      src = fetchgit {
        url = "https://github.com/junegunn/fzf";
        rev = "d631c76e8d2dd18876a09d2c0919ece1a42a8721";
        sha256 = "1kb59f8qjk4aja53k1x6s3dk1bvxwgdqpak6x7d01f7vvinfc4ff";
      };
      dependencies = [];

    };

    fzf-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "fzf-vim-2020-05-13";
      src = fetchgit {
        url = "https://github.com/junegunn/fzf.vim";
        rev = "a74605b81d0dc2b28d35d9a1ab414dbdcbe3f45b";
        sha256 = "1i0lnkbymrjs12ryggqd9fafh0919n7k21afjmb5qb6c7cm15vsf";
      };
      dependencies = [];

    };

    vim-solarized8 = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-solarized8-2019-12-11";
      src = fetchgit {
        url = "https://github.com/lifepillar/vim-solarized8";
        rev = "5df7666374ead07a482605b53a0f36c27dc17e8d";
        sha256 = "1nvlb00lajzbhfsbsjw6f7hi37xrnyfhf0a7cgjvf3jp2piwjs2d";
      };
      dependencies = [];

    };

    vim-rtags = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-rtags-2018-07-22";
      src = fetchgit {
        url = "https://github.com/lyuts/vim-rtags";
        rev = "3ef48de532c2e875f0fc3c33b34befed2bf37016";
        sha256 = "03mrs1ggpszppvga8bbrjgay82f4p69n0a7harzdcvfmdawzp69i";
      };
      dependencies = [];

    };

    undotree = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "undotree-2019-03-13";
      src = fetchgit {
        url = "https://github.com/mbbill/undotree";
        rev = "be23eacb2a63380bd79e207a738c728214ecc9d3";
        sha256 = "00zyvff32zp7pyjzkq8da9xhr378mlpi8gj717yfr9wbwwarwfd7";
      };
      dependencies = [];

    };

    vim-visual-multi = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-visual-multi-2020-05-02";
      src = fetchgit {
        url = "https://github.com/mg979/vim-visual-multi";
        rev = "b2939c5efcde799dbd61c89cda27a44a95fcbdc8";
        sha256 = "05kylfrn3lp0xzc77jdd9xjn1ab4z25gzlrvpx7jj1yrpd2q78dz";
      };
      dependencies = [];

    };

    vim-grepper = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-grepper-2019-12-09";
      src = fetchgit {
        url = "https://github.com/mhinz/vim-grepper";
        rev = "dde6a660c7dd4e02b331da238ea477770073aca2";
        sha256 = "0c411yg2s6wb8141lqpgasg7iwgvfwy88z6l0c0gccmk8knypxhm";
      };
      dependencies = [];

    };

    vim-jsx = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-jsx-2019-09-29";
      src = fetchgit {
        url = "https://github.com/mxw/vim-jsx";
        rev = "8879e0d9c5ba0e04ecbede1c89f63b7a0efa24af";
        sha256 = "0czjily7kjw7bwmkxd8lqn5ncrazqjsfhsy3sf2wl9ni0r45cgcd";
      };
      dependencies = [];

    };

    vim-javascript = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-javascript-2020-04-27";
      src = fetchgit {
        url = "https://github.com/pangloss/vim-javascript";
        rev = "92a2b46bf37bd5cd2fe421ff850728420895801b";
        sha256 = "1xvqzvnff66zkrwl86kv6kiqc4dp8shda8cm3x5lfz3f8xbf7345";
      };
      dependencies = [];

    };

    vim-reason-plus = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-reason-plus-2020-02-19";
      src = fetchgit {
        url = "https://github.com/reasonml-editor/vim-reason-plus";
        rev = "c11a2940f8f3e3915e472c366fe460b0fe008bac";
        sha256 = "1vx7cwxzj6f12qcwcwa040adqk9cyzjd9f3ix26hnw2dw6r9cdr4";
      };
      dependencies = [];

    };

    rust-vim = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "rust-vim-2020-04-20";
      src = fetchgit {
        url = "https://github.com/rust-lang/rust.vim";
        rev = "2b916c8c8b3975988c13460918b46115f6a06802";
        sha256 = "06a9liz3a7fyjcd7phpfzrpqnjjzm5ai3bb41wh4hdc5ic8lgrij";
      };
      dependencies = [];

    };

    nerdtree = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "nerdtree-2020-05-06";
      src = fetchgit {
        url = "https://github.com/scrooloose/nerdtree";
        rev = "4cc6097ecb18b52c023a9487c2cf3220290ba0a1";
        sha256 = "07xfys3c5ha0j89n8kjn3lip9zr9ldjsz0ga0iff4b58bxnf7jc6";
      };
      dependencies = [];

    };

    vim-fugitive = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-fugitive-2020-04-24";
      src = fetchgit {
        url = "https://github.com/tpope/vim-fugitive";
        rev = "caf3b1d5696e8d39a905e48f1e89d8c0c565168c";
        sha256 = "1qgs3jd1dsh2mp65xfa75nax1n8y90x6fdyadv1pzgsdlzvd42ld";
      };
      dependencies = [];

    };

    vim-airline = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-airline-2020-05-04";
      src = fetchgit {
        url = "https://github.com/vim-airline/vim-airline";
        rev = "aa46603214a7d1e88bcb140594011f7304934ead";
        sha256 = "05rnzbb6g3fr1am1dndkxjvw882rvgi8bag3bwpypxyyl37wh6k1";
      };
      dependencies = [];

    };

    vim-airline-themes = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vim-airline-themes-2020-04-02";
      src = fetchgit {
        url = "https://github.com/vim-airline/vim-airline-themes";
        rev = "3fb676b8729a98817f561ef1554c0ad1a514c96a";
        sha256 = "18bfw09ywmw10jiv37iw2ijf46jhj2yw5wndqdgn7k42gy1wk7p6";
      };
      dependencies = [];

    };

    vimoutliner = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "vimoutliner-2020-02-09";
      src = fetchgit {
        url = "https://github.com/vimoutliner/vimoutliner";
        rev = "1031b16e6b0069229fe0f33a66489f81174fa4d9";
        sha256 = "1gn21b8yr0bjg0y1nidk13zcl4f6z8wkrxncgkd1hlc14d99jkg0";
      };
      dependencies = [];

    };

    ale = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "ale-2020-05-09";
      src = fetchgit {
        url = "https://github.com/w0rp/ale";
        rev = "c2b01f0e28b4f007d01373821ba19dcfa440f9c2";
        sha256 = "188z3szdwgzhrbn7myqwgqj84ydmx7gx2kwj11nnrib5px287z7i";
      };
      dependencies = [];

    };

    deoplete-go = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "deoplete-go-2020-01-01";
      src = fetchgit {
        url = "https://github.com/zchee/deoplete-go";
        rev = "4f1ccd2ed70211fd025d052ec725c0b835bea487";
        sha256 = "0zmx98kz6pxfpakizr8xm1nrv1rjr0frz19pkik29mk6aj2b2l08";
      };
      dependencies = [];

    };

    deoplete-jedi = buildVimPluginFrom2Nix { # created by nix#NixDerivation
      name = "deoplete-jedi-2020-04-14";
      src = fetchgit {
        url = "https://github.com/zchee/deoplete-jedi";
        rev = "42f4c24a951b0fb5e76a70e5234f16193a8a746d";
        sha256 = "1incjz7xsh4cfxw06ff07830ywn0p99b1zmml8pkapbnh3x2bjgc";
      };
      dependencies = [];

    };

  };
}
