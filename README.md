# PHP vs Pascal
## Task
Read a simple CSV-file, get the minimum and maximum prices of products.

## Result of comparing PHP and Pascal
Average duration:
1) PHP - 1 min 39 sec
2) Pascal - 17 sec
Pascal is 6 times faster in this task!

## CSV-file structure
`Product 0,280876.51
Product 1,446932.29
Product 2,501957.77
...
Product 8699218,217719.62`

## PHP
The test was run 3 times and it gave 3 durations:
1 min 41 sec
1 min 39 sec
1 min 39 sec

## Pascal
The test was also run 3 times and it gave 3 durations:
17 sec
17 sec
17 sec

## Logs PHP CLI
`date && php ReadFileFindMinMaxPrice.php && date && php ReadFileFindMinMaxPrice.php && date && php ReadFileFindMinMaxPrice.php && date
Mon, Jan 27, 2020  4:35:41 AM
Find min and max prices...
Array
(
    [0] => Product 112032
    [1] => 0.19
    [2] => Product 3845663
    [3] => 999999.95
)
Mon, Jan 27, 2020  4:37:22 AM
Find min and max prices...
Array
(
    [0] => Product 112032
    [1] => 0.19
    [2] => Product 3845663
    [3] => 999999.95
)
Mon, Jan 27, 2020  4:39:01 AM
Find min and max prices...
Array
(
    [0] => Product 112032
    [1] => 0.19
    [2] => Product 3845663
    [3] => 999999.95
)
Mon, Jan 27, 2020  4:40:38 AM`

## Logs Pascal (Lazarus) CLI
`time && ReadFileFindMinMaxPrice.exe && time && ReadFileFindMinMaxPrice.exe && time && ReadFileFindMinMaxPrice.exe && time
The current time is:  4:51:11.33
Enter the new time:
Find min and max prices...
Product 112032  1.9000000000000000E-001
Product 3845663  9.9999994999999995E+005
The current time is:  4:51:28.52
Enter the new time:
Find min and max prices...
Product 112032  1.9000000000000000E-001
Product 3845663  9.9999994999999995E+005
The current time is:  4:51:45.52
Enter the new time:
Find min and max prices...
Product 112032  1.9000000000000000E-001
Product 3845663  9.9999994999999995E+005
The current time is:  4:52:02.88`

## How run test
Unpack test.zip, then run php or exe file.
