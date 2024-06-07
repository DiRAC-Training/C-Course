# Jumps

Jumps cause discontinuous changes in the control flow of a program, causing program execution to
literally jump to a different line altogether.

## `break`

Used to terminate the innermost loop. Used e.g. to stop iterating as soon as we find a solution. The
loop is exited immediately regardless of the loop termination criterion.

### Exercise 1

Use a `break` statement to find the first position at which a given character `target` appears in a
string. If `target` does not appear in a string, set the result to be `-1`. Store the result in the
variable `pos`.

Hint: This `for` loop doesn't use a loop-termination condition, so it will run indefinitely. Where
should you put a `break` statement to stop the loop when the end of the string is reached?

```c
#include <stdio.h>

int main(void) {
    const char *s = "hello, world!";
    char target = 'o';
    int pos;
    for (int i=0; ; i++) {
        if (s[i] == '\0') {
            /* your code here */
        } else if (/* your code here */) {
            /* your code here */
        }
    }
    printf("pos: %d\n", pos);
    return 0;
}
```

Solution:

```c
#include <stdio.h>

int main(void) {
    const char *s = "hello, world!";
    char target = 'o';
    int pos;
    for (int i=0; ; i++) {
        if (s[i] == '\0') {
            pos = -1;
            break;
        } else if (s[i] == target) {
            pos = i;
            break;
        }
    }
    printf("pos: %d\n", pos);
    return 0;
}
```

## `continue`

Used to jump to the end of (skip) the current iteration of the innermost loop.

### Exercise 2

Write a loop to sum the values in an array, using a `continue` statement to only add up positive values:

```c
#include <stdio.h>

int main(void) {
    double nums[] = {1.23, -5.25, 3.14, -3.14, 2.99};
    int nums_size = sizeof(nums)/sizeof(nums[0]);
    double total = 0.0;
    for (/* your code here */) {
        /* your code here */
    }
    printf("total value of positive numbers is: %f\n", total);
}
```

Solution:

```c
#include <stdio.h>

int main(void) {
    double nums[] = {1.23, -5.25, 3.14, -3.14, 2.99};
    int nums_size = sizeof(nums)/sizeof(nums[0]);
    double total = 0.0;
    for (int i=0; i<nums_size; i++) {
        if (nums[i] < 0) continue;
        total += nums[i];
    }
    printf("total value of positive numbers is: %f\n", total);
}
```

## `goto`

Used to jump directly to a given named block and continue execution from there. Can be used to escape
multiple nested loops, or go straight to clean-up code if an error occurs.

Should be used with caution, as it can easily lead to difficult-to-follow control flow and subtle bugs.

Syntax:

```c
goto my_label;
...
my_label:
    // goto my_label will jump here unconditionally.
```

### Exercise 3

Write a loop to check whether an array is sorted in ascending order, using a `goto` to jump the
appropriate `printf` statement if you find that the list is not sorted. What is missing to ensure
that only one of the statements is printed when the array is sorted?

```c
#include <stdio.h>

int main(void) {
    int nums[] = {1,2,3,5,4};
    int nums_size = sizeof(nums)/sizeof(nums[0]);
    for (/* your code here */) {
        /* your code here */
    }
    printf("the array is sorted\n");
    printf("the array is NOT sorted\n");
    return 0;
}
```

Solution:

```c
#include <stdio.h>

int main(void) {
    int nums[] = {1,2,3,5,4};
    int nums_size = sizeof(nums)/sizeof(nums[0]);
    for (int i=1; i<nums_size; i++) {
        if (nums[i] < nums[i-1]) goto not_sorted;
    }
    printf("the array is sorted\n");
    return 0;
not_sorted:
    printf("the array is NOT sorted\n");
    return 0;
}
```
