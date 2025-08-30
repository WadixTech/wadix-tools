# uninstall-env.ps1
# Run in PowerShell (no need for Admin if using User scope)

# Remove custom environment variables
[System.Environment]::SetEnvironmentVariable("CPATH", $null, "User")
[System.Environment]::SetEnvironmentVariable("LIBRARY_PATH", $null, "User")
[System.Environment]::SetEnvironmentVariable("SNDFILE_INSTALL_DIR", $null, "User")

# Remove paths from PATH (user scope)
$pathsToRemove = @(
    "C:\Alif-project\tools\cmake\bin",
    "C:\Alif-project\tools\wget-1.21.4-win64",
    "C:\Alif-project\tools\GnuWin32\bin",
    "C:\Alif-project\tools\ninja-win",
    "C:\Alif-project\tools\msys64\mingw64\bin",
    "C:\Alif-project\tools\armgcc-10.3.2\bin"
)

$currentPath = [System.Environment]::GetEnvironmentVariable("Path", "User")
foreach ($p in $pathsToRemove) {
    $regex = [Regex]::Escape($p) + ";?"
    $currentPath = [Regex]::Replace($currentPath, $regex, "", "IgnoreCase")
}

[System.Environment]::SetEnvironmentVariable("Path", $currentPath, "User")

Write-Host "Environment variables and PATH entries removed for the current user."
Write-Host "Restart your terminal (or log out/in) to apply changes."
