# batchfile-sysprep-win10-unattend-automated-oobe

##NAME:
batchfile-sysprep-win10-unattend-automated-oobe

##PURPOSE
This batch file Syspreps THIS Window 10 machine.  The deployed image will not ask any of the oobe questions; bypassing user interaction during Windows Setup and will auto-login into admin account.

##DESCRIPTION
Pass an unattend file to the sysprep command that contains answers to the questions asked during an out of the box experience (oobe).  The administratior's password is password. Run this batch file with Admin Privileges. Install batch file in C:\windeploy\ (if dir not exist create). C:\windeploy\ will be deleted at the end of Setup. Recommend you run CleanWin10ForSysprepOrVMwareTemplate.bat first. The -force flag is required and prevents accidental (dblclk) runs. unattend.xml will be copied to c:\windows\system32\sysprep during Setup.  This script also works for VMs, and is the Microsoft approved way of cloning.  NOT USING /vm option to keep flexibility to move the VM to different machines.

###PARAMS
-force    This is required for the sysprep to execute.  

###USAGE
```
C:\windeploy\SysprepWin10UnattendAutoOOBE.bat -force
```

###RESULTS
A syspreped and shutdown computer.  When turned on, the user will not be asked any questions, and the windows will auto login as Administrator.

###AUTHOR
Mike Stine

###DATE
9/6/2018