
function question1($i)
{
  "*q$i *codes " + (60+$i) + "L1"
  "Vraag $i" 
  "1: ja " 
  "2: nee " 
  ""
}

function question2($i)
{
  "*q$i *codes 61L1"
  "Vraag $i" 
  "1: ja " 
  "2: nee " 
  ""
}

$loop = (100000 - 61)

$file = "C:\wrk\ar-beid\work\posh\script-$loop.odin"
Remove-Item $file

"*page" | Out-File $file -append
"generated: $(Get-Date -format 'u')" | Out-File $file -append
"loop: $loop" | Out-File $file -append
"" | Out-File $file -append

for($i=1; $i -le $loop; $i++)
{
    (question2 $i) | Out-File $file -append
}