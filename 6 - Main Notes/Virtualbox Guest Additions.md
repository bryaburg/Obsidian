
2024-09-11 17:26

Status:

Tags:

[[Virtualbox]]

# Virtualbox Guest Additions

Linux install

```shell
sudo apt update
sudo apt install build-essential dkms linux-headers-$(uname -r)
sudo mkdir -p /mnt/cdrom
sudo mount /dev/cdrom /mnt/cdrom
cd /mnt/cdrom
sudo sh ./VBoxLinuxAdditions.run --nox11
sudo shutdown -r now
lsmod | grep vboxguest
```
# Reference
