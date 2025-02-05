## The *new-user.ps1* Script

This PowerShell script creates a new user account.

## Parameters
```powershell
/home/mf/Repos/PowerShell/Scripts/new-user.ps1 [[-Username] <String>] [<CommonParameters>]

-Username <String>
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

## Example
```powershell
PS> ./new-user

```

## Notes
Author: Markus Fleschutz | License: CC0

## Related Links
https://github.com/fleschutz/PowerShell

## Source Code
```powershell
<#
.SYNOPSIS
	Creates a new user account
.DESCRIPTION
	This PowerShell script creates a new user account.
.EXAMPLE
	PS> ./new-user
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

param([string]$Username = "")

try {
	if ($Username -eq "") { $Username = read-host "Enter new user name" }
	$StopWatch = [system.diagnostics.stopwatch]::startNew()

	if ($IsLinux) {
		& sudo adduser --encrypt-home $Username
	} else {
		throw "Not supported yet"
	}

	[int]$Elapsed = $StopWatch.Elapsed.TotalSeconds
	"✔️ created new user '$Username' with encrypted home directory in $Elapsed sec"
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
```

*Generated by convert-ps2md.ps1 using the comment-based help of new-user.ps1*
