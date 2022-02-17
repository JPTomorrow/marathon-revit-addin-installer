
set VERSION=%1

rmdir /s /q "%~dp0%\..\release candidate\MarathonScripts"
xcopy /e /v "C:\ProgramData\Autodesk\Revit\Addins\MarathonScripts" "%~dp0%\..\release candidate\MarathonScripts\"
iscc /dAppVersionParameter=%VERSION% "%~dp0%\MarathonRevitScripts.iss"