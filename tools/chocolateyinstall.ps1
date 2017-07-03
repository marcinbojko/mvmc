
$ErrorActionPreference = 'Stop';

$packageName        = 'mvmc'
$scriptPath         = $(Split-Path $MyInvocation.MyCommand.Path)
$url_local          = "https://dl.dropboxusercontent.com/u/6066664/choco/mvmc/mvmc_setup.msi"
$url_remote         = "https://dl.dropboxusercontent.com/u/6066664/choco/mvmc/mvmc_setup.msi"
$url_local64        = "https://dl.dropboxusercontent.com/u/6066664/choco/mvmc/mvmc_setup.msi"
$url_remote64       = "https://dl.dropboxusercontent.com/u/6066664/choco/mvmc/mvmc_setup.msi"
$url_local_trans    = ""
$url_remote_trans   = ""
$url                = ""
$url_trans          = ""
$checksum           = "520b0d08e0b9d2d95206369e56461d3873fb208f507fbccc28651d43aba37f33"
$checksum64         = "520b0d08e0b9d2d95206369e56461d3873fb208f507fbccc28651d43aba37f33"
$logfile            = "$env:TEMP\chocolatey\$($packageName)\$($packageName).MsiInstall.log"
$logdir             = "$env:TEMP\chocolatey\$($packageName)"
$killexec           = 0
$killexecprocess    = ""
# Let's check if should we use local or remote install source
$statusCode = Test-Path $url_local
if ($statusCode) {
                    $url=$url_local
                    $url_trans=$url_local_trans
                }
    else {
        $url=$url_remote
        $url_trans=$url_remote_trans
    }
# Someone has won ;)



#Let's check your TEMP derectory

$statusCode = Test-Path $logdir
if ($statusCode) {

                }
    else {
        $logfile="$env:WINDIR\TEMP\chocolatey\$($packageName).MsiInstall.log"

    }

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'msi'
  silentArgs    = "/qn /norestart ADDLOCAL=ALL"
  validExitCodes= @(0, 3010, 1603, 1641)
  url           = $url
  url64bit      = $url_remote64
  checksumType  = 'sha256'
  checksumType64= 'sha256'
  checksum      = $checksum
  checksum64    = $checksum64
}

# Should we kill some exec ?
if ($killexec) {
  Stop-Process -processname $killexecprocess -force
  }

  Install-ChocolateyPackage @packageArgs

















