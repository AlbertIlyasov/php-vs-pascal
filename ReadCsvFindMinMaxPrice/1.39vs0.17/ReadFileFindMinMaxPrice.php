<?php
echo 'Find min and max prices...'.PHP_EOL;

$fp = fopen('../test.csv', 'r');

$minProductName = '';
$minPrice = 4294967296;

$maxProductName = '';
$maxPrice = 0;

while (!feof($fp)) {
    $row = fgets($fp);
    $posDelimiter = strpos($row, ',');
    $price = (float) substr($row, $posDelimiter+1);

    if ($price <= 0) {
        continue;
    }
    if ($price < $minPrice) {
        $minPrice = $price;
        $minProductName = substr($row, 0, $posDelimiter);
    }
    if ($price > $maxPrice) {
        $maxPrice = $price;
        $maxProductName = substr($row, 0, $posDelimiter);
    }
}
fclose($fp);

print_r([$minProductName, $minPrice, $maxProductName, $maxPrice]);
