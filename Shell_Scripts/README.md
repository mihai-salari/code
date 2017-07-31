### Note ###

Most of the scripts here can be run as it is, some might need extra inputs from users (e.g. text files etc).

#### Variable Substitution ####

Using shell variable:

```
var="some value"

echo $var
```

Using environment variable:

```
export var="some value"

echo $var
```

#### Backtick Expansion ####

```
echo `date`
echo $(date)
```

- - -

Using source to run a shell script in a different location.

Example (```linecount.sh``` is in ```~/Public/Bash/```, and that directory is not in ```PATH``` list):

```
15:40:07 ~/Public/C/21C . linecount.sh
files= 31 and lines= 367
lines/file = 11
11.838
15:40:27 ~/Public/C/21C source linecount.sh
files= 31 and lines= 367
lines/file = 11
11.838
15:42:13 ~/Public/C/21C
```

- - -

### References ###

GNU Screen - [http://aperiodic.net/screen/quick_reference](http://aperiodic.net/screen/quick_reference)