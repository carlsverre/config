#!/usr/bin/env python3

from subprocess import Popen, PIPE, DEVNULL

FORMAT = "{{ uc(status) }}|{{ playerName }}|{{ artist }} - {{ title }}"

MAX_LEN = 50
DEFAULT_ICON = ""
PLAYER_ICON = {
    "spotify": "",
    "chrome": "",
}

def process_output(proc):
    print(DEFAULT_ICON + "  Not Playing", flush=True)
    for line in proc.stdout:
        line = line.decode().strip()
        if line == "":
            continue

        status, player_name, info = line.split("|", 3)
        if status == "PLAYING":
            icon = PLAYER_ICON.get(player_name, DEFAULT_ICON)
            if len(info) > MAX_LEN:
                info = info[:MAX_LEN] + "..."

            print(icon + "  " + info, flush=True)
        else:
            print(DEFAULT_ICON + "  Not Playing", flush=True)

playerctl = Popen(["playerctl", "-F", "--format", FORMAT, "metadata"], stdout=PIPE, stderr=DEVNULL)
process_output(playerctl)
