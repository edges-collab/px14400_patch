# px14400_patch

The final version of the PX14400 digitizer board driver released by Vitrek is PX14400.2.20.56.tar.gz, which supports Linux kernel version 4.15, corresponding to Ubuntu 16.04 LTS up to Ubuntu 19.10.  The drivers have build errors for Linux kernel version 5.15 and higher.  This repository contains a patch making it possible to build the drivers for Linux kernel version 5.4 and 5.15, covering Ubuntu 20.04 LTS.

The original drivers provided by Vitrek are available at: https://vitrek.com/signatec/support/downloads-2/  

To apply the patch:

1. Download and unzip the original drivers from Vitrek
2. Download this git reposority
3. cd into this folder
4. Run ./apply_patch.sh -p /path/to/PX14400/driver/source/directory
5. cd into the PX14400 driver source directory and build as usual
