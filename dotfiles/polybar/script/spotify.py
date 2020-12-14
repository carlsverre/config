#!/usr/bin/env python3

from subprocess import Popen, PIPE, DEVNULL

FORMAT = "{{ uc(status) }}|{{ title }} - {{ artist }}"

def process_output(proc):
    print("Not Playing", flush=True)
    for line in proc.stdout:
        line = line.decode().strip()
        if line == "":
            continue

        status, info = line.split("|", 2)
        if status == "PLAYING":
            print(info, flush=True)
        else:
            print("Not Playing", flush=True)

playerctl = Popen(["playerctl", "-F", "--format", FORMAT, "metadata"], stdout=PIPE, stderr=DEVNULL)
process_output(playerctl)

