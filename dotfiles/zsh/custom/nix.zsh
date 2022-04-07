# Nix
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi
# End Nix

export LOCALE_ARCHIVE_2_27="$HOME/.local/share/nix-locale/result/lib/locale/locale-archive"
export LOCALE_ARCHIVE_2_11="/usr/lib/locale/locale-archive"
