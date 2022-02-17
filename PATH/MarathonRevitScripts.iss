; General Info
#define MyAppName "MarathonRevitScripts"
#define MyAppPublisher "Marathon Electrical LLC."
#define MyAppURL "www.marathonelectrical.com/marathonsoftware.html"
#define MyAppExeName "MarathonScripts.exe"
#define SourceFolder "..\release candidate\*" 

[Setup]
CloseApplications = yes
AppId={{81855E75-3FFF-4CF5-BFF3-F93C8FD13034}
AppName={#MyAppName}
AppVerName={#MyAppName} {#AppVersionParameter}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
CreateAppDir=no

OutputDir={#SourcePath}\..\releases
OutputBaseFilename=MarathonScripts {#AppVersionParameter}
SetupIconFile={#SourcePath}\..\release candidate\MarathonScripts\Res\mlogo_icon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[InstallDelete]
Type: filesandordirs; Name: "{commonappdata}\Autodesk\Revit\Addins\MarathonScripts"
Type: files; Name: "{commonappdata}\Autodesk\Revit\Addins\2017\MarathonScripts.addin"
Type: files; Name: "{commonappdata}\Autodesk\Revit\Addins\2018\MarathonScripts.addin"
Type: files; Name: "{commonappdata}\Autodesk\Revit\Addins\2019\MarathonScripts.addin"
Type: files; Name: "{commonappdata}\Autodesk\Revit\Addins\2020\MarathonScripts.addin"
Type: files; Name: "{commonappdata}\Autodesk\Revit\Addins\2021\MarathonScripts.addin"
Type: files; Name: "{commonappdata}\Autodesk\Revit\Addins\2017\ScriptUpdater.addin"
Type: files; Name: "{commonappdata}\Autodesk\Revit\Addins\2018\ScriptUpdater.addin"
Type: files; Name: "{commonappdata}\Autodesk\Revit\Addins\2019\ScriptUpdater.addin"
Type: files; Name: "{commonappdata}\Autodesk\Revit\Addins\2020\ScriptUpdater.addin"
Type: files; Name: "{commonappdata}\Autodesk\Revit\Addins\2021\ScriptUpdater.addin"

[UninstallDelete]
Type: dirifempty; Name: "{commonappdata}\Autodesk\Revit\Addins\MarathonScripts"

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: {#SourceFolder}; DestDir: "{commonappdata}\Autodesk\Revit\Addins"; Permissions: users-full; Flags: ignoreversion recursesubdirs createallsubdirs

