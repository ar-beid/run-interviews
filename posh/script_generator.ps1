
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

$loop = 10000

$file = "E:\kit\posh\01\misc\script-$loop.odin"
del $file

for($i=1; $i -le ($loop); $i++)
{
    (question2 $i) | Out-File $file -append
}