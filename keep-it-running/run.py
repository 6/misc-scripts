#!/usr/bin/env python
import subprocess, sys

def ping(site):
  subprocess.call("curl {0} >/dev/null".format(site), shell=True)

def is_valid_site(string):
  return not (string.strip() == "" or string.strip().startswith("#"))

if __name__ == "__main__":
  with open(sys.argv[1]) as f:
    map(ping, filter(is_valid_site, f.read().split("\n")))
