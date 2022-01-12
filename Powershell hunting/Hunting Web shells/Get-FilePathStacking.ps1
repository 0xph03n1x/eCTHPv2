Param(
      [Parameter (Position=0,Mandatory=$True)]
      [String[]]
      $searchPath
)

Get-ChildItem $searchPath -Recurse -File | Select-Object fullname, length, lastwritetime | Out-GridView