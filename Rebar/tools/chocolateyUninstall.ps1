#Note that this process will _not_ uninstall Erlang.
#Remove the shim file.
$toolsDir = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
Remove-BinFile rebar3
