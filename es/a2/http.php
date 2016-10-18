<?php
#$HTML = file_get_contents('csszengarden.html');
$HTML[0] = "http";
$URL = preg_grep("/http/", $HTML);
var_dump($URL);
echo "<hr/>";
$array = array("23.32","22","12.009","23.43.43");
print_r(preg_grep("/^(\d+)?\.\d+\.\d+$/",$array));
?>
