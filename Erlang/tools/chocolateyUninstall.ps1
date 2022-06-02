Start-Process -Wait "$env:ProgramFiles\Erlang OTP\uninstall.exe" -ArgumentList "/S"

Remove-BinFile ct_run
Remove-BinFile dialyzer
Remove-BinFile erl
Remove-BinFile erlc
Remove-BinFile escript
Remove-BinFile typer
Remove-BinFile werl
