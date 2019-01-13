#CustomSettings.ini
UserExit=ComputerName\CustomFunctions.vbs
OSDComputerName=#GetPCName()#


#Bootstrap.ini
UserDomain=DOMAIN
UserID=DOMAINUSER
UserPassword=DOMAINUSERPASS

The above user must have read/write access to the LastNum.txt file.
You MUST also have powershell enabled in your WindowsPE image. I have DISM, MDAC, .Net & Powershell). Make sure you do this for x86 & x64 and then make sure you regenerate the LiteTouch images under deploymentshare/boot and UPDATE your WDS or whatever you are using the netowrk boot them with the images you have just generated.
