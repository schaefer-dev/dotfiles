#!/usr/bin/env python
# Usage: stream <name>
# or stream https://www.twitch.tv/<name>
import subprocess
import argparse

DEFAULT_QUALITY = "720p"

parser = argparse.ArgumentParser()
parser.add_argument("channel", help="Twitch channel name")
parser.add_argument("quality", help="Video quality", nargs="?", default=DEFAULT_QUALITY)
parser.add_argument(
    "-p", "--pip", help="Open in Picture in Picture mode", action="store_true"
)
args = parser.parse_args()


channel = args.channel

if (
    channel.startswith("https://")
    or channel.startswith("twitch.tv")
    or channel.startswith("m.twitch.tv")
):
    pass
else:
    channel = "https://www.twitch.tv/" + channel

print("Opening {}".format(channel))

if args.pip:
    iina_pip = "--pip"
else:
    iina_pip = ""

cmd = "streamlink --stdout {} {} | iina --stdin {}".format(channel, args.quality, iina_pip)
subprocess.run([cmd], shell=True)
