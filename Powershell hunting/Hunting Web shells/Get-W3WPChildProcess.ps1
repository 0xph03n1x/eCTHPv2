While($True)
{
  If($(Get-WmiObject -Class Win32_Process -Filter "Name='w3wp.exe'") -ne $null)
  {
    $p=Get-WmiObject -Class Win32_Process -Filter "Name='w3wp.exe'" | Select ProcessID,CreationDate
    $pp= $p.ProcessID
    Get-WmiObject -Class Win32_Process -Filter "ParentProcessId=$pp" | ? ($_.Name -eq "cmd.exe") | & C:\hunting\scripts\Get-W3WPChildren.ps1
  }
}
