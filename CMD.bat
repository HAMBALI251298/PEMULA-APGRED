@echo off
color c
echo --------------------------------------------------------------------------------
echo 1.always show all icons and notifications on the taskbar
echo --------------------------------------------------------------------------------

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v EnableAutoTray /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer" /v EnableAutoTray /t REG_DWORD /d 0 /f

echo --------------------------------------------------------------------------------
echo 2.Set TEMP
echo --------------------------------------------------------------------------------

mkdir c:\_Temp
setx TMP "C:\_Temp"
setx -m TMP "C:\_Temp"
setx TEMP "C:\_Temp"
setx -m TEMP "C:\_Temp"

echo --------------------------------------------------------------------------------
echo 3.MyComputer On Desktop
echo --------------------------------------------------------------------------------

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 /f

echo --------------------------------------------------------------------------------
echo 4.AutoRestart
echo --------------------------------------------------------------------------------

reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "AutoReboot" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "CrashDumpEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "Overwrite" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "LogEvent" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "SendAlert" /t REG_DWORD /d 0 /f

echo --------------------------------------------------------------------------------
echo 5.Time to display list of OS
echo --------------------------------------------------------------------------------

bcdedit /timeout 0

echo --------------------------------------------------------------------------------
echo 6.Visual Effects
echo --------------------------------------------------------------------------------

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d 3 /f
reg add "HKCU\Control Panel\Desktop" /v "VisualFXSetting" /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d 100 /f
reg add "HKCU\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9012038010000000" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\AnimateMinMax" /v "DefaultApplied" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ComboBoxAnimation" /v "DefaultApplied" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ControlAnimations" /v "DefaultApplied" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\CursorShadow" /v "DefaultApplied" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DragFullWindows" /v "DefaultApplied" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DropShadow" /v "DefaultApplied" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMAeroPeekEnabled" /v "DefaultApplied" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMEnabled" /v "DefaultApplied" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMSaveThumbnailEnabled" /v "DefaultApplied" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\FontSmoothing" /v "DefaultApplied" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListBoxSmoothScrolling" /v "DefaultApplied" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewAlphaSelect" /v "DefaultApplied" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewShadow" /v "DefaultApplied" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\MenuAnimation" /v "DefaultApplied" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\SelectionFade" /v "DefaultApplied" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TaskbarAnimations" /v "DefaultApplied" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\Themes" /v "DefaultApplied" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ThumbnailsOrIcon" /v "DefaultApplied" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TooltipAnimation" /v "DefaultApplied" /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TransparentGlass" /v "DefaultApplied" /t REG_DWORD /d 1 /f

echo --------------------------------------------------------------------------------
echo 7.Visual Memory
echo --------------------------------------------------------------------------------

REG add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagingFiles" /t REG_MULTI_SZ /d "C:\pagefile.sys 0 0" /f

echo --------------------------------------------------------------------------------
echo 8.Turn off system restore
echo --------------------------------------------------------------------------------

vssadmin delete shadows /for=c: /all /quiet


Reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /V DisableSR /t REG_DWORD /d 1 /f
Reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /V DisableConfig /t REG_DWORD /d 1 /f
Reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /V "RPSessionInterval" /t REG_DWORD /d 0 /f

Reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SPP\Clients" /V "{09F7EDC5-294E-4180-AF6A-FB0E6A0E9513}" /f
Reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SPP\Clients" /V "{3E7F07C9-6BC3-11DC-A033-0019B92BB8B1}" /f


echo --------------------------------------------------------------------------------
echo 9.Turn off UAC
echo --------------------------------------------------------------------------------

reg ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v HideSCAHealth /t REG_DWORD /d 1 /f

