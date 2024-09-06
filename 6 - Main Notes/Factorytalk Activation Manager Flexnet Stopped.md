
2024-09-02 07:45

Status:

Tags:

[[Rockwell Automation]]
[[Factorytalk Activation Manager]]

# Factorytalk Activation Manager Flexnet Stopped

Summary

FactoryTalk Activation Manager: FlexNet Stopped

Problem

- FactoryTalk Activation Manager shows `Server state: FlexNet Stopped.`
    
    ![](https://images.rakb.link/1071089/stopped fn.png)
    

- In `Services.msc`: FactoryTalk Activation Service service is not running, after manual start a message appears:
    
    `The FactoryTalk Activation Service service on Local Computer started and then stopped. Some services stop automatically if they are not in use by other services or programs.`
    
    ![image](https://images.rakb.link/1071089/1071089-1.png)
    

- `RSsvr.log` in the Activations folder says:  
    `(flexsvr) Lost communications with lmgrd Communication error. Connection closed. Exiting. (flexsvr) EXITING DUE TO SIGNAL 28 Exit reason 5.`

- LMTOOLS shows `System Error:11001 "WinSock: Host not found (HOST_NOT_FOUND)"`
- A log file of FactoryTalk Activation Manager shows: "`WinSock: Access denied`"

Cause

#### Cause 1

Another program is using the same FLEXnet Licensing Service 64 and conflicts with the FactoryTalk Activation Manager.

---

#### Cause 2

The conflict of ports with different software. The logs file shows `ERROR: license files have conflicting port numbers`

`(lmgrd) pid 11712   (lmgrd) ERROR: license files have conflicting port numbers   (lmgrd) -1 and 27010   (lmgrd) Please edit the license files so the port numbers   (lmgrd) on the SERVER line are identical.`

---

#### Cause 3

`hosts` file does not contain an entry for localhost.

In logs we can see the following information:

`(lmgrd) Flexsvr exited with status 67 (not able to resolve local host)   (lmgrd) This error probably results from:   (lmgrd) 1. DNS server not able to resolve localhost.   (lmgrd) 2. /etc/hosts file does not contain an entry for localhost.   (lmgrd) To correct the problem put localhost entry in /etc/hosts file.`

Solution

#### Solution 1

1. Check the PC to see if AutoCAD or a similar software product that uses the FLEXnet service is installed. Disabling this service/program may not help.
    
2. If it is possible download a more recent version of the FactoryTalk Activation Manager (make sure check the compatibility with the O.S and the others software) and make an upgrade.
    

---

#### Solution 2

Check TCP settings in FactoryTalk Activation Manager, for more details please follow this technote: [QA10319 - Changing TCP port number in FactoryTalk Activation Manager](https://rockwellautomation.custhelp.com/app/answers/answer_view/a_id/184922 "Changing TCP port number in FactoryTalk Activation Manager")  
Note: If a customer already had port numbers changed, make sure that ftasystem.lic and all licensing files include the same numbers.

---

#### Solution 3

Note: Use this solution only when the error message in the logs is as described above.  
This error occurs on computers which have a problem looking up the localhost. To confirm this, you can ping localhost on the machine: when there are issues, the ping does not work.  
To work around the issue, as an administrator edit `C:\Windows\System32\Drivers\etc\hosts` and uncomment the following line.  
`# 127.0.0.1 localhost`

---

#### Solution 4

1. Move the licenses from the Activations folder to a different location.
    
2. Refresh the server in theAdvanced tab in FactoryTalk Activation Manager.
    
3. If the server states `Running`, put back the licenses to the Activations folder one by one and refresh the server after each one is moved back.
    

Note: If the client has already installed FactoryTalk Activation Managerv4.00.02,upgrade it at least to v4.01 or greater.

---

#### Solution 5

For testing purposes, disable your antivirus software and refresh the activation server.

If you find out that the server state changes to `Running` and doesn't go back to `FlexNet Stopped` please add Rockwell software to the antivirus exceptions list.  
Note: This has been seen with AVG antivirus software.

Refer to a Knowledgebase article [PN826 - Security considerations when using Rockwell Automation Software Products](https://rockwellautomation.custhelp.com/app/answers/answer_view/a_id/609492 "Security considerations when using Rockwell Automation Software Products") - attached to this article you'll find the `.PDF` file with all services that should be excluded from scanning.

Note: Even though the exclusions list includes activation-related services (FactoryTalk Activation Helper/Service, Codemeter etc.),this procedure was made with Studio 5000 in mind and includes Studio 5000 processes. It is recommended to add this list completely.

---

#### Solution 6

Follow the steps below:

1. Stop FactoryTalk Activation Helper and FactoryTalk Activation Service in `Services.msc`.
    
2. Delete old logs from Factory Talk Activation Manager'sdefault path:`C:\Users\Public\Documents\Rockwell Automation\Activations\Logs`
    
3. Restart FactoryTalk Activation Helper and FactoryTalk Activation Service.
    
4. Refresh the server and Available Activations in FactoryTalk Activation Manager.
    

---

#### Solution 7

Make sure that computer name does not contain any special characters.

---

#### Solution 8

Uninstall FactoryTalk Activation Manager and reinstall it. Then, reboot the computer and verify the Server state.

---

#### Solution 9

Make sure there are no unrelated files or expired license in the Activations folder .

Apart from the license files in the Activations folder there also should be:

- Logs folder
- `flexsvr.opt`
- `ftasystem.lic`
- `ftasystem2.lic`

---

#### Solution 10

Delete RNL files as per following technote: [BF12152 - FactoryTalk: Deleting the RNL Files](https://rockwellautomation.custhelp.com/app/answers/answer_view/a_id/897947 "FactoryTalk: Deleting the RNL Files") .

---

#### Solution 11

Stop/start the server in `LMTOOLS.exe`. For instructions, see the technote [BF14542 - Refreshing server of FactoryTalk Activation Manager using LMTOOLS application](https://rockwellautomation.custhelp.com/app/answers/answer_view/a_id/1074322 "Refreshing server of FactoryTalk Activation Manager using LMTOOLS application") .

---

#### Solution 12

Repair FactoryTalk Activation Manager and reboot the machine.

---

#### Solution 13

The hostname is set incorrectly. Correct the hostname in the computer and power cycle.

Avoid using non-alphanumeric characters like `-!@#$%&*_-+='\(){}[]:;"'<>,.?/ñÑöüä`. Maximum name length is 15 characters.

If changing the hostname is not an option, downgrade your FactoryTalk Activation Manager to v4.00.02 or 4.01.00.

---

#### Solution 14

The look-up for the hostname on the SERVER line in the license file failed. In this case, typically the following error message is shown in the log file:

`Cannot find SERVER hostname in network database.`

Verify that ports 27000 to 27009 are open and that you can access the activation server by using those ports. It is often enough to disconnect from the corporate network and restart the PC to resolve the issue.

---

#### Solution 15

You can reset WinSock if the log file gives a message `WinSock: Access denied`. To do that:

1. Go to your Windows Start menu and select Run
2. Type `cmd`in the search box to open up Command Prompt. It is advisable to run Command Prompt as administrator.
3. To reset WinSock, in the first line type the following command: `netsh winsock reset`
4. Press Enter.

---

#### Solution 16

Uninstall Microsoft Hyper-V.

---

#### Solution 17

FactoryTalk Activation Service in `Services.msc` was disabled at every Windows startup by Trend Micro security software.

Uninstall Trend Micro or add FactoryTalk Activation Manager to exceptions.

---

#### Solution 18

This can happen if traffic is going through IPv6 rather than IPv4.  
See following technote in order to fix the registry key: [BF23867 - FactoryTalk Activation Manager - AutoDesk Combo Security HotFix issue](https://rockwellautomation.custhelp.com/app/answers/answer_view/a_id/1092025 "FactoryTalk Activation Manager - AutoDesk Combo Security HotFix issue") .

---

#### Solution 19

If Application Code Manager V3.20 was installed recently update Factorytalk Activation Manger to V4.05 or later.

---

#### Solution 20

Perform clean reinstall of FactoryTalk Activation Manager as described in [QA28634-FactoryTalk Activation Manager: Manual cleanup for a clean installation](https://rockwellautomation.custhelp.com/app/answers/answer_view/a_id/765035 "FactoryTalk Activation Manager: Manual cleanup for a clean installation")  .

---

#### Solution 21

Change security settings for Activation Manager folder and Activations folder:

1.  Navigate to Rockwell Software folder (by default: `C:\Program Files (x86)\Rockwell Software`)
    
2. Right click on FactoryTalk Activation folder and select `Properties`
3. Go to `Security` tab and click `Edit` under Groups and Users
4. Check option `Full Control` to Current user, System, Trusted Installer
5. Click `Apply` and `OK`

1. Follow the same steps for Activations folder (by default: `C:\Users\Public\Documents\Rockwell Automation\Activations`)
2. Run FactoryTalk Activation Manager with admin rights
# Reference
