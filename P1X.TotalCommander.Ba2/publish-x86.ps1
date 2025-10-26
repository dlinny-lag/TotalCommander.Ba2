cd $PSScriptRoot
dotnet publish -r win-x86 -p:NativeLib=Shared
mkdir $PSScriptRoot\bin\Release\net9.0\win-x86\publish\TotalCommander.Ba2 -Force
copy $PSScriptRoot\bin\Release\net9.0\win-x86\publish\TotalCommander.Ba2.dll $PSScriptRoot\bin\Release\net9.0\win-x86\publish\TotalCommander.Ba2\TotalCommander.Ba2.wcx
copy $PSScriptRoot\pluginst.inf $PSScriptRoot\bin\Release\net9.0\win-x86\publish\TotalCommander.Ba2\pluginst.inf
Compress-Archive -Path $PSScriptRoot\bin\Release\net9.0\win-x86\publish\TotalCommander.Ba2\* -DestinationPath $PSScriptRoot\bin\Release\net9.0\win-x86\publish\TotalCommander.Ba2.zip -CompressionLevel Optimal -Force
echo done!