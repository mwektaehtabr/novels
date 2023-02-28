<?php
 $y = date("Y");
 $m = date("m") / 100;
 $d = date("d") / 10000;
 $n = $y + $m + $d;
 if ($n > 2023.1106) {
  echo '<p class="c">CONTENTS</p><p>Dedication</p><p>Afterthought</p>';
 } else {
  echo '<div class="container"></div>';
 }
?>
