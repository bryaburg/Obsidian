
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

# Reference

[[Virtualbox Guest Additions]]
