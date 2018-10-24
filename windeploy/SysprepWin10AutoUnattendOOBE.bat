rem ****************************************************************************
rem NAME:
rem           SysprepWin10AutoUnattend.bat
rem PURPOSE:
rem           This batch file will Sysprep THIS Windows 10 machine, bypassing user interaction during Windows Setup.
rem DESCRIPTION:
rem           Pass an unattend file to the sysprep command that contains answers to the questions asked during an out of the box experience (oobe). Run this batch file with Admin Privileges. Install batch file in C:\windeploy\ (if dir not exist create). C:\windeploy\ will be deleted at the end of Setup. Recommend you run CleanWin10ForSysprepOrVMwareTemplate.bat first. The -force flag is required and prevents accidental (dblclk) runs. unattend.xml will be copied to c:\windows\system32\sysprep during Setup.  This script also works for VMs, and is the Microsoft approved way of cloning.  NOT USING /vm option to keep flexibility to move the VM to different machines.
rem PARAMS:
rem           -force    This is required for the sysprep to execute.  
rem USAGE:
rem           C:\windeploy\SysprepWin10UnattendAutoOOBE.bat -force
rem RESULTS:
rem           A syspreped and shutdown computer.  When turned on, the user will not be asked any questions, and the windows will auto login as Administrator.
rem AUTHOR:
rem           Mike Stine
rem DATE:
rem           9/6/2018
rem ****************************************************************************

@ECHO OFF

rem ****************************************************************************
rem Sysprep Command-Line Options
rem   /oobe         End users experience an "out of the box" experience, customizing their Windows OS.
rem   /generalize   Preps the windows install to be imaged by removing all unique system info from the windows install, resets the security id (SID, clears any system restore points, and deletes event logs.
rem   /shutdown     Shuts down the computer after the Sysprep command finishes running.
rem   /unattend:<answer>  Path to answer file used during Windows Installation 
rem   /vm           You must deploy the Virtual Hard Disk (VHD) on a Virtual Machine (VM) or hypervisor with the same hardware profile.
rem ****************************************************************************

if "%~1"=="-force" echo %windir%system32\sysprep\sysprep.exe /oobe /generalize /shutdown /unattend:C:\windeploy\Autounattend.xml

rem DONE 
