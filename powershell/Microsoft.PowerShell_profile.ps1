Invoke-Expression (&starship init powershell)
function New-File {
    param (
        [string]$path
    )
    New-Item -Path $path -ItemType File
}
Set-Alias touch New-File
Set-Alias -Name l -Value lsd
