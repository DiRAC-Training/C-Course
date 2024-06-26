# Functions

Topics:

1. Functions
   1. Scope
   2. Function declarations
2. Call semantics
   1. reference vs. value vs. pointer
3. Call stacks
   1. Function pointers

## Functions

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


## Call Semantics

- When a function call happens, any arguments have to be moved from from memory to registers, and a result will have to be moved from registers to memory.
- Have to also deal with a change in the flow of control from calling code to function body.
- Call semantics are the (usually hidden) rules for doing these things.
- C/C++ Default = call-by-value, which means argument values are copied into the function's scope. Return statement copies the result out of the scope.
- Different to Python = call-by-reference (alias)

1. Call-by-value implies we **must** return a value.
2. In C++: call-by-reference allows modifying the original variable instead of copying the value into the function.
3. Call-by-reference with pointers: pass the **value** of a pointer to the target variable, instead of the value of the variable

Ex: ???

- Can "return" multiple values using reference or pointer semantics.
- Strictly speaking, only 1 value is returned - the function has the side-effect of modifying variables through reference/pointer arguments.

Ex: using call-by-reference/pointer to modify arguments

## Call Stacks

N.B. this portion very slide-heavy - any need to repeat what is in the video? Try to **summarise only**.

What memory is used when a function is called?

We have stack & heap memory. Summarise differences in bullets. 

Function call stack is a dynamic data structure used to manage function calls and passing of data. Managed by OS.

Each thread has its own call stack.

LIFO semantics i.e. push on call, pop on return.

The active function is the one at the top of the call stack.

Too many function calls can lead to a stack overflow (memory is finite).

Ex: identify which function calls are live on the call stack during some nested code.

### Stack Frames

Calling a function creates a stack frame for that call.

A stack frame (an entry in the call stack) contains space for a function's data. The size of a stack frame is calculated by the compiler when the program is compiled (since it can see all the variables used by a function call and their sizes).

Upon return, a stack frame is destroyed, variables go out of scope and the stack memory available for another function call.

### Function Pointers

Since instructions and data exist in the same memory, functions can be considered data too, which means we can point to the start of a function in memory.

Ex: declaration of a FP.