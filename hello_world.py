#!/usr/bin/env python3
"""Minimal hello world for Leonardo (CINECA)."""
import os, platform, socket, sys
from datetime import datetime

def main():
    print("Hello, World from Leonardo!")
    print(f"Time:      {datetime.now().isoformat(timespec='seconds')}")
    print(f"Hostname:  {socket.gethostname()}")
    print(f"Python:    {sys.version.split()[0]}")
    print(f"Platform:  {platform.platform()}")
    print(f"Job ID:    {os.environ.get('SLURM_JOB_ID', 'none (not inside a Slurm job)')}")
    print(f"Partition: {os.environ.get('SLURM_JOB_PARTITION', '-')}")
    print(f"CPUs:      {os.environ.get('SLURM_CPUS_ON_NODE', os.cpu_count())}")
    print(f"GPUs:      {os.environ.get('CUDA_VISIBLE_DEVICES', 'none')}")

if __name__ == "__main__":
    main()