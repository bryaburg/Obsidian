
2024-09-02 08:13

Status:

Tags:

[[Rockwell Automation]]
[[Factorytalk Activation Manager]]
# Factorytalk Activation Manager manual cleanup

FactoryTalk Activation Manager: Manual cleanup for a clean installation

Question

- What is the procedure to manually clean up FactoryTalk Activation Manager (FTAM) to perform a clean installation?
- How to manually uninstall FactoryTalk Activation Manager?

Environment

FactoryTalk Activation Manager

Answer

1. Backup licenses from `C:\Users\Public\Documents\Rockwell Automation\Activations` by copying them to different folder.
2. Uninstall FactoryTalk Activation Manager from Programs and Features in Windows Control Panel.
3. Back up the system registry.
    1. Click Start --> Run.
    2. Type regedit and click OK.
    3. Click File --> Export.
    4. At the bottom, select All for Export Range.
    5. Provide a file and Click Save.
4. Using the Registry Editor, manually remove the following keys in the registry:  
    For 32-bit operating system:
    
    - `HKEY_LOCAL_MACHINE\SOFTWARE\Rockwell Software\FactoryTalk Activation`
    - `HKEY_LOCAL_MACHINE\SOFTWARE\FLEXlm License Manager`
    - `HKEY_CURRENT_USER\Software\FLEXlm License Manager`
    
    For 64-bit operating system:
    - `HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Rockwell Software\FactoryTalk Activation`
    - `HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\FLEXlm License Manager`
    - `HKEY_LOCAL_MACHINE\SOFTWARE\FLEXlm License Manager`
    - `HKEY_CURRENT_USER\Software\FLEXlm License Manager`
5. Delete the Activations folder in:
    - `C:\Program Files\Common Files\Rockwell\Activations`
    - `C:\Documents and Settings\All Users\Shared Documents\Rockwell Automation\Activations`
    - `C:\Users\Public\Documents\Rockwell Automation\Activations`
6. Reboot the computer.
7. Install Factory Talk Activation Manager.
8. Copy over the backed-up license files into the Activations folder: `C:\Users\Public\Documents\Rockwell Automation\Activations`
9. Start FactoryTalk Activation Manager.
10. Select the Advanced tab, click _Refresh This Server --> Refresh Server._
11. Go to **Manage Activations** tab, click _Find Available Activations --> Refresh Activations,_ the licenses should be listed there.
# Reference
