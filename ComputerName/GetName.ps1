$PrependString="DESKTOP-"
$LastNum=[int]$(cat \\SERVERNAME\deploymentshare$\Scripts\ComputerName\LastNum.txt)
$NewNum=$LastNum+1
echo $NewNum > \\SERVERNAME\deploymentshare$\Scripts\ComputerName\LastNum.txt

#Write-Host "PrependString:$PrependString"
#Write-Host "Last Number:$LastNum"

$NewName="$PrependString$NewNum"
#Rename-Computer -NewName $NewName -Force
echo $NewName > C:\$NewName.txt
Write-Host $NewName
