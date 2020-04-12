
# Game Files
Write-Host "Moving Game Files"
Move-Item -Path "C:\warframe_backup\Warframe" -Destination "C:\Program Files (x86)\Steam\steamapps\common\Warframe" -Recurse

# Registry
Invoke-Item "C:\warframe_backup\Digital Extremes.reg"
Invoke-Item "C:\warframe_backup\230410.reg"

# Appmanifest
Write-Host "Moving Appmanifest"
Move-Item -Path  "C:\warframe_backup\appmanifest_230410.acf" -Destination "C:\Program Files (x86)\Steam\steamapps"

read-host
