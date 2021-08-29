# PowerShell Script check-symlinks.ps1

## Synopsis
```powershell
check-symlinks.ps1 [<dir-tree>]
```

## Description
Checks every symlink in the given directory tree.

## Syntax
```powershell
/home/mf/PowerShell/Scripts/check-symlinks.ps1 [[-DirTree] <String>] [<CommonParameters>]
```

## Parameters

```
-DirTree <String>
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
```

```
<CommonParameters>
    This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
    For more information, see about_CommonParameters (https://go.microsoft.com/fwlink/?LinkID=113216).
```

## Example
```powershell
PS>.\check-symlinks.ps1 C:\MyApp
```


## Notes
Author: Markus Fleschutz · License: CC0

## Related Links
https://github.com/fleschutz/PowerShell

*Generated by convert-ps2md.ps1*