REM Windows update 
REM {E8433B72-5842-4d43-8645-BC2C35960837}.check.103
REM Internet security setting 
REM {E8433B72-5842-4d43-8645-BC2C35960837}.check.104
REM Network firewall 
REM {E8433B72-5842-4d43-8645-BC2C35960837}.check.101
REM Spyware and related protection 
REM {E8433B72-5842-4d43-8645-BC2C35960837}.check.102
REM User Account Control
REM {C8E6F269-B90A-4053-A3BE-499AFCEC98C4}.check.0
REM Virus Protection
REM {E8433B72-5842-4d43-8645-BC2C35960837}.check.100
REM Windows Backup
REM {01979c6a-42fa-414c-b8aa-eee2c8202018}.check.100
REM Windows Troubleshooting
REM {A5268B8E-7DB5-465b-BAB7-BDCDA39A394A}.check.100
REM Check for Update
REM {945a8954-c147-4acd-923f-40c45405a658}.check.42

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Action Center\Checks\{E8433B72-5842-4d43-8645-BC2C35960837}.check.103" /v "CheckSetting" /t REG_BINARY /d "01000000d08c9ddf0115d1118c7a00c04fc297eb010000008ef1df9589104e4786abb6c6709a07db0000000002000000000010660000000100002000000021794d8187f5710b409ab10c4ef10f06a51ee9023dadab0d75d0948cfcaa76e5000000000e800000000200002000000035a5d4a582d4fa0dae640c75442e117301fd7594ee42503411d3ce131dade130b0000000022ae36947a6fdffbd75c9e06b068a19637fac73372940de4bb1d0ec16a266f8d5cd9b794428e710347462641eae15aa12a7745388dc4e971dd1edf08bc2605c6ff497b13b3df96e7879635eae93b59d5bba5e734dd3260b2bad804777ec131c9ec47416b457504d080683ceff9bc9c92fb77913babf501dcbe916bff2d82889d93c4328523b86a9c49c73a4c3b210c021d23e3717db67203e9dded72d8e7afb4b5d8b7dd03d7190ea65f783bab80b354000000096a4e7da9679e6c2580c837d9a0c0b4bb02062b05e471d4d09c44ec81422a4a8a88da68eb29c16d713fe3d520b22216ed776a8bc16d455fe152d454b11404f09" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Action Center\Checks\{E8433B72-5842-4d43-8645-BC2C35960837}.check.104" /v "CheckSetting" /t REG_BINARY /d "01000000d08c9ddf0115d1118c7a00c04fc297eb010000008ef1df9589104e4786abb6c6709a07db0000000002000000000010660000000100002000000021794d8187f5710b409ab10c4ef10f06a51ee9023dadab0d75d0948cfcaa76e5000000000e800000000200002000000035a5d4a582d4fa0dae640c75442e117301fd7594ee42503411d3ce131dade130b0000000022ae36947a6fdffbd75c9e06b068a19637fac73372940de4bb1d0ec16a266f8d5cd9b794428e710347462641eae15aa12a7745388dc4e971dd1edf08bc2605c6ff497b13b3df96e7879635eae93b59d5bba5e734dd3260b2bad804777ec131c9ec47416b457504d080683ceff9bc9c92fb77913babf501dcbe916bff2d82889d93c4328523b86a9c49c73a4c3b210c021d23e3717db67203e9dded72d8e7afb4b5d8b7dd03d7190ea65f783bab80b354000000096a4e7da9679e6c2580c837d9a0c0b4bb02062b05e471d4d09c44ec81422a4a8a88da68eb29c16d713fe3d520b22216ed776a8bc16d455fe152d454b11404f09" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Action Center\Checks\{E8433B72-5842-4d43-8645-BC2C35960837}.check.101" /v "CheckSetting" /t REG_BINARY /d "01000000d08c9ddf0115d1118c7a00c04fc297eb010000008ef1df9589104e4786abb6c6709a07db0000000002000000000010660000000100002000000021794d8187f5710b409ab10c4ef10f06a51ee9023dadab0d75d0948cfcaa76e5000000000e800000000200002000000035a5d4a582d4fa0dae640c75442e117301fd7594ee42503411d3ce131dade130b0000000022ae36947a6fdffbd75c9e06b068a19637fac73372940de4bb1d0ec16a266f8d5cd9b794428e710347462641eae15aa12a7745388dc4e971dd1edf08bc2605c6ff497b13b3df96e7879635eae93b59d5bba5e734dd3260b2bad804777ec131c9ec47416b457504d080683ceff9bc9c92fb77913babf501dcbe916bff2d82889d93c4328523b86a9c49c73a4c3b210c021d23e3717db67203e9dded72d8e7afb4b5d8b7dd03d7190ea65f783bab80b354000000096a4e7da9679e6c2580c837d9a0c0b4bb02062b05e471d4d09c44ec81422a4a8a88da68eb29c16d713fe3d520b22216ed776a8bc16d455fe152d454b11404f09" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Action Center\Checks\{E8433B72-5842-4d43-8645-BC2C35960837}.check.102" /v "CheckSetting" /t REG_BINARY /d "01000000d08c9ddf0115d1118c7a00c04fc297eb010000008ef1df9589104e4786abb6c6709a07db0000000002000000000010660000000100002000000021794d8187f5710b409ab10c4ef10f06a51ee9023dadab0d75d0948cfcaa76e5000000000e800000000200002000000035a5d4a582d4fa0dae640c75442e117301fd7594ee42503411d3ce131dade130b0000000022ae36947a6fdffbd75c9e06b068a19637fac73372940de4bb1d0ec16a266f8d5cd9b794428e710347462641eae15aa12a7745388dc4e971dd1edf08bc2605c6ff497b13b3df96e7879635eae93b59d5bba5e734dd3260b2bad804777ec131c9ec47416b457504d080683ceff9bc9c92fb77913babf501dcbe916bff2d82889d93c4328523b86a9c49c73a4c3b210c021d23e3717db67203e9dded72d8e7afb4b5d8b7dd03d7190ea65f783bab80b354000000096a4e7da9679e6c2580c837d9a0c0b4bb02062b05e471d4d09c44ec81422a4a8a88da68eb29c16d713fe3d520b22216ed776a8bc16d455fe152d454b11404f09" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Action Center\Checks\{C8E6F269-B90A-4053-A3BE-499AFCEC98C4}.check.0" /v "CheckSetting" /t REG_BINARY /d "01000000d08c9ddf0115d1118c7a00c04fc297eb010000008ef1df9589104e4786abb6c6709a07db0000000002000000000010660000000100002000000021794d8187f5710b409ab10c4ef10f06a51ee9023dadab0d75d0948cfcaa76e5000000000e800000000200002000000035a5d4a582d4fa0dae640c75442e117301fd7594ee42503411d3ce131dade130b0000000022ae36947a6fdffbd75c9e06b068a19637fac73372940de4bb1d0ec16a266f8d5cd9b794428e710347462641eae15aa12a7745388dc4e971dd1edf08bc2605c6ff497b13b3df96e7879635eae93b59d5bba5e734dd3260b2bad804777ec131c9ec47416b457504d080683ceff9bc9c92fb77913babf501dcbe916bff2d82889d93c4328523b86a9c49c73a4c3b210c021d23e3717db67203e9dded72d8e7afb4b5d8b7dd03d7190ea65f783bab80b354000000096a4e7da9679e6c2580c837d9a0c0b4bb02062b05e471d4d09c44ec81422a4a8a88da68eb29c16d713fe3d520b22216ed776a8bc16d455fe152d454b11404f09" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Action Center\Checks\{E8433B72-5842-4d43-8645-BC2C35960837}.check.100" /v "CheckSetting" /t REG_BINARY /d "01000000d08c9ddf0115d1118c7a00c04fc297eb010000008ef1df9589104e4786abb6c6709a07db0000000002000000000010660000000100002000000021794d8187f5710b409ab10c4ef10f06a51ee9023dadab0d75d0948cfcaa76e5000000000e800000000200002000000035a5d4a582d4fa0dae640c75442e117301fd7594ee42503411d3ce131dade130b0000000022ae36947a6fdffbd75c9e06b068a19637fac73372940de4bb1d0ec16a266f8d5cd9b794428e710347462641eae15aa12a7745388dc4e971dd1edf08bc2605c6ff497b13b3df96e7879635eae93b59d5bba5e734dd3260b2bad804777ec131c9ec47416b457504d080683ceff9bc9c92fb77913babf501dcbe916bff2d82889d93c4328523b86a9c49c73a4c3b210c021d23e3717db67203e9dded72d8e7afb4b5d8b7dd03d7190ea65f783bab80b354000000096a4e7da9679e6c2580c837d9a0c0b4bb02062b05e471d4d09c44ec81422a4a8a88da68eb29c16d713fe3d520b22216ed776a8bc16d455fe152d454b11404f09" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Action Center\Checks\{01979c6a-42fa-414c-b8aa-eee2c8202018}.check.100" /v "CheckSetting" /t REG_BINARY /d "01000000d08c9ddf0115d1118c7a00c04fc297eb010000008ef1df9589104e4786abb6c6709a07db0000000002000000000010660000000100002000000021794d8187f5710b409ab10c4ef10f06a51ee9023dadab0d75d0948cfcaa76e5000000000e800000000200002000000035a5d4a582d4fa0dae640c75442e117301fd7594ee42503411d3ce131dade130b0000000022ae36947a6fdffbd75c9e06b068a19637fac73372940de4bb1d0ec16a266f8d5cd9b794428e710347462641eae15aa12a7745388dc4e971dd1edf08bc2605c6ff497b13b3df96e7879635eae93b59d5bba5e734dd3260b2bad804777ec131c9ec47416b457504d080683ceff9bc9c92fb77913babf501dcbe916bff2d82889d93c4328523b86a9c49c73a4c3b210c021d23e3717db67203e9dded72d8e7afb4b5d8b7dd03d7190ea65f783bab80b354000000096a4e7da9679e6c2580c837d9a0c0b4bb02062b05e471d4d09c44ec81422a4a8a88da68eb29c16d713fe3d520b22216ed776a8bc16d455fe152d454b11404f09" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Action Center\Checks\{A5268B8E-7DB5-465b-BAB7-BDCDA39A394A}.check.100" /v "CheckSetting" /t REG_BINARY /d "01000000d08c9ddf0115d1118c7a00c04fc297eb010000008ef1df9589104e4786abb6c6709a07db0000000002000000000010660000000100002000000021794d8187f5710b409ab10c4ef10f06a51ee9023dadab0d75d0948cfcaa76e5000000000e800000000200002000000035a5d4a582d4fa0dae640c75442e117301fd7594ee42503411d3ce131dade130b0000000022ae36947a6fdffbd75c9e06b068a19637fac73372940de4bb1d0ec16a266f8d5cd9b794428e710347462641eae15aa12a7745388dc4e971dd1edf08bc2605c6ff497b13b3df96e7879635eae93b59d5bba5e734dd3260b2bad804777ec131c9ec47416b457504d080683ceff9bc9c92fb77913babf501dcbe916bff2d82889d93c4328523b86a9c49c73a4c3b210c021d23e3717db67203e9dded72d8e7afb4b5d8b7dd03d7190ea65f783bab80b354000000096a4e7da9679e6c2580c837d9a0c0b4bb02062b05e471d4d09c44ec81422a4a8a88da68eb29c16d713fe3d520b22216ed776a8bc16d455fe152d454b11404f09" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Action Center\Checks\{945a8954-c147-4acd-923f-40c45405a658}.check.42" /v "CheckSetting" /t REG_BINARY /d "01000000d08c9ddf0115d1118c7a00c04fc297eb010000008ef1df9589104e4786abb6c6709a07db0000000002000000000010660000000100002000000021794d8187f5710b409ab10c4ef10f06a51ee9023dadab0d75d0948cfcaa76e5000000000e800000000200002000000035a5d4a582d4fa0dae640c75442e117301fd7594ee42503411d3ce131dade130b0000000022ae36947a6fdffbd75c9e06b068a19637fac73372940de4bb1d0ec16a266f8d5cd9b794428e710347462641eae15aa12a7745388dc4e971dd1edf08bc2605c6ff497b13b3df96e7879635eae93b59d5bba5e734dd3260b2bad804777ec131c9ec47416b457504d080683ceff9bc9c92fb77913babf501dcbe916bff2d82889d93c4328523b86a9c49c73a4c3b210c021d23e3717db67203e9dded72d8e7afb4b5d8b7dd03d7190ea65f783bab80b354000000096a4e7da9679e6c2580c837d9a0c0b4bb02062b05e471d4d09c44ec81422a4a8a88da68eb29c16d713fe3d520b22216ed776a8bc16d455fe152d454b11404f09" /f


