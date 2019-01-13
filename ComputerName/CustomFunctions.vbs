Function UserExit(sType, sWhen, sDetail, bSkip) 
	UserExit = Success
End Function

Function GetPCName()
	pscommand = "\\SERVERNAME\deploymentshare$\Scripts\ComputerName\GetName.ps1"
	cmd = "powershell.exe –ExecutionPolicy Bypass -windowstyle hidden -noprofile -command " & pscommand
	Set shell = CreateObject("WScript.Shell")
	Set executor = shell.Exec(cmd)
	executor.StdIn.Close
	GetPCName = executor.StdOut.ReadAll
End Function
