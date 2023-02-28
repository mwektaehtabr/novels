<?php
$y = date("Y");
$m = date("m") / 100;
$d = date("d") / 10000;
$n = $y + $m + $d;
if ($n > 2023.1106) {
 echo 'was published only after the author was';
} else {
 echo 'will be published only after the author is';
}
?>
