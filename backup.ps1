<#--------
Author: Ahmed A. M. ALOMAR
Date: April 9 - 2020
Description:
This powershell script intended to backup "Warframe steam game files" from a windows computer into one directory.
----------------#>


# Create a Backup Directory 
New-Item -Path "c:\" -Name "warframe_backup" -ItemType "directory"
Set-Location -Path C:\"warframe_backup"

# Backup important Registeries
REG EXPORT HKCU\Software\"Digital Extremes" "Digital Extremes"
Move-Item -Path "C:\warframe_backup\Digital Extremes" -Destination "C:\warframe_backup\Digital Extremes.reg"

REG EXPORT HKCU\Software\Valve\Steam\Apps\"230410" "230410"
Move-Item -Path "C:\warframe_backup\230410" -Destination "C:\warframe_backup\230410.reg"

# Copy Appmanifest
Copy-Item "C:\Program Files (x86)\Steam\steamapps\appmanifest_230410.acf" -Destination "C:\warframe_backup"

# A message to calm down the user because It may take a while
Write-Host "A large file takes time to copy.. . SO, wait for it!"

# Copy The Game Data
Copy-Item -Path "C:\Program Files (x86)\Steam\steamapps\common\Warframe" -Destination "C:\warframe_backup\Warframe" -Recurse


# Cute messages for the user!

Write-Host "Congratulations! Your backup has been executed."
Write-Host "You can find the files on the C drive directory warframe_backup."


read-host
