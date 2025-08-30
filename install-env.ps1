# install-env.ps1
# Run in PowerShell (no need for Admin if using User scope)

# Base directory
$baseDir = "C:\Alif-project\tools\libsndfile-1.2.2-win64"

# Set environment variables (for current user)
[System.Environment]::SetEnvironmentVariable("CPATH", "$baseDir\include", "User")
[System.Environment]::SetEnvironmentVariable("LIBRARY_PATH", "$baseDir\lib", "User")
[System.Environment]::SetEnvironmentVariable("SNDFILE_INSTALL_DIR", $baseDir, "User")

# Update PATH safely (user scope)
$pathsToAdd = @(
    "C:\Alif-project\tools\cmake\bin",
    "C:\Alif-project\tools\wget-1.21.4-win64",
    "C:\Alif-project\tools\GnuWin32\bin",
    "C:\Alif-project\tools\ninja-win",
    "C:\Alif-project\tools\msys64\mingw64\bin",
    "C:\Alif-project\tools\armgcc-10.3.2\bin"
)

$currentPath = [System.Environment]::GetEnvironmentVariable("Path", "User")
foreach ($p in $pathsToAdd) {
    if ($currentPath -notmatch [Regex]::Escape($p)) {
        $currentPath = "$p;$currentPath"
    }
}

[System.Environment]::SetEnvironmentVariable("Path", $currentPath, "User")

Write-Host "Environment variables and PATH have been set for the current user."
Write-Host "Restart your terminal (or log out/in) to apply changes."
