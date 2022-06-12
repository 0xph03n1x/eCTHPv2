Param(
      [Parameter(Position=0,Mandatory=$True)]
      [String[]]
      $searchPath,
      [Parameter(Position=1,Mandatory=$True)]
      [DateTime[]]
      $pubDate
)

Get-ChildItem -path $searchPath -File -Recurse -Include "*.aspx", "*.asp" | `
Where-Object {($_.LastWriteTime.ToShortDateString() -gt $pubDate.ToShortDateString()) -or `
($_.LastWriteTime.ToShortTimeString() -gt $pubDate.ToShortTimeString())} | `
Select-Object directory,name,length,lastwritetime | Format-Table -Autosize
