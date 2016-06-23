# Chapter 2: Programming in Objective-C

## 2.1 – Compiling and Running Programs

- **Program 2.1:** `hello_world.m`

## 2.2 – Explanation of Your First Program

- **Program 2.2:** `hello_world.m`
- **Program 2.3:** `hello_world.m`

## 2.3 – Displaying the Values of Variables

- **Program 2.4:** `variables.m`
- **Program 2.5:** `variables.m`

## Exercises

> **Exercise 2.1:** Type in and run the five program presented in this chapter. Compare the output produced by each program with the output presented after each program.

This is fairly self-explanatory...

> **Exercise 2.2:** Write a program that displays the following text:
> > In Objective-C, lowercase letters are significant.
> > main is where program execution begins.
> > Open and closed braces enclose program statements in a routine.
> > All program statements must be terminated by a semicolon.

See `ex2-02.m`.

> **Exercise 2.3:** What output would you expect from the following program?

```objc
#import <Foundation/Foundation.h>
int main(int argc, char **argv)
{
    @autoreleasepool {
        int i;
        i = 1;
        NSLog(@"Testing...");
        NSLog(@"....%i", i);
        NSLog(@"...%i", i + 1);
        NSLog(@"..%i", i + 2);
    }
    return 0;
}
```

This program will print the following:

```
Testing...
....1
...2
..3
```

> **Exercise 2.4:** Write a program that subtracts the value 15 from 87 and displays the result, together with an appropriate message.

See `ex2-04.m`.

> **Exercise 2.5:** Identify and correct the syntactic errors in the following program. Then type in and run the corrected program to make sure you have identified all the mistakes.

Mistakes:

- `INT sum;` should be `int sum;`
- `/* COMPUTE RESULT //` should be `/* COMPUTE RESULT */`
- `sum = 25 + 37 - 19` should be `sum = 25 + 37 - 19;`
- `/ DISPLAY RESULTS /` should be `// DISPLAY RESULTS`
- `NSLog(@'The answer is %i', sum);` has single quotes, needs double quotes.

```objc
#import <Foundation/Foundation.h>
int main(int argc, char **argv)
{
    @autoreleasepool {
        int sum;
        /* COMPUTE RESULT */
        sum = 25 + 37 - 19;
        // DISPLAY RESULTS
        NSLog(@"The answer is %i", sum);
    }
    return 0;
}
```

> **Exercise 2.6:** What output do you expect from the following program?

```objc
#import <Foundation/Foundation.h>
int main(int argc, char **argv)
{
    @autoreleasepool {
        int answer, result;
        
        answer = 100;
        result = answer - 10;
        
        NSLog(@"The result is %i", result + 5);
    }
    return 0;
}
```

This program will print the following:

```
The result is 95
```