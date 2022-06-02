$package = 'rebar3'
$version = '3.18.0'

$toolsDir = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
Get-ChocolateyWebFile `
    -PackageName $package `
    -FileFullPath "$toolsDir/$package" `
    -Url "https://github.com/erlang/$package/releases/download/$version/rebar3" `
    -Checksum 'f3e2641be923ce23076ce4843ee61c63fb392bc6c44dc9d129e4b31f7e136ff0' `
    -Checksumtype 'sha256'

Install-BinFile rebar3 -Path "$toolsDir/rebar3.cmd"
