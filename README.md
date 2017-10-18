# ubuntuMirror
rsync-based script to create local Ubuntu (or any other Linux distro) repository

### Notes: ###
* The program creates 14 screen-based processes that download repository contents at a 128k rate (128k per process). These 14 screens are divided between 7 downloads from archive.ubuntu.com (pool, indices, dists/xenial*) and security.ubuntu.com (same directories as before). When running the program setup, you can change the download rate to 64k instead of 128k.
* The program currently creates a full local repository only for Ubuntu 16.04 (Xenial), but it can be modified to either create a full Ubuntu mirror, or add/change Ubuntu versions.
* This is going to be a HUGE data collection on your system, so I suggest you mount an external drive with at least 1TB to the /etc/ubuntuMirror directory before running the setup (or at least mae sure you have sufficient disks space).

### Contact? ###
* As always, sure! Why not? If you have any suggestions, comments or improvements, fell free to contact me!
