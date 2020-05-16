self: super:

let
  nix-tools = [
    super.nix-prefetch-scripts
    super.nix-prefetch-git
  ];

  linux-tools = [
    super.patchelf
    super.hwinfo
    super.lshw
    super.pciutils
    super.parted
    super.usbutils
    super.lsof
  ];

  network-tools = [
    super.curl
    super.ipcalc
    super.nmap
    super.units
    super.tcpdump
    super.wget
    super.bind
    super.traceroute
    super.pdsh
    super.openssh_with_kerberos
    super.heimdalFull
  ];

  dev-tools = [
    (super.neovim.override {
      vimAlias = true;
      withRuby = false;
      withNodeJs = true;
    })
    super.git
    super.jq
    super.bc
    (super.ctagsWrapped.ctagsWrapped.override { name = "ctags"; })
    super.fasd
    super.autojump
    super.dos2unix
    super.gnumake
    super.direnv
    super.unzip
    super.p7zip
    super.gcc
    super.libstdcxx5
    super.awscli
    super.azure-cli
    super.gdb
    super.ncurses
    super.zip
    super.docker_compose
    super.aria2
    super.terraform
    super.packer
    super.kubectl
    super.pv
    super.sift
    super.ripgrep
    super.fzf
    super.mysql
    super.rlwrap
    super.imagemagick
    super.sqlite
    super.file
    super.tree
    super.apg
    super.postgresql
    super.rxvt_unicode.terminfo
    super.lm_sensors
    super.google-cloud-sdk
  ];

  go-env = [
    super.go
    super.gotools
    super.golint
    super.go2nix
    super.dep
  ];

in
  {
    base-env = super.buildEnv {
      name = "base-env";
      paths =
        nix-tools
        ++ linux-tools
        ++ network-tools
        ++ dev-tools;
    };

    hex-env = super.buildEnv {
      name = "hex-env";
      paths =
        nix-tools
        ++ go-env
        ++ [
          (super.neovim.override {
            vimAlias = true;
            withRuby = false;
            withNodeJs = true;
          })

          # dev-tools
          super.jq
          super.fasd
          super.autojump
          super.direnv
          super.sift
          super.ripgrep
          super.fzf
          super.rlwrap
          super.patchelf
          super.sqlite

          # network-tools
          super.ipcalc

          # desktop-apps
          super.gcolor2

          # x11-tools
          super.arandr
          super.autorandr
          super.feh
          super.peek
        ];

      extraOutputsToInstall = [ "man" "doc" ];
    };
  }
