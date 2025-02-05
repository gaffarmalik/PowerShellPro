﻿<#
.SYNOPSIS
	Writes an ASCII clock
.DESCRIPTION
	This PowerShell script writes the current time as ACSII clock 
.EXAMPLE
	PS> ./write-clock.ps1
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	[system.threading.thread]::currentthread.currentculture = [system.globalization.cultureinfo]"en-US"

	Clear-Host
	$Weekday = Get-Date -UFormat "%A"
	& "$PSScriptRoot/write-big.ps1" "    $Weekday"
	Write-Output ""

	$Date = Get-Date -UFormat "%d%b%y"
	& "$PSScriptRoot/write-big.ps1" "    $Date"
	Write-Output ""

	$Week = Get-Date -UFormat "%V"
	& "$PSScriptRoot/write-big.ps1" "    WEEK$Week"
	Write-Output ""

	$StartPosition = $HOST.UI.RawUI.CursorPosition
	while ($true) {
		$Time = Get-Date -format "HH:mm:ss" 

		& "$PSScriptRoot/write-big.ps1" "    $Time  "
		Write-Output ""
		Write-Output "                             (press <Ctrl> <C> to stop)"
		Start-Sleep -seconds 1
		$HOST.UI.RawUI.CursorPosition = $StartPosition
	}
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
