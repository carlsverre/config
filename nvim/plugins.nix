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
      rev = "233e179d3bfe35d502737992e68551c170295676";
      sha256 = "05wnr388r9ql7db6a0dhvj0clym4invrfbsgal22nlr71jif4xfh";
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
      rev = "261114c925ea81eeb4db1651cc1edced66d6b5d6";
      sha256 = "17pffzwnvsimnnr4ql1qifdh4a0sqqsmcwfiqqzgglvsnzw5vpls";
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
}
