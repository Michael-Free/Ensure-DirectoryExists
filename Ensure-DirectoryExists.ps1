function Ensure-DirectoryExists {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Path
    )

    if (Test-Path -Path $Path) {
        Write-Output "The directory '$Path' already exists."
    } else {
        New-Item -ItemType Directory -Path $Path -Force
    }
}
