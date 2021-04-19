# Wat?
Most of what you need to replicate my linux desktop environment on most
machines. Periodically I even get this working on OSX. :)

# Setup

## Dependencies

* [zsh](https://github.com/alacritty/alacritty)
* [i3lock](https://github.com/i3/i3lock)
* [rofi](https://github.com/davatorium/rofi)
* [herbstluftwm](https://herbstluftwm.org/)
    * Need to install from source
* [polybar](https://github.com/polybar/polybar)
* [google-chrome](https://www.google.com/intl/en_ca/chrome/)
* [dunst](https://github.com/dunst-project/dunst)
* [alacritty](https://github.com/alacritty/alacritty)
* [Nix package manager](https://nixos.org/download.html)
* [maim](https://github.com/naelstrof/maim)
* [colorpicker](git@github.com:ym1234/colorpicker.git)

## Fonts

* [Lato](https://fonts.google.com/specimen/Lato)
    * `sudo apt install fonts-lato`
* [Hack Nerd Font](https://www.nerdfonts.com/font-downloads)
    * On linux:
    ```
    mkdir -p ~/.local/share/fonts
    wget -O/tmp/hack.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
    pushd ~/.local/share/fonts
    unzip /tmp/hack.zip
    popd
    fc-cache -f -v
    fc-list | grep Hack
    ```

## Install

* Run `./install` to sync dotfiles into the homedir
* Run `nix-env -i dev-env` to install environment
* Install python dependencies

## Post Install Tooling

* [rustup](https://rustup.rs/)
* [nvm](https://github.com/nvm-sh/nvm)

## Other things I like to have

* [keybase](https://keybase.io/)
* [pyenv](https://github.com/pyenv/pyenv#installation)

# Helpful Snippets

## Update Nix (on a non-nixos machine)

```sh
sudo -i sh -c 'nix-channel --update && nix-env -iA nixpkgs.nix && systemctl daemon-reload'
```

## Modify input device settings via Xorg.conf.d

* Tested on Debian
* Add files to `/usr/share/X11/xorg.conf.d`

**Kensington Expert Wireless TB**

```xorg
Section "InputClass"
    Identifier "Expert Wireless TB"
    MatchProduct "Expert Wireless TB"
    Driver "libinput"
    Option "AccelProfile" "adaptive"
    Option "AccelSpeed" "-0.5"
    Option "ScrollMethod" "button"
    Option "ScrollButton" "8"
    Option "ButtonMapping" "1 8 3 4 5 6 7 2 9"
EndSection
```

**Microsoft Sculpt**

```xorg
Section "InputClass"
        Identifier      "Microsoft Keyboard"
        MatchIsKeyboard "on"
        MatchProduct    "Microsoft"
        MatchProduct    "Nano Transceiver"
        Option          "XkbOptions" "caps:escape"
EndSection
```

## Setup pyenv
Requires [pyenv](https://github.com/pyenv/pyenv#installation) and [pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv) to be installed first.

```bash
# ensure these are up to date before proceeding
py2_version=2.7.18
py3_version=3.9.4

# install versions
# if you have compile errors make sure you have all the python compilation dependencies installed
pyenv install $py3_version
pyenv install $py2_version
pyenv global $py3_version $py2_version
pip install --upgrade pip
pip2 install --upgrade pip

pyenv virtualenv $py3_version py3nvim
pyenv activate py3nvim
pip install pynvim
pyenv virtualenv $py2_version py2nvim
pyenv activate py2nvim
pip install pynvim
```
