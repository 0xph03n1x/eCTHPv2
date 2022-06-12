Compare-Object (Import-Clixml Baseline-Processes.xml)(Get-Process) -Property Name | Where-Object {$_.sideindicator -eq "<="}
