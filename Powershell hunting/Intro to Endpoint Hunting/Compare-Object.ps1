Compare-Object (Import-Clixml Baseline-Service.xml)(Get-Service * | Where-Object {$_.status -eq "Running"}) -Property DisplayName | Where-Object {$_.sideindicator -eq "<="}
#Replaced Where with Where-Object due to VSCode compaining