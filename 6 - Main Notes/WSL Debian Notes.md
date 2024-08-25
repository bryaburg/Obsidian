
2024-08-16 14:13

Status:

Tags:

[[Linux]]
[[Windows]]
[[WSL]]
# Debian Notes

## Disk Image WSL

```cmd
wsl --list --all
wsl.exe --system -d <distribution-name> df -h /mnt/wslg/distro
wsl.exe --shutdown
```

- This will show all available WSL distribution names then you can see how much is allocated to them and how much is being used.  Then you need to shutdown wsl to disk image them
```cmd
diskpart
DISKPART> select vdisk file="C:\Users\bburgess\AppData\Local\Packages\TheDebianProject.DebianGNULinux_76v4gfsz19hv4\LocalState\ext4.vhdx"
DISKPART> compact vdisk
DISKPART> exit
```

- In CMD you need to run diskpart, select your disk by its location, then compact it and exit

```Powershell
optimize-vhd -mode full -path "C:\Users\bburgess\AppData\Local\Packages\TheDebianProject.DebianGNULinux_76v4gfsz19hv4\LocalState\ext4.vhdx"
```

- Sometimes, defragmenting or zero-filling the `.vhdx` file before compacting it can yield better results. You can try using the `optimize-vhd` command in PowerShell:
# Reference

