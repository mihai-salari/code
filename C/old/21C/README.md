Exercises or examples from *21st Century C by Ben Klemens*.

- - -

### Note ###

Use below shell function to compile the source code and run it (if it is successfully compiled):

```
function crun {
	rm -f $1;
	CFLAGS="-Wall -g" make $1 && ./$1;
}

$ crun hello
```

If you are using the ```Makefile``` here, you need to export the environment variable ```P```, before ```make```:

```export P=program make```

If you are debugging with ```lldb``` for breakpoint exercises, the debugger will not stop at the breakpoints because of how clang works. Further explanation [here](https://stackoverflow.com/questions/25076625/lldb-not-stoping-on-my-breakpoint).

- - -

Remember, outside of declaration line,

```
*array == array[0]
```