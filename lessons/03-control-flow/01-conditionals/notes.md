## Exercise 1

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

## Exercise 2

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

## Exercise 3

Now use a `switch` statement to print `true` or `false` as required:

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