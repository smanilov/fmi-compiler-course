This directory (lecture2) contains three snippets which are used for
demonstration during the second lecture of the course.

To try these out, you need an environment that has a working coolc compiler and
spim simulator.

Copy the `atoi.cl` file provided by the course materials
(/usr/class/cs143/assignments/PA1/atoi.cl) in the same working directory as
where you copy these three files and run them as follows:

```
$ # This runs the first implementation of factorial
$ coolc factorial1.cl atoi.cl
$ spim factorial1.s
```

The program waits for a number input and then outputs the factorial.

```
$ # This runs the second implementation of factorial
$ coolc factorial2.cl atoi.cl
$ spim factorial2.s
```

The UI is the same.

```
$ # This runs the program implementing a linked list
$ coolc list.cl atoi.cl
$ spim list.s
```

The program waits for no input, but prints "Hello World! 42".

If `list.cl` is modified to uncomment the two lines that add the `abort`
variable to the list, running the program will abort and not print anything.
