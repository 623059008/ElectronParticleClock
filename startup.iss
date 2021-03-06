; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "粒子时钟"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "RenTao"
#define MyAppURL "https//:www.github.com"
#define MyAppExeName "粒子时钟.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{59B6D756-FFBB-4C56-AF9B-15E0CEC61D02}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\ParticleClock
DisableProgramGroupPage=yes
LicenseFile=C:\Users\Shinelon\Desktop\将要做的项目\ElectronParticleClock\dist\粒子时钟-win32-x64\LICENSE
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
OutputDir=C:\Users\Shinelon\Desktop\将要做的项目\ElectronParticleClock\dist
OutputBaseFilename=particle_clock
SetupIconFile=C:\Users\Shinelon\Desktop\将要做的项目\ElectronParticleClock\favicon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\Shinelon\Desktop\将要做的项目\ElectronParticleClock\dist\粒子时钟-win32-x64\粒子时钟.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Shinelon\Desktop\将要做的项目\ElectronParticleClock\dist\粒子时钟-win32-x64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

;[Registry]
;Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "testrun"; ValueData: "{app}\{#MyAppExeName}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

