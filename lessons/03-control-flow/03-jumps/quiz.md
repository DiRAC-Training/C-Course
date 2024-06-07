## Jumps

What is a `break` statement used for?

- [ ] To jump to the end of the current loop iteration.
- [ ] To immediately exit multiple nested loops or `switch` blocks.
- [ ] To immediately exit the innermost loop or `switch` being executed.
- [ ] To jump to a specified label.

A: to exit the innermost loop or `switch`.

------

What is a `continue` statement used for?

- [ ] To jump to a specified label.
- [ ] To immediately exit multiple nested loops.
- [ ] To immediately exit the innermost loop being executed.
- [ ] To jump to the end of the current loop iteration.

A: to jump to the end of the current loop iteration.

------

What is a `goto` statement used for?

- [ ] To immediately exit the innermost loop being executed.
- [ ] To jump to a specified label anywhere in the program.
- [ ] To jump to a specified label in the current function.
- [ ] To jump to the end of the current loop iteration.

A: to jump to a specified label in the current function.

------

Consider this `while` loop:

```c
  int i=0;
  while (i<10) {
    if (i > 4) {
        break;
    }
    i++;
  }
```

What is the value of `i` after this loop is executed?

- [ ] 0
- [ ] 10
- [ ] 4
- [ ] 5

A: `i` has the value `5` after this loop is executed.
