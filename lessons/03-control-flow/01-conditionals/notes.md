# Conditionals

- if-else
- switch-case
- ternary

Control structures whose evaluation modifies the path of execution in a program (branching).

All control structures depend on logical (true/false) statements, which may use logical comparisons and logical operators.

- binary operators -> boolean value
- what are the logical operators (AND, OR, NOT, EQ, GT, GE, LT, LE, etc...)

## `if`

```c
if (<cond1>) {
    <block1>
} else if (<cond2>) {
    <block2>
} else {
    <block3>
}
```

Some pitfalls to be aware of:

- using = rather than ==
- not using curly braces (generally considered good practice)

### Exercise 1

`if`

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

Used to enumerate the possible values an expression can take.

Note that execution jumps to the first matching case and runs until the end of the `switch` block or
the next `break` statement;

Syntax:

```c
switch (<input>) {
    case <value1>: <statement1>;
    ...
    case <valueN>: <statementN>;
    default: <default-statement>;
}
```

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

Provides a compact representation of the result of an `if .. else` comparison. Known as the ternary operator as it takes 3 arguments.

Syntax:

`<cond> ? <true-result> : <false-result>;`

Compact but can lead to less readable code.

### Exercise 3

`ternary-if`

Amend the previous example to use the ternary operator to print `true` or `false` when `n >= m`:

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
