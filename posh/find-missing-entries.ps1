# args[0] this file misses some entries that the 
# args[1] file has; print these to the console 
 
$input1 = Get-Content $args[0] 
$input2 = Get-Content $args[1] 

[array]::Sort($input1)
[array]::Sort($input2)

foreach ($i2 in $input2) 
{ 
  foreach ($i1 in $input1) 
  { 
    $match = 0 
 
    if ($i1 -eq $i2)  
    { 
      $match = 1 
      break 
    } 
  } 
  
  if (!($match)) 
  { 
    $i2 
  } 
} 