echo --------------------------------------------------------------------------------
echo 10.Never Check for Update
echo --------------------------------------------------------------------------------

reg ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v "AUOptions" /t REG_DWORD /d 1 /f
reg ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v "ElevateNonAdmins" /t REG_DWORD /d 0 /f

echo --------------------------------------------------------------------------------
echo 11.Control Panal 
echo --------------------------------------------------------------------------------

reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "ForceClassicControlPanel" /t REG_DWORD /d 1 /f

echo --------------------------------------------------------------------------------
echo 12.Power Option
echo --------------------------------------------------------------------------------
REM  a1841308-3541-4fab-bc81-f71556f20b4a - Power saver
REM  381b4222-f694-41f0-9685-ff5bb260df2e - Balanced
REM  8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c - High Performance

powercfg -h off

REM Set 1
powercfg.exe /setactive a1841308-3541-4fab-bc81-f71556f20b4a

REM Set the unplugged settings to 'Never'
powercfg.exe -change -monitor-timeout-dc 0
powercfg.exe -change -standby-timeout-dc 0
powercfg.exe -change -hibernate-timeout-dc 0
powercfg.exe -change -disk-timeout-dc 0

REM Set the plugged in settings to 'Never'
powercfg.exe -change -monitor-timeout-ac 0
powercfg.exe -change -standby-timeout-ac 0
powercfg.exe -change -hibernate-timeout-ac 0
powercfg.exe -change -disk-timeout-ac 0

