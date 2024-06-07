# Conditionals

Conditionals are control structures whose evaluation modifies the path of execution in a program.

They are used to make decisions about the execution path and cause code to branch.

All control structures depend on logical (true/false) statements, which may use logical operators and comparisons.

A logical operator maps its argument(s) to a logical value. For example, the operation `A && B` is
true if both `A` and `B` are true, and is false otherwise.

| Operator | Name | Meaning |
|:-:|:-:|:-:|
| `a || b` | `OR`  | True if at least one input is true, false otherwise. |
| `a && b` | `AND`  | True if all inputs are true, false otherwise. |
| `!a` | `NOT`  | True if `a` is false, and vice versa. |

Logical operators in C and C++ are "short-circuiting" which means that their evaluation stops as soon as the overall result is known. For example, if `a` is true, the operation `a || b` stops after evaluating `a` and does not evaluate `b` as the overall result can only be true.

## `if`

An `if`/`if-else` is used to branch based on a logical statement (condition). A basic `if`-block has the following syntax:

```c
if (<cond>) {
    <block>
}
```
If `<cond>` is true then `<block>` is evaluated, otherwise execution continues after the block. Note that scoping braces `{ ... }` are used to group the statements of the `if`-block together.

Multiple conditions may be given:

```c
if (<cond1>) {
    <block1>
} else if (<cond2>) {
    <block2>
} else {
    <block3>
}
```

When multiple conditions are given, each is checked in turn until one evaluates to true. The corresponding block is evaluated and execution continues after the end of the whole `if`-block. If no conditions are true and there is an `else`-block then this is evaluated instead.

Some pitfalls to be aware of:

- When comparing for equality, take care to use `==`, not `=` which is the assignment operator.
- It is generally considered good practice to always use scoping braces `{ ... }` to group branching code, even for only a single line.

### Exercise 1

Complete this code so that the program prints `invalid` if `m > n`, `true` if `n` is a multiple of `m` and `false`
otherwise. Test it with a few different values of `n` and `m`:

Hint: the modulo operator `p % q` prints the remainder of the division `p/q`.

```c
#include <stdio.h>

int main(void) {
    int n = 13;
    int m = 19;
    const char *result = "";
    if (/* your code here */) {
        result = "invalid";
    } else if (/* your code here */) {
        result = "false";
    } else {
        result = "true";
    }
    printf("%s\n", result);
    return 0;
}
```

Solution:

```c
#include <stdio.h>

int main(void) {
    int n = 13;
    int m = 19;
    const char *result = "";
    if (m > n) {
        result = "invalid";
    } else if (n % m) {
        result = "false";
    } else {
        result = "true";
    }
    printf("%s\n", result);
    return 0;
}
```

## `switch .. case ..`

A `switch .. case ..` is used to enumerate a finite set of values an expression can take and to jump to a particular block of code based on that value.

The syntax is:

```c
switch (<input>) {
    case 0: <statement1>;
    case 1: {
        <statement2>;
        <statement3>;
        break; // exit the switch block
    }
    ...
    case <value>: <statementN>;
    ...
    default: <default-statement>;
}
```

Where `<input>` is the value to be tested, and each `case <valueX>:` labels the different values the input can take.

The `default` case is executed if the input matches none of the given labels.

Execution jumps to the first matching case and runs until the end of the `switch` block (this behaviour is known as "fall-through"). If a `break` statement (see later in this lesson for more on `break`) is encountered, the rest of the `switch` is skipped.

You must use scoping braces `{ ... }` to execute multiple statements for a given case.

### Exercise 2

Now use a `switch` statement to print `true` if `n` is a multiple of `m` and `false` if not:

```c
#include <stdio.h>

int main(void) {
    int n = 13;
    int m = 19;
    const char *result = "";
    if (/* your code here */) {
        result = "invalid";
    } else {
        switch (/* your code here */) {
            case /* your code here */: result = "true";
                break;
            default: /* your code here */
        }
    }
    printf("%s\n", result);
    return 0;
}
```

Consider what would happend if you removed the `break` statement from the `case 0` block. Is the
result what you expected? Can you explain it?


Solution:

```c
#include <stdio.h>

int main(void) {
    int n = 13;
    int m = 19;
    const char *result = "";
    if (m > n) {
        result = "invalid";
    } else {
        switch (n%m) {
            case 0: result = "true";
                break;
            default: result = "false";
        }
    }
    printf("%s\n", result);
    return 0;
}
```

## The ternary ` .. ? .. : .. ` operator

The ternary operator, so-called because it takes 3 arguments, provides a compact representation of the result of an `if .. else` comparison. 

Syntax:

`<cond> ? <true-result> : <false-val>;`

The result is `<true-val>` if `<cond>` is true, and `<false-val>` otherwise.

It can be used as the right-hand side of an assignment, for example:

```c
int p, q;
...
int f = p>q ? 42 : 13 ;
```

Which assigns `f` the value `42` if `p > q` and `13` otherwise.

This operator trades readability for compactness, so should be used with caution as it does make code harder to read.

### Exercise 3

Amend the previous exercises to use the ternary operator to print `true` if `n` is a multiple of `m` and `false` if not:

```c
#include <stdio.h>

int main(void) {
    int n = 13;
    int m = 19;
    const char *result = "";
    if (/* your code here */) {
        result = "invalid";
    } else {
        /* your code here */
    }
    printf("%s\n", result);
    return 0;
}
```

Solution:

```c
#include <stdio.h>

int main(void) {
    int n = 13;
    int m = 19;
    const char *result = "";
    if (m > n) {
        result = "invalid";
    } else {
        result = n%m ? "false" : "true";
    }
    printf("%s\n", result);
    return 0;
}
```
