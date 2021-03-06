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

# Helpful Snippets

## Update Nix (on a non-nixos machine)

```
sudo -i sh -c 'nix-channel --update && nix-env -iA nixpkgs.nix && systemctl daemon-reload'
```
