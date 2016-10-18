<?php
$input = file_get_contents('access_log1.txt');
$input = explode("\n", $input);
print_r(preg_grep("/paris6_sm.jpg/",$input));
?>
