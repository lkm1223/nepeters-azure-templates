Get-PnpDevice -Class FloppyDisk | Disable-PnpDevice -Confirm:$false
Get-PnpDevice -Class CDROM | Disable-PnpDevice -Confirm:$false

$folder = "c:\temp"
$log = "c:\temp\AzureLog.txt"
$date = get-date

if (!(Test-Path $log)) {
    New-Item -Path $folder -ItemType Directory
    New-Item -Path $log -ItemType File
    Add-Content -Value "NEW LOG: Azure PowerShell Endpoint - $date" -Path $log
    }
else {
    Add-Content -Value "EXSISITNG LOG: Azure PowerShell Endpoint - $date - $lkm" -Path $log
}
