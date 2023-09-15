#                  _              __   _  ____               __          _
#    _____ ____   (_)_____ ___   / /_ (_)/ __/__  __        / /_ __  __ (_)
#   / ___// __ \ / // ___// _ \ / __// // /_ / / / /______ / __// / / // /
#  (__  )/ /_/ // // /__ /  __// /_ / // __// /_/ //_____// /_ / /_/ // /
# /____// .___//_/ \___/ \___/ \__//_//_/   \__, /        \__/ \__,_//_/
#      /_/                                 /____/
#
#            https://github.com/AvinashReddy3108/spicetify-tui

# Edited from the Comfy spicetify theme script (https://github.com/Comfy-Themes/Spicetify/blob/main/install.ps1)

$PSMinVersion = 3

# Helper functions for pretty terminal output.
function Write-Part ([string] $Text) {
  Write-Host $Text -NoNewline
}

function Write-Emphasized ([string] $Text) {
  Write-Host $Text -NoNewLine -ForegroundColor "Cyan"
}

function Write-Done {
  Write-Host " > " -NoNewline
  Write-Host "OK" -ForegroundColor "Green"
}

if ($PSVersionTable.PSVersion.Major -gt $PSMinVersion) {
  $ErrorActionPreference = "Stop"

  # Enable TLS 1.2 since it is required for connections to GitHub.
  [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

  $checkSpice = Get-Command spicetify -ErrorAction Silent
  if ($null -eq $checkSpice) {
    Write-Host -ForegroundColor Red "Spicetify not found"
    Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.ps1" | Invoke-Expression
  }

  # Check ~\.spicetify\Themes directory already exists
  $spicePath = spicetify -c | Split-Path
  $sp_dot_dir = "$spicePath\Themes"
  Write-Part "MAKING FOLDER  "; Write-Emphasized "$sp_dot_dir\tui"
  Remove-Item -Recurse -Force "$sp_dot_dir\tui" -ErrorAction Ignore
  New-Item -Path "$sp_dot_dir\tui" -ItemType Directory | Out-Null
  Write-Done

  # Clone to .spicetify.
  Write-Part "DOWNLOADING    "; Write-Emphasized $sp_dot_dir
  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/AvinashReddy3108/spicetify-tui/master/tui/color.ini" -UseBasicParsing -OutFile "$sp_dot_dir\tui\color.ini"
  Invoke-WebRequest -Uri "https://raw.githubusercontent.com/AvinashReddy3108/spicetify-tui/master/tui/user.css" -UseBasicParsing -OutFile "$sp_dot_dir\tui\user.css"
  Write-Done

  # Installing.
  Write-Part "INSTALLING `r`n"
  spicetify config inject_css 1 replace_colors 1
  spicetify config current_theme tui color_scheme Spotify
  Write-Done
  
  # applying.
  Write-Part "APPLYING";
  spicetify backup
  spicetify apply
  Write-Done
}
else {
  Write-Part "`nYour Powershell version is less than "; Write-Emphasized "$PSMinVersion";
  Write-Part "`nPlease, update your Powershell downloading the "; Write-Emphasized "'Windows Management Framework'"; Write-Part " greater than "; Write-Emphasized "$PSMinVersion"
}
