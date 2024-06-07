# Loops

## `for`

Ususally use a counter and some termination criterion to stop iterating.

Most commonly used to iterate a known number of times.

Syntax:

```c
for ( <init> ; <cond> ; <expr> ) {
    <body>
}
```

<explain syntax and when stuff is evaluated> AS LONG AS THE CRITERION IS TRUE

### Exercise 1

`for`

Complete the code below to calculate the total of the values in the array `nums`. You will need to
initialise a loop counter `i` to `0` at the start of the loop, and update this to access each element
of `nums` in turn.

```c
#include <stdio.h>

int main(void) {
    int nums[] = {1,2,3,4,5};
    int nums_size = sizeof(nums)/sizeof(nums[0]);
    int total = 0;
    printf("number of items in nums: %d\n", nums_size);
    for (/* your code here */) {
        total += nums[i];
    }
    printf("total: %d\n", total);
    return 0;
}
```

Solution:

```c
#include <stdio.h>

int main(void) {
    int nums[] = {1,2,3,4,5};
    int nums_size = sizeof(nums)/sizeof(nums[0]);
    int total = 0;
    printf("number of items in nums: %d\n", nums_size);
    for (int i=0; i<nums_size; i++) {
        total += nums[i];
    }
    printf("total: %d\n", total);
    return 0;
}
```

## `while`

Most commonly used when number of iterations not known, but want to iterate as long as some condition is true.

Syntax:

```c
while ( <cond> ) {
    <body>
}
```

Note that loop must update <cond> manually. Forgetting this leads to infinite loop.

### Exercise 2

Implement the same code using a `while` loop:

```c
#include <stdio.h>

int main(void) {
    int nums[] = {1,2,3,4,5};
    int nums_size = sizeof(nums)/sizeof(nums[0]);
    int total = 0;
    printf("number of items in nums: %d\n", nums_size);
    /* your code here */
    while (/* your code here */) {
        total += nums[i];
        /* your code here */
    }
    printf("total: %d\n", total);
    return 0;
}
```

Solution:

```c
#include <stdio.h>

int main(void) {
    int nums[] = {1,2,3,4,5};
    int nums_size = sizeof(nums)/sizeof(nums[0]);
    int total = 0;
    printf("number of items in nums: %d\n", nums_size);
    int i=0;
    while (i < nums_size) {
        total += nums[i];
        i++;
    }
    printf("total: %d\n", total);
    return 0;
}
```

## `do-while`

Similar to `while`, but the condition is checked at the end of each iteration. So will always get at
least 1 iteration.

Syntax:

```c
do {
    <body>
} while( <cond> );
```

Still have to update <cond> within loop body.

### Exercise 3

Use a `do-while` loop to calculate the number of times a given character `target` appears in a string:

Hint: in C, a string-literal is always null-terminated i.e. it ends with the special null character `\0`.

```c
#include <stdio.h>

int main(void) {
    const char *s = "hello, world!";
    char target = 'l';
    int count = 0, i = 0;
    do {
        if (s[i] == target) ++count;
        /* your code here */
    } while (/* your code here */);
    printf("the character %c appears %d times in \"%s\"\n", target, count, s);
    return 0;
}
```

Solution:

```c
#include <stdio.h>

int main(void) {
    const char *s = "hello, world!";
    char target = 'l';
    int count = 0, i = 0;
    do {
        if (s[i] == target) ++count;
        i++;
    } while (s[i] != '\0');
    printf("the character %c appears %d times in \"%s\"\n", target, count, s);
    return 0;
}
```
