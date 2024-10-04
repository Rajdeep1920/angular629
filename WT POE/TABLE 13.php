<?php
function printMultiplicationTable($number, $limit)
{
    for ($i = 1; $i <= $limit; $i++) {
        $result = $number * $i;
        echo "{$number} x {$i} = {$result}\n";
    }
}

$number = 13;
$limit = 10;
printMultiplicationTable($number, $limit);
?>
