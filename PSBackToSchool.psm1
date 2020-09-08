#enable verbose messaging in the psm1 file
if ($myinvocation.line -match "-verbose") {
    $VerbosePreference = "continue"
}

Write-Verbose "Loading public functions"

#dot source functions
Get-ChildItem .\functions\*.ps1 |
ForEach-Object {
    Write-Verbose $_.fullname
    . $_.fullname
}

