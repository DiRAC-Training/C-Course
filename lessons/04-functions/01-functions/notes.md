# Functions

<!--

A function encapsulates a sequence of instructions that perform a specific task. May be defined in
the same program that uses them, or separately in a library. May accept parameters as input and/or
return results and/or have side-effects i.e. have effects visible outside the function itself.

A function without side-effects is often called a "pure" function.

Benefits of using functions:

- Prevent code repetition
- Readability
- Encapsulation of important logic (maintainability)
- Enables testing

Syntax

- Return type (void means nothing returned)
- Name
- Argument list
- Body
- Return statement
- Signature = return type + argument types
- C++ can "overload" functions i.e. same name, different arguments

Ex: implement a simple function to return the minimum in an array of items (give code in `main`)

### Function Scope

- Each function defines its own scope, can only use names in the function scope or the global scope.
- Global variables considered bad practice in most cases, so try to avoid them.
- Global scope typically used for functions.
- In C++, use global scope for class names.

Ex: declaring a global variable to share state between functions.
Ex: declaring `step` local to where we need it.

### C++ Function Overloading

- Overloaded functions have same name and different signatures.

Ex: overload a basic function e.g. print absolute value of double vs. complex.

- C++ supports default arguments at the end of the signature.

Ex: add a default value to an argument and use it.

### Function declarations

- Functions must be declared before they can used.
- A definition counts as a declaration.
- A declaration provides the signature of a function - its return and argument types.
- Declarations typically stored in a header file, included in files which call the function.

Good practices:

- Single responsibility principle = do a single well-defined job.
- Prefer shorter functions = easier to understand and maintain.
- Give meaningful names
- Document your functions = what do parameters do, what is the effect of the function? Any assumptions/requirements?

Ex: provide a missing declaration for a defined function

-->

Functions are used to encapsulate a sequence of instructions that perform a specific task. A function
may be defined in the same source file that uses it, in a separate source file of the same program,
or in a library. Functions may accept parameters as input, may return a result, and may have side-effects
(effects which are visible outside the function itself).

Some benefits of using functions are:

- they allow code to be re-used
- they improve readability
- they encapsulate important logic, making it easier to maintain
- they enable easier testing of code

## Syntax

Here is an example of a basic function in C. This function requires three `double` arguments and returns
a `double` as the result:

```c
#include <stdio.h>

double linear_eq(double m, double c, double x) {
    return m*x + c;
}

int main(void) {
    double X = 3.0;
    double Y = linear_eq(2.0, 1.0, X);
    printf("Y=%f\n", Y);
    return 0;
}
```

### Exercise 1

Implement a function called `quadratic_eq` to evaluate a quadratic formula at some value `x`  using
the coefficients `a`, `b` and `c` i.e. the value of `a*x*x + b*x + c`. The function should accept the
values for `a`, `b`, `c` and `x` as arguments and should return the value computed at `x`.

Here is some example code to use:

```c
#include <math.h>
#include <stdio.h>

int main(void) {
    double a = 1.0, b = -3.25, c=-7.5, X=6.05;
    double Y = a*pow(X, 2.0) + b*X + c;
    printf("Y = %.2f\n", Y);
    return 0;
}
```

NOTE: you may need to compile your code with the `-lm` option at the end of your compiler command to link the standard math library.

Solution:

```c
#include <math.h>
#include <stdio.h>

double quadratic_eq(double a, double b, double c, double x) {
    return a*pow(x, 2.0) + b*x + c;
}

int main(void) {
    double a = 1.0, b = -3.25, c=-7.5, X=6.05;
    printf("Y = %.2f\n", quadratic_eq(a, b, c, X));
    return 0;
}
```

<!-- Implement a function called `min_index` to return the index of the minimum value in an array of numbers.
Here is some example code to use:

```c
#include <stdio.h>

// This function requires an array of double (values) and
// returns an int (the index of the minimum value).
int min_index(double values[]) {
    // your code here
}

int main(void) {
    double mass[5] = {7.0, 3.14, 2.07, 14.95, 4.45};
    int min_index = 0;
    double min_value = mass[0];
    for (int i=1; i<5; i++) {
        if (mass[i] < min_value) {
            min_value = mass[i];
            min_index = i;
        }
    }
    printf("min index is %d with mass %.2f\n", min_index, mass[min_index]);
    return 0;
}
```

Solution:

```c
#include <stdio.h>

int min_index(double values[]) {
    int result = 0;
    double min_value = values[0];
    for (int i=1; i<5; i++) {
        if (values[i] < min_value) {
            min_value = values[i];
            result = i;
        }
    }
    return result;
}

int main(void) {
    double mass[5] = {7.0, 3.14, 2.07, 14.95, 4.45};
    int index = min_index(mass);
    printf("min index is %d with mass %.2f\n", index, mass[index]);
    return 0;
}
``` -->

## Function Scope

A **scope** defines the portion of source code within which a particular identifier for some object is valid.

Each function defines its own scope, and identifiers declared inside the function are only visible within that scope.

Identifiers declared outside any function have global scope and can be accessed from any other scope.

NOTE: global variables are typically considered bad practice, so try to avoid them.

### Exercise 2

This program uses a global variable to count the number of zeros in an array. Change the code so that
the global variable is instead declared in a function scope:

```c
#include <stdio.h>

int num_zeroes = 0;

void count_zeroes(int arr[], int len) {
    num_zeroes = 0;
    for(int i=0; i<len; i++)
        if (arr[i] == 0)
            num_zeroes++;
}

int main(void) {
    int values[5] = {-2, 0, 42, 0, 19};
    count_zeroes(values, 5);
    printf("there are %d zeroes\n", num_zeroes);
    return 0;
}
```

Solution:

```c
#include <stdio.h>

int count_zeroes(int arr[], int len) {
    int num_zeroes = 0;
    for(int i=0; i<len; i++)
        if (arr[i] == 0)
            num_zeroes++;
    return num_zeroes;
}

int main(void) {
    int values[5] = {-2, 0, 42, 0, 19};
    int n = count_zeroes(values, 5);
    printf("there are %d zeroes\n", n);
    return 0;
}
```

## C++ Function Overloading

In C++ we can define multiple functions with the same name and different signatures.

When an overloaded function is called, the compiler uses the types of the arguments to look up the
overload with the matching signature.

Here is an example of function overloading in C++:

```cpp
#include <iostream>

void printNumber(int n) {
    std::cout << "The integer is " << n << std::endl;
}

void printNumber(double x) {
    std::cout << "The double is " << x << std::endl;
}

int main() {
    printNumber(2);
    printNumber(2.0);
    return 0;
}
```


### Exercise 3

Write two overloads of a function `printLength` whose arguments are the components of a 2D or 3D vector and
which prints the length of the vector.

Hint: you may find the `std::sqrt` function useful which in C++ is declared in the `cmath` header

```c
#include <iostream>
#include <cmath>

void printLength(double x, double y) {
    // ...
}

void printLength(double x, double y, double z) {
    // ...
}

int main(void) {
    printLength(3.0, 4.0);
    printLength(3.0, 4.0, 5.0);
    return 0;
}
```

Solution:

```c
#include <iostream>
#include <cmath>

void printLength(double x, double y) {
    double len = std::sqrt(x*x + y*y);
    std::cout << "2D vector length is " << len << "\n";
}

void printLength(double x, double y, double z) {
    double len = std::sqrt(x*x + y*y + z*z);
    std::cout << "3D vector length is " << len << "\n";
}

int main(void) {
    printLength(3.0, 4.0);
    printLength(3.0, 4.0, 5.0);
    return 0;
}
```