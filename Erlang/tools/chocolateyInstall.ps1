<#
.SYNOPSIS
An install script for installing Erlang silently on the machine via ChocolateyNuGet

.NOTES
Author: Onorio Catenacci - catenacci@ieee.org
#>

$package = 'erlang'
$version = '25.0'

$params = @{
  PackageName = $package
  FileType = 'exe'
  SilentArgs = '/S'
  Url = "https://github.com/erlang/otp/releases/download/OTP-$version/otp_win32_$version.exe"
  CheckSum = '413c89f923e4d426b26c4992f010f2d5b064b1169404ad22c444eb25be43c12c'
  CheckSumType = 'sha256'
  Url64 = "https://github.com/erlang/otp/releases/download/OTP-$version/otp_win64_$version.exe"
  CheckSum64 = 'f720bf4eb5f98304007252bd11816fc973aa5e9f53d0c4060f6875d0fdc40818'
  CheckSumType64 = 'sha256'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @params

$baseErlangPath = Resolve-Path "$env:ProgramFiles\Erlang OTP\erts-*\bin"

Generate-BinFile ct_run   -Path "$baseErlangPath\ct_run.exe"
Generate-BinFile dialyzer -Path "$baseErlangPath\dialyzer.exe"
Generate-BinFile erl      -Path "$baseErlangPath\erl.exe"
Generate-BinFile erlc     -Path "$baseErlangPath\erlc.exe"
Generate-BinFile escript  -Path "$baseErlangPath\escript.exe"
Generate-BinFile typer    -Path "$baseErlangPath\typer.exe"
Generate-BinFile werl     -Path "$baseErlangPath\werl.exe"
