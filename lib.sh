# verify ROOTDIR is set
if [ -z "$ROOTDIR" ]; then
    echo "Must set \$ROOTDIR before sourcing lib"
    exit 1
fi

function is_mac {
    test $(uname -s) = "Darwin"
}

function canonical_path {
    local path="$1"
    if is_mac; then
        python -c "import os;print(os.path.realpath('$path'))"
    else
        readlink -f "$path"
    fi
}

# Sets up a simlink at $pointer pointing at $target
function safelink {
    local pointer="$1"
    local target="$2"

    # make sure that the pointer's directory exists
    mkdir -p $(dirname "$pointer")

    # check to see if the pointer exists
    if [[ -e "$pointer" ]]; then
        # if it exists, figure out its canonical path
        # if its not a symlink this will just return the abspath to $pointer
        local current_target="$(canonical_path "$pointer")"

        # if its pointing at the right spot, we are done
        if [[ "$current_target" == "$target" ]]; then
            echo "[ok] $pointer -> $target"
            return 0
        fi

        # otherwise, we need to warn the user
        echo "[!!] $pointer already exists, currently looks like:"
        ls -l "$pointer"
    else
        echo "[++] $pointer -> $target"
    fi

    # setup the symlink, -i will ask the user before overwriting a symlink
    ln -i -s "$target" "$pointer"
    return $?
}

function install_dotfile {
    local name="$1";
    local target="${2:-.$name}";

    safelink "$HOME/$target" "$ROOTDIR/dotfiles/$name"
}
