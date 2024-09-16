
2024-08-16 14:40

Status:

Tags:

# Virtualbox

### Enable Nested Virtualization

```shell
cd C:\Program Files\Oracle\VirtualBox
VBoxManage.exe list vms
VBoxManage.exe modifyvm "GNS3 VM" --nested-hw-virt on
```


### Adjusting Disk Size

C:\Program Files\Oracle\VirtualBox

```shell
VBoxManage.exe modifymedium "E:\Documents\Virtual_Box\vdi\Rockwell\Studios\Rockwell Automation\Studios\36.00.02-Studio5000-Web\36.00.02-Studio5000-Web.vdi" --resize 70000
```
# Reference

[[Virtualbox Guest Additions]]
[Increase Disk Partition Video](https://www.youtube.com/watch?v=7Aqx-VHv2_k) 
