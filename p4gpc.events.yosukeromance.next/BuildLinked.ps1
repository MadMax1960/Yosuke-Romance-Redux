# Set Working Directory
Split-Path $MyInvocation.MyCommand.Path | Push-Location
[Environment]::CurrentDirectory = $PWD

Remove-Item "$env:RELOADEDIIMODS/p4gpc.events.yosukeromance.next/*" -Force -Recurse
dotnet publish "./p4gpc.events.yosukeromance.next.csproj" -c Release -o "$env:RELOADEDIIMODS/p4gpc.events.yosukeromance.next" /p:OutputPath="./bin/Release" /p:ReloadedILLink="true"

# Restore Working Directory
Pop-Location