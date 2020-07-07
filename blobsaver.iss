; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "blobsaver"
#define MyAppVersion "2.5.3"
#define MyAppPublisher "airsquared"
#define MyAppURL "https://www.github.com/airsquared/blobsaver"
#define MyAppExeName "blobsaver.exe"
#define MyAppCopyright "Copyright (c) 2020  airsquared"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{F5EAE50A-1E3A-4DA5-B2F0-4D29968E59CD}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
AppCopyright={#MyAppCopyright}
AppMutex=airsquared.blobsaver.app
ArchitecturesAllowed=x64 arm64
ArchitecturesInstallIn64BitMode=x64 arm64
Uninstallable=not IsTaskSelected('portableMode')
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=build\tmp\innosetup\LICENSE
OutputDir=build\distributions
OutputBaseFilename=blobsaver-windows
SetupIconFile=icons\blob_emoji.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
Name: "portableMode"; Description: "Portable Installation Mode"; Flags: unchecked

[Files]
Source: "build\tmp\innosetup\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

