Set WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & "dontrunme.bat" & chr(34), 0
Set WshShell = Nothing
