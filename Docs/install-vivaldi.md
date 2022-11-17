## The install-vivaldi.ps1 PowerShell Script

This PowerShell script installs the Vivaldi browser.

## Parameters
```powershell
install-vivaldi.ps1 [<CommonParameters>]

[<CommonParameters>]
    This script supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

## Example
```powershell
PS> ./install-vivaldi

```

## Notes
Author: Markus Fleschutz | License: CC0

## Related Links
https://github.com/fleschutz/PowerShell

## Source Code
<#
.SYNOPSIS
	Installs Vivaldi
.DESCRIPTION
	This PowerShell script installs the Vivaldi browser.
.EXAMPLE
	PS> ./install-vivaldi
.LINK
	https://github.com/fleschutz/PowerShell
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	"Installing Vivaldi, please wait..."

	& winget install --id VivaldiTechnologies.Vivaldi --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	"Vivaldi installed successfully."
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}

*Generated by convert-ps2md.ps1 using the comment-based help of install-vivaldi.ps1*