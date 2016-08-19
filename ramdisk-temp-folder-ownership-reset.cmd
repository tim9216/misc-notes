mkdir R:\system-temp
icacls R:\system-temp /C /T /setowner SYSTEM
icacls R:\system-temp\*  /C /T  /grant administrator:(CI)(OI)(F)
icacls R:\system-temp\*  /C /T  /grant moomin:(CI)(OI)(F)


mkdir R:\admin-temp\chrome-cache
mkdir R:\admin-temp\opera-cache
mklink /J /D  c:\Users\Administrator\AppData\Local\Temp\  R:\admin-temp
mklink /J /D  "c:\Users\Administrator\AppData\Local\Opera\Opera x64\cache\"  R:\admin-temp\opera-cache
mklink /J /D  "c:\Users\Administrator\AppData\Local\Google\Chrome\User Data\Default\Cache\"  R:\admin-temp\chrome-cache


mkdir R:\moomin-temp\chrome-cache
mkdir R:\moomin-temp\opera-cache
icacls R:\moomin-temp  /C /T  /setowner moomin
icacls R:\moomin-temp\*  /C /T  /grant moomin:(CI)(OI)(F)
mklink /J /D  c:\Users\Guest\AppData\Local\Temp\  R:\moomin-temp
mklink /J /D  "c:\Users\Guest\AppData\Local\Opera\Opera x64\cache\"  R:\moomin-temp\opera-cache
mklink /J /D  "c:\Users\Guest\AppData\Local\Google\Chrome\User Data\Default\Cache\"  R:\moomin-temp\chrome-cache