REM Set the 'Dim Timeout' to Never
powercfg -SETDCVALUEINDEX 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 0
powercfg -SETACVALUEINDEX 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 0


REM Set 2
powercfg.exe /setactive 381b4222-f694-41f0-9685-ff5bb260df2e

REM Set the unplugged settings to 'Never'
powercfg.exe -change -monitor-timeout-dc 0
powercfg.exe -change -standby-timeout-dc 0
powercfg.exe -change -hibernate-timeout-dc 0
powercfg.exe -change -disk-timeout-dc 0

REM Set the plugged in settings to 'Never'
powercfg.exe -change -monitor-timeout-ac 0
powercfg.exe -change -standby-timeout-ac 0
powercfg.exe -change -hibernate-timeout-ac 0
powercfg.exe -change -disk-timeout-ac 0

REM Set the 'Dim Timeout' to Never
powercfg -SETDCVALUEINDEX 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 0
powercfg -SETACVALUEINDEX 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 0

REM Set 3
powercfg.exe /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

REM Set the unplugged settings to 'Never'
powercfg.exe -change -monitor-timeout-dc 0
powercfg.exe -change -standby-timeout-dc 0
powercfg.exe -change -hibernate-timeout-dc 0
powercfg.exe -change -disk-timeout-dc 0

