## Loops

Which statement describes the usual purpose of a `for` loop?

- [ ] To repeat infinitely many times
- [ ] To repeat as long as a condition is true
- [ ] To repeat a fixed number of times

A: Although a `for` loop can be used to implement all of these, the most usual purpose is to repeat a fixed number of times.


------

Which statement describes the usual purpose of a `while` loop?

- [ ] To repeat infinitely many times
- [ ] To repeat as long as a condition is true
- [ ] To repeat a fixed number of times

A: Although a `while` loop can be used to implement all of these, the most usual purpose is to repeat as long as a condition is true.

------

A `for` loop has the following syntax:

```c
for ( <init> ; <cond> ; <expr> ) {
    <body>
}
```

Where `<init>` is the initialisation code which runs before the loop starts, `<cond>` is a logical condition and `<expr>` is an expression run at the end of each loop iteration.

When is `<cond>` evaluated?

- [ ] At the end of a loop iteration, before `<expr>`
- [ ] At the end of a loop iteration, after `<expr>`
- [ ] Before each loop iteration

A: Before each loop iteration. If the result is false, the loop is exited immediately.

------

Consider this `for` loop:

```c
for (int i=0; i<10; i++) {
    // ...
}
```

How many times will this loop run?

- [ ] 0
- [ ] 10
- [ ] 9
- [ ] 1

A: 10 times, since `i` takes on the values `0` to `9` (inclusive). The loop terminates when `i` is incremented to `10` and the condition `i < 10` no longer holds.

------

The `while` and `do-while` loops have the following syntax:

```c
// while:
while ( <cond> ) {
    <body>
}

// do-while:
do {
    <body>
} while( <cond> );
```

What is the difference between a `while` and a `do-while` loop?

- [ ] They're the same.
- [ ] A `while` loop runs infinitely many times, while a `do-while` loop runs a fixed number of times.
- [ ] A `do-while` loop always runs at least once, but a `while` loop may not run at all.

A: A `do-while` loop always runs at least once, but a `while` will never run if `<cond>` is initially false.
