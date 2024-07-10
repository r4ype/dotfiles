Invoke-Expression (&starship init powershell)

function New-File {
    param (
        [string]$path
    )
    New-Item -Path $path -ItemType File
}

function moveToDoc {
    cd ~\Documents
}

function moveToSrc {
    cd ~\Src
}

Set-Alias touch New-File
Set-Alias l lsd
Set-Alias doc moveToDoc
Set-Alias src moveToSrc
