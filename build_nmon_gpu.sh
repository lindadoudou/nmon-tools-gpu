#!/bin/bash

gcc -o nmon_gpu lmon16i.c -g -O3 -Wall -D JFS -D GETUSER -D LARGEMEM -lncurses -lm -g -D NVIDIA_GPU /usr/lib/x86_64-linux-gnu/libnvidia-ml.so -D UBUNTU
