### Note

These Ruby scripts are not really needed to _join_ two CSV text files with
identical number of rows (and with common first field, e.g. the value of date field), because we can use the ```join``` command instead.

```join -t ';' file1 file2```

For the headers, we can always copy and paste, if we just need to add them
to end of the headers of another file, or some shell scripting can be done.

Furthermore, the date in MCN stats file is not correct, those dates are generated while the script run, it should get the date of yesterday because the stats data are for yesterday, not current day. So some adjustment is needed here to get accurate data, if we still need to combine these two files into one file (with the shell ```join``` command, because the command need common key from two files).

But the Ruby scripts here ignore this error as I manually crosscheck and match the data, e.g. 2017/05/01 of MCN data should match with 2017/04/31 of stats data, therefore as long as the start and end dates are matched, then the script will just extract all CSV values and processed them into one file.