REM Set the plugged in settings to 'Never'
powercfg.exe -change -monitor-timeout-ac 0
powercfg.exe -change -standby-timeout-ac 0
powercfg.exe -change -hibernate-timeout-ac 0
powercfg.exe -change -disk-timeout-ac 0

REM Set the 'Dim Timeout' to Never
powercfg -SETDCVALUEINDEX 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 0
powercfg -SETACVALUEINDEX 381b4222-f694-41f0-9685-ff5bb260df2e 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 0


echo --------------------------------------------------------------------------------
echo 13.firewall State and Share file and Printer
echo --------------------------------------------------------------------------------

net start MpsSvc

netsh advfirewall set allprofiles state off

netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes

echo --------------------------------------------------------------------------------
echo 14.folder Option and Status Bar
echo --------------------------------------------------------------------------------

reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "AlwaysShowMenus" /t REG_DWORD /d 1 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "AutoCheckSelect" /t REG_DWORD /d 1 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DontPrettyPath" /t REG_DWORD /d 0 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Filter" /t REG_DWORD /d 0 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d 1 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideDrivesWithNoMedia" /t REG_DWORD /d 0 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d 0 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideIcons" /t REG_DWORD /d 0 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "IconsOnly" /t REG_DWORD /d 1 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewAlphaSelect" /t REG_DWORD /d 1 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewShadow" /t REG_DWORD /d 1 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "MapNetDrvBtn" /t REG_DWORD /d 0 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "NavPaneShowAllFolders" /t REG_DWORD /d 0 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SeparateProcess" /t REG_DWORD /d 0 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ServerAdminUI" /t REG_DWORD /d 0 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowCompColor" /t REG_DWORD /d 1 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowInfoTip" /t REG_DWORD /d 1 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTypeOverlay" /t REG_DWORD /d 1 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_SearchFiles" /t REG_DWORD /d 2 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_ShowMyGames" /t REG_DWORD /d 0 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "StartMenuInit" /t REG_DWORD /d 4 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "SuperHidden" /t REG_DWORD /d 0 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d 1 /f
reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "WebView" /t REG_DWORD /d 1 /f

reg ADD "HKCU\Software\Microsoft\Internet Explorer\Main" /v "Show_StatusBar" /t REG_SZ /d "yes" /f
reg ADD "HKCU\Software\Microsoft\Internet Explorer\Main" /v "StatusBarOther" /t REG_DWORD /d 1 /f

echo --------------------------------------------------------------------------------
echo 15.AutoPlay
echo --------------------------------------------------------------------------------

reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDriveTypeAutoRun" /t REG_DWORD /d 255 /f
reg ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDriveTypeAutoRun" /t REG_DWORD /d 255 /f

echo --------------------------------------------------------------------------------
echo 16.IE  Download unsigned ActiveX controls and pop up
echo --------------------------------------------------------------------------------

reg ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3" /v "1004" /t REG_DWORD /d 1 /f

reg ADD "HKCU\Software\Microsoft\Internet Explorer\New Windows" /v "PopupMgr" /t REG_DWORD /d 0 /f

reg ADD "HKLM\SOFTWARE\Microsoft\Internet Explorer\MAIN\FeatureControl\FEATURE_WEBOC_POPUPMANAGEMENT" /v "iexplore.exe" /t REG_DWORD /d 0 /f



