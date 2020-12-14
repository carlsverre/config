#!/usr/bin/env python3

import os, sys
from subprocess import Popen, PIPE, DEVNULL

FORMAT = "{{ uc(status) }}|{{ title }} - {{ artist }}"

playerctl = Popen(["playerctl", "-F", "--format", FORMAT, "metadata"], stdout=PIPE, stderr=DEVNULL)

for line in playerctl.stdout:
    status, info = line.decode().split("|", 2)
    if status == "PLAYING":
        print(info.strip(), flush=True)
    else:
        print("Not Playing", flush=True)
