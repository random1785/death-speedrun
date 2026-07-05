#!/usr/bin/env python3
import os
import subprocess
import time

ROOT = "/workspaces/death-speedrun"
OUT = "/workspaces/death-speedrun.zip"
TARGETS = ["data", "pack.mcmeta", "README.md"]

def snapshot(root: str):
    files = []
    for rel in TARGETS:
        path = os.path.join(root, rel)
        if os.path.isdir(path):
            for dirpath, _, filenames in os.walk(path):
                for name in filenames:
                    full = os.path.join(dirpath, name)
                    st = os.stat(full)
                    files.append((full, st.st_mtime_ns, st.st_size))
        elif os.path.exists(path):
            st = os.stat(path)
            files.append((path, st.st_mtime_ns, st.st_size))
    files.sort()
    return files

def rebuild():
    timestamp = time.strftime("%Y%m%d-%H%M%S")
    versioned_out = f"/workspaces/death-speedrun-{timestamp}.zip"
    subprocess.run(["zip", "-qr", OUT, "data", "pack.mcmeta", "README.md"], cwd=ROOT, check=True)
    subprocess.run(["cp", OUT, versioned_out], check=True)
    print(f"Rebuilt {OUT} and {versioned_out} at {time.strftime('%Y-%m-%d %H:%M:%S')}")

def main():
    rebuild()
    prev = snapshot(ROOT)
    print(f"Watching {ROOT} for changes")
    while True:
        time.sleep(2)
        current = snapshot(ROOT)
        if current != prev:
            rebuild()
            prev = current

if __name__ == "__main__":
    main()
