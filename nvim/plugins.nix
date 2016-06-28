{ pkgs, fetchFromGitHub, fetchgit }:

let
  buildVimPlugin = pkgs.vimUtils.buildVimPluginFrom2Nix;
in {
  rooter = buildVimPlugin {
    name = "rooter";
    src = fetchFromGitHub {
      owner = "airblade";
      repo = "vim-rooter";
      rev = "master";
      sha256 = "1wma2vi1216jbx0p0zz1nwqramf6w8s4wf9f9vjxkghvawxb1fl4";
    };
  };

  grepper = buildVimPlugin {
    name = "grepper";
    src = fetchFromGitHub {
      owner = "mhinz";
      repo = "vim-grepper";
      rev = "master";
      sha256 = "1x44sbbm970lkbnvwllg7yap75i29ybd3yp3q4cg98q4nq8a6anh";
    };
  };

  deoplete = buildVimPlugin {
    name = "deoplete";
    src = fetchFromGitHub {
      owner = "Shougo";
      repo = "deoplete.nvim";
      rev = "master";
      sha256 = "1q1jly0i6jbi78jg35c0w8qm81jdsh39gg21zwcmmj81wvnpzcg4";
    };
  };

  "vim-misc" = buildVimPlugin {
    name = "vim-misc";
    src = fetchFromGitHub {
      owner = "xolox";
      repo = "vim-misc";
      rev = "master";
      sha256 = "0rd9788dyfc58py50xbiaz5j7nphyvf3rpp3yal7yq2dhf0awwfi";
    };
  };

  easytags = buildVimPlugin {
    name = "easytags";
    src = fetchFromGitHub {
      owner = "xolox";
      repo = "vim-easytags";
      rev = "master";
      sha256 = "0i8ha1fa5d860b1mi0xp8kwsgb0b9vbzcg1bldzv6s5xd9yyi12i";
    };
    dependencies = [ "vim-misc" ];
  };

  "vim-javascript" = buildVimPlugin {
    name = "vim-javascript";
    src = fetchFromGitHub {
      owner = "pangloss";
      repo = "vim-javascript";
      rev = "master";
      sha256 = "0gvafnmrgjqbrln494cximjr9z32kb5h1zzg2k0kqr9mh19655m1";
    };
  };

  jsx = buildVimPlugin {
    name = "jsx";
    src = fetchFromGitHub {
      owner = "mxw";
      repo = "vim-jsx";
      rev = "master";
      sha256 = "0fbv36fpdlxg8gjap8zyr1zbvpysqmlvasnf2c6p5pjrnackn2ld";
    };
  };

  jedi = buildVimPlugin {
    name = "jedi";
    src = fetchFromGitHub {
      owner = "davidhalter";
      repo = "jedi-vim";
      rev = "master";
      sha256 = "1anjgdis0d33rdqj71vglr72xp4pl9m747szmf7cgjkjs9gpy9a2";
    };
  };

  "python-syntax" = buildVimPlugin {
    name = "python-syntax";
    src = fetchFromGitHub {
      owner = "hdima";
      repo = "python-syntax";
      rev = "master";
      sha256 = "1ix7li8sjcn3i3g9jm2jng1gkjqh8r11qccfdblkjv7wxxzwpg01";
    };
  };

  "deoplete-go" = buildVimPlugin {
    name = "deoplete-go";
    src = fetchFromGitHub {
      owner = "zchee";
      repo = "deoplete-go";
      rev = "master";
      sha256 = "1bi0ryjpjjcazb4pm2cmqcb445wg42mmzhxs5nflny210mq99b2a";
    };
    dependencies = [ "deoplete" ];
  };

  "deoplete-jedi" = buildVimPlugin {
    name = "deoplete-jedi";
    src = fetchFromGitHub {
      owner = "zchee";
      repo = "deoplete-jedi";
      rev = "master";
      sha256 = "0hcyx027i5sajl63607zjskhdwsvinkr2zg0h0jw7bxg1vwz9ppk";
    };
    dependencies = [ "deoplete" "jedi" ];
  };

  "vim-pi" = buildVimPlugin {
    name = "vim-pi";
    src = fetchgit {
      url = "https://bitbucket.org/vimcommunity/vim-pi.git";
      rev = "43de8193df0a9437e4a329fce0dad9e455842b01";
      sha256 = "0icngpsvvdw3s4l38858imb6gq229jqjygca90pslfrmbbhkqhbq";
    };
  };
}
