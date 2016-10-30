{ pkgs, fetchFromGitHub, fetchgit }:

let
  buildVimPlugin = pkgs.vimUtils.buildVimPluginFrom2Nix;
in {
  rooter = buildVimPlugin {
    name = "rooter";
    src = fetchFromGitHub {
      owner = "airblade";
      repo = "vim-rooter";
      rev = "70c105cbcf3ce19b92ddec8fa498e49ada79744b";
      sha256 = "1wma2vi1216jbx0p0zz1nwqramf6w8s4wf9f9vjxkghvawxb1fl4";
    };
  };

  grepper = buildVimPlugin {
    name = "grepper";
    src = fetchFromGitHub {
      owner = "mhinz";
      repo = "vim-grepper";
      rev = "71599e09856a54d9525b61b87f4f03fffc4968ae";
      sha256 = "1lvrhm912kd26x7czcjg4wrwz6yl61d7vigdh6j223aki7a9nav7";
    };
  };

  vim-misc = buildVimPlugin {
    name = "vim-misc";
    src = fetchFromGitHub {
      owner = "xolox";
      repo = "vim-misc";
      rev = "3e6b8fb6f03f13434543ce1f5d24f6a5d3f34f0b";
      sha256 = "0rd9788dyfc58py50xbiaz5j7nphyvf3rpp3yal7yq2dhf0awwfi";
    };
  };

  easytags = buildVimPlugin {
    name = "easytags";
    src = fetchFromGitHub {
      owner = "xolox";
      repo = "vim-easytags";
      rev = "72a8753b5d0a951e547c51b13633f680a95b5483";
      sha256 = "0i8ha1fa5d860b1mi0xp8kwsgb0b9vbzcg1bldzv6s5xd9yyi12i";
    };
    dependencies = [ "vim-misc" ];
  };

  vim-javascript = buildVimPlugin {
    name = "vim-javascript";
    src = fetchFromGitHub {
      owner = "pangloss";
      repo = "vim-javascript";
      rev = "8e3f5897728ab38aa28edbab02d18bda36241a1b";
      sha256 = "1rrj9d3xqzdycjsj97g3rdafm2bfx6vbcwcl95js5ijm92za00vc";
    };
  };

  jsx = buildVimPlugin {
    name = "jsx";
    src = fetchFromGitHub {
      owner = "mxw";
      repo = "vim-jsx";
      rev = "eb656ed96435ccf985668ebd7bb6ceb34b736213";
      sha256 = "1ydyifnfk5jfnyi4a1yc7g3b19aqi6ajddn12gjhi8v02z30vm65";
    };
  };

  python-syntax = buildVimPlugin {
    name = "python-syntax";
    src = fetchFromGitHub {
      owner = "hdima";
      repo = "python-syntax";
      rev = "69760cb3accce488cc072772ca918ac2cbf384ba";
      sha256 = "1ix7li8sjcn3i3g9jm2jng1gkjqh8r11qccfdblkjv7wxxzwpg01";
    };
  };

  deoplete-go = buildVimPlugin {
    name = "deoplete-go";
    src = fetchFromGitHub {
      owner = "zchee";
      repo = "deoplete-go";
      rev = "6348c8bf1704cc3879496576d3776850b12ecec4";
      sha256 = "1varfivpvqwfdq6as2ldyg57w1n0ds39nnp4j8kxhyv4sbx1krn5";
    };
    dependencies = [ "deoplete-nvim" ];
  };

  jedi-vim = buildVimPlugin {
    name = "jedi-vim";
    src = fetchgit {
      url = "https://github.com/davidhalter/jedi-vim";
      rev = "443e7fe555dcbd6e08a0b9e235c06f3f0cc309a4";
      sha256 = "06nmh8jw25i5ha5j25lgp7qc31rw6bl0fh8mpc03xd39c2isxayf";
    };
  };
}
