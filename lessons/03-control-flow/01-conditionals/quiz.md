## Logical Operators

Which logical operation do each of these expressions represent?

`(a || b)`

1. [ ] `AND`
2. [ ] `OR`
3. [ ] `NOT`

A: OR

------

`(a && b)`

1. [ ] `AND`
2. [ ] `OR`
3. [ ] `NOT`

A: AND

------

`(!a)`

1. [ ] `AND`
2. [ ] `OR`
3. [ ] `NOT`

A: NOT

------

## Conditionals

Which of the following is used to branch based on a boolean value?

1. [ ] `switch`
2. [ ] `if`
3. [ ] `for`
4. [ ] `break`

A: if

------

Which of the following can be used in an assignment?

1. [ ] `if`
2. [ ] `(.. ? .. : ..)` a.k.a. the ternary operator
3. [ ] `switch`
4. [ ] `for`

A: the ternary operator

------

Which of these is used to handle a particular case based on an integral value?

1. [ ] `for`
2. [ ] `if`
3. [ ] `switch`
4. [ ] `goto`

A: switch

------

What is the difference between `=` and `==`?

1. [ ] They're the same.
2. [ ] `=` is an assignment, `==` is the equality operator.
3. [ ] `==` is an assignment, `=` is the equality operator.

A: 2

------

What is the `break` statement for in a `switch`?

- [ ] To continue executing the rest of the `switch`.
- [ ] To stop executing the `switch`.
- [ ] Nothing, it's only used when looping.

A: to stop executing the rest of the `switch`. Without a `break`, a `switch` executes all code between the matching case and the closing `}`.

------

Consider this code:

```c
int i = 0;
switch(2) {
    case 1 : i++; break;
    case 2 : i++;
    case 3 : i++;
}
```

What is the value of `i` after this `switch` block?

1. [ ] 0
2. [ ] 1
3. [ ] 2
3. [ ] 3

A: `i` has the value `2` since the code jumps to `case 2` and also executes `case 3` as there is no `break` between cases `2` and `3`.

------

Consider this code:

```c
int get_value(void) {
  int j = 0, i = 0;
  if (j > 0)
    j++; i = 2;
  return i+j;
}
```

What will this function return?

1. [ ] 0
2. [ ] 2
3. [ ] 3

A: it returns a value of 2. `j` is never incremented, but the lack of scoping braces `{...}` means that the assignment `i = 2` is always evaluated.
