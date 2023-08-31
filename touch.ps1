$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if (-not $isAdmin) {
    $arguments = "& '" + $MyInvocation.MyCommand.Definition + "'"
    Start-Process powershell -Verb RunAs -ArgumentList $arguments
    exit
}
$deviceID = "HID\WDHT1F01&COL02\4&3A1DD05A&0&0001"
$device = Get-PnpDevice -InstanceId $deviceID
if ($device) {
    if ($device.Status -eq 'OK') {
        Disable-PnpDevice -InstanceId $device.InstanceId -Confirm:$false
    } else {
        Enable-PnpDevice -InstanceId $device.InstanceId -Confirm:$false
    }
}