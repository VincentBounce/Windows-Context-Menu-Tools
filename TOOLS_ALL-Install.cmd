::Installing tools | WindowsContextMenuTools created by VincentBounce
::not working if called from an UNC path

@echo off
color F0
title Context Menu Tools for Windows File Explorer install
::get script directory finishing by \ without quotes
SET SCRIPT_PATH=%~dp0
::get script directory alone
set SCRIPT_PATH=%SCRIPT_PATH:~0,-1%

::<UAC_PROMPT to request UAC = User Account Control = admin rights granted>
call :UAC_PROMPT_ISADMIN
if %errorlevel% == 0 (
    goto :UAC_PROMPT_RUN
) else (
    color F9 & echo Requesting Administrator privileges...
    goto :UAC_PROMPT_CREATE
)
exit /b
:UAC_PROMPT_ISADMIN
    fsutil dirty query %SystemDrive% >nul
exit /b
:UAC_PROMPT_RUN
::<UAC_PROMPT script below executed in admin mode>

::installation
color F9 & echo Install...
cd "%SCRIPT_PATH%"

regedit /s TOOL_Get-fileHash.reg
regedit /s TOOL_List-in-Clipboard.reg
regedit /s TOOL_List-in-Notepad.reg
regedit /s TOOL_Lock-BitLocker-Drive.reg
::regedit /s TOOL_PromptHereOptional-Git.reg
::regedit /s TOOL_PromptHereOptional-PowerShell7.reg
regedit /s TOOL_PromptHere-PowerShell5-ISE.reg
regedit /s TOOL_Shredder-Wipe-free-space.reg

::<WINDOWS11_DETECT is Windows 11?>
for /f "tokens=4 delims=[] " %%a in ('ver') do set v=%%a
set w=%v:10.0.=%
if %v% == %w% goto WINDOWS11_DETECT_SKIP
set x=.%w:*.=%
setlocal enabledelayedexpansion
set w=!w:%x%=!
if !w! lss 22000 goto WINDOWS11_DETECT_SKIP
    endlocal
    echo Windows 11 detected.
    ::no more tools because they are built-in Windows 11
goto:WINDOWS11_DETECT_END
:WINDOWS11_DETECT_SKIP
    endlocal
    echo Windows 11 not detected.
    ::these tools are not built-in Windows 7-10
    TOOL_PromptHereW10-CMD.reg
    TOOL_PromptHereW10-PowerShell5.reg
    TOOL_PromptHereW10-WindowsTerminal.reg
    copy WindowsTerminal.ico %SystemRoot%\System32\
goto:WINDOWS11_DETECT_END

:WINDOWS11_DETECT_END
::end of installation
color F2 & echo Installed. & echo [Space] to close.
pause >nul

::<UAC_PROMPT script above executed in admin mode>
exit /b
:UAC_PROMPT_CREATE
    echo Set UAC = CreateObject^("Shell.Application"^) > "%TEMP%\tempGetAdmin.vbs"
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %~1", "", "runas", 1 >> "%TEMP%\tempGetAdmin.vbs"
    "%TEMP%\tempGetAdmin.vbs"
    del "%TEMP%\tempGetAdmin.vbs"
exit /B
