
2024-08-16 14:30

Status:

Tags:

# Windows

## Windows Product Key

```cmd
wmic path softwareLicensingService get OA3xOriginalProductKey
```

## Task Manager Shortcut

```cmd
Control + Shift + ESC
```

### Restore Explorer

1. Task Manager
2. Run new task
3. `explorer.exe`

## CMD Shortcuts

### Windows 10 Password Change

```cmd
net user [username] [new password]
```

### System Scan

```cmd
sfc /scannow
```

System scan to make sure they are working fine. Fixes Windows setup and recovery.

### See Connections to Outside PC

```cmd
netstat -ano | findstr "ESTABLISHED"
wmic process where processid=xxxx get ExecutablePath
```

Retrieves the executable path of a specific process given its Process ID.

### Upgrade All Installed Applications

```cmd
winget upgrade --all
```

Uses the Windows Package Manager (winget) to upgrade all installed applications.

### Windows Memory Diagnostic Tool

```cmd
mdsched
```

Launches the Windows Memory Diagnostic tool to check for memory problems.

### System File Checker Tool

```cmd
sfc /scannow
```

Runs the System File Checker tool to scan and repair corrupted system files.

### Check Health of Windows Image

```cmd
DISM /Online /Cleanup /CheckHealth
DISM /Online /Cleanup /ScanHealth
DISM /Online /Cleanup /RestoreHealth
```

Checks the health of the Windows image to see if any corruption is present, scans the Windows image for corruption, and repairs the Windows image if corruption is detected.

### List All Running Processes

```cmd
tasklist
```

### Terminate Running Processes

```cmd
taskkill
```

### Generate Wireless Network Report

```cmd
netsh wlan show wlanreport
```

### Display Network Interfaces Information

```cmd
netsh interface show interface
netsh interface ip show address | findstr “IP Address”
netsh interface ip show dnsservers
```

Displays information about the network interfaces on the system, the IP addresses of network interfaces, and the DNS servers for the network interfaces.

### Windows Firewall Control

```cmd
netsh advfirewall set allprofiles state off
netsh advfirewall set allprofiles state on
```

Turns off/on the Windows Firewall for all profiles.

### Network Tools

```cmd
pathping
ping -a
ping -t
tracert
tracert -d
netstat
netstat -af
netstat -o
netstat -e -t 5
route print
route add
route delete
```

Various network diagnostic and troubleshooting commands.

### Restart Computer and Open Advanced Boot Options

```cmd
shutdown /r /o
```

### IP Configuration

```cmd
ipconfig /release
ipconfig /renew
```

Releases and renews the current IP address for all network adapters.

### Windows Memory Diagnostic

```cmd
mdsched
```

## PowerShell Debloating

```powershell
iwr -useb https://christitus.com/win | iex
```

Software to help with debloating Windows.

### Check if Running as Administrator in PowerShell

```powershell
(New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
```

### Run exe without admin

Create bat file and put info inside it

```
Set_COMPAT_LAYER=RunAsInvoker
Start #sample.exe
```


System Icons:  **%SystemRoot%\system32\imageres.dll**

# Reference

[Windows technical documentation](https://learn.microsoft.com/en-us/windows/)
[[WSL]]
[ChrisTitusTech Windows Debloater](https://github.com/ChrisTitusTech/winutil)

