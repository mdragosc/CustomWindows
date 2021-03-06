slmgr -rearm


Admins
git config --global user.name "Username"
git config --global user.email adresa de mail

git init // start tracking current directory 
git add -A // add all files in current directory to staging area, making them available for commit 
git commit -m "Upload" // commit your changes
git remote add origin https://github.com/Fredy-SSA/CustomWindows // add remote repository URL which contains the required details
git pull origin master // always pull from remote before pushing
git push -u origin master // publish changes to your remote repository

Pentru Useri

git init
git clone https://github.com/Fredy-SSA/CustomWindows

# Powershell

Get-Command 
Get-Command | measure

ipconfig 
notepad 

ise C:\CustomWindows\test.txt
notepad C:\CustomWindows\test.txt
code C:\CustomWindows\test.txt

Invoke-Item C:\CustomWindows\test.txt
ii C:\CustomWindows\test.txt

help Invoke-Item  -ShowWindow

Get-Alias -Definition Invoke-Item
Get-Alias -Definition Get-ChildItem 

gci
ls
dir

Get-Module -ListAvailable  #FGHF 

Save-Help C:\CustomWindows\test -Force
Update-Help -LiteralPath C:\CustomWindows\test -Force


Get-Service  
Get-Service  | where status -like "sto*"
Get-Service  | where status -eq "Stopped"

Get-Service | ? name -like "a*" | ? status -Like "st*" # filtrare simpla
Get-Service | ? {$_.name -like "a*" -and $_.status -Like "st*" } "Filtrare avansata"


Get-Process | Get-Member # obiectele
Get-Process | select * -First 1 # toate proprietatile incarcate cu date

(Get-Process notepad).Kill()

(Get-Process).name

Get-Process | ? name -like "notepad" | Stop-Process
 
Get-Alias ?

Get-Process | ? name -like "*"  | Stop-Process -WhatIf

"test1 " > C:\CustomWindows\test1.txt
"test2 " > C:\CustomWindows\test2.txt
"test3 " > C:\CustomWindows\test3.txt

notepad C:\CustomWindows\test1.txt
notepad C:\CustomWindows\test2.txt
notepad C:\CustomWindows\test3.txt


#pasi filtrare
Get-Process | ? name -like notepad 
Get-Process | ? name -like notepad | select *

Get-Process | ? MainWindowTitle -eq "test2 - notepad"
Get-Process | ? MainWindowTitle -like "test2*" | Stop-Process 


Get-Command *csv*

Get-Service | select * -First 1

Get-Service | export-csv C:\CustomWindows\test\testcsv.csv -NoTypeInformation 
ii C:\CustomWindows\test\testcsv.csv

Get-Service  | select Status,Name,DisplayName,StartType | export-csv C:\CustomWindows\test\test2csv.csv -NoTypeInformation 
ii C:\CustomWindows\test\test2csv.csv

$csv = import-csv C:\CustomWindows\test\test2csv.csv
$csv


Get-Service  | select Status,Name,DisplayName,StartType | ? name -Like "a*" | export-csv C:\CustomWindows\test\test3csv.csv -NoTypeInformation 
ii C:\CustomWindows\test\test3csv.csv

$testOut_gridView = Get-Service  | select Status,Name,DisplayName,StartType | ? name -Like "a*" |Out-GridView -OutputMode Multiple
$testOut_gridView 