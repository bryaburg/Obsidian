
2024-09-16 12:49

Status:

Tags:

# Factorytalk Activation Manager Opening Problem

Summary
FactoryTalk Activation Manager: Unexpected error when opening
Problem

    When launching the FactoryTalk Activation Manager, the following unexpected error is reported. Splash screen is not displayed, only this error.
    An unexpected error has occurred. This information has been written to a file on your desktop named "FTAManagerException.txt"
    "Exception has been thrown by the target of an Invocation."

Solution
Solution 1
As a first attempt at resolving any underlying issues with WMI, follow these steps:

    Run Services as administrator.
    Stop the Windows Management Instrumentation (a.k.a. WMI) service and set it to disabled.
    Run Command Prompt (a.k.a. CMD) as administrator.
    Type the following commands in the prompt. You can use the mouse to copy and paste each line into the command window. Press Enter at the end of each line, wait for the commands to finish:
        CD C:\Windows\System32\wbem
        FOR /f %s in ('dir /b /s *.dll') do regsvr32 /s %s
        Net stop /y winmgmt
        FOR /f %s in ('dir /b /s *.mof *.mfl') do mofcomp %s
        Net start winmgmt
        winmgmt /resyncperf
    Set WMI service back to automatic startup
    Reboot the computer.
# Reference

[[Factorytalk Activation Manager]]