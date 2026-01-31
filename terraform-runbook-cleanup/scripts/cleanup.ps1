Connect-AzAccount -Identity

Write-Output "Starting cleanup..."

$rgs = Get-AzResourceGroup

foreach ($rg in $rgs) {
    if ($rg.ResourceGroupName -ne "cleanup-rg") {
        Write-Output "Deleting RG: $($rg.ResourceGroupName)"
        Remove-AzResourceGroup -Name $rg.ResourceGroupName -Force -AsJob
    }
}

Write-Output "Cleanup completed"
