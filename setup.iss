
[Setup]
AppId={{53443A38-D4BC-49B0-9E4E-694BE32528FB}
AppName=MySERVER Root Authority
AppCopyright=Alexander Gladun
AppVersion=1.1
VersionInfoVersion=1.1.0.0
AppPublisher=Alexander Gladun
AppPublisherURL=http://www.it-hobby.km.ua/
AppSupportURL=http://www.it-hobby.km.ua/
AppUpdatesURL=http://www.it-hobby.km.ua/
DefaultDirName={pf}\MySERVER_Root_Cert
DisableDirPage=yes
DisableProgramGroupPage=yes
LicenseFile=License.txt
OutputBaseFilename=myserver-cert-setup
Compression=lzma
SolidCompression=yes
SetupIconFile=MySERVER.ico
UninstallDisplayName=MySERVER Root Authority Cert
UninstallDisplayIcon={app}\unins000.exe

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "MySERVER_Root_public.crt"; DestDir: "{app}"; Flags: ignoreversion

[Run]
Filename: "certutil.exe"; Parameters: "-addstore ""Root"" ""{app}\MySERVER_Root_public.crt"""; StatusMsg: "Adding MySERVER Root Cert..."

[UninstallRun]
Filename: "certutil.exe"; Parameters: "-delstore ""Root"" ""MySERVER Root Authority"""; StatusMsg: "Deling MySERVER Root Cert..."
