# nmon-tools-gpu
nmon tools(nmon,nmonchart) support Nvidia GPU profiling

# homepage
[nmon](http://nmon.sourceforge.net/pmwiki.php?n=Main.HomePage)
[nmonchart](http://nmon.sourceforge.net/pmwiki.php?n=Site.Nmonchart)

# install dependencies
- libncursesw5-dev
```bash
sudo apt-get install libncurses5-dev
```

# build 
replace libnvidia-ml path in `build_nmon_gpu.sh` with your own library path 
```bash
gcc -o nmon_gpu lmon16i.c -g -O3 -Wall -D JFS -D GETUSER -D LARGEMEM -lncurses -lm -g -D NVIDIA_GPU /usr/lib/x86_64-linux-gnu/libnvidia-ml.so -D UBUNTU
```

# simple usage
- record gpu data 
  ```bash 
  ./nmon_gpu -f -c 10000 -s 3 -a
  ```

- stop nmon
  ```bash
  kill -s USR2 pid 
  ```

# chart
```bash 
./nmonchart taolizhicheng_1080ti_190610_0944.nmon
```
it will generate a file named `taolizhicheng_1080ti_190610_0944.html`
