# Chapter 4: Data Types and Expressions

## 4.1 – Data Types and Constants

- **Program 4.1:** `data_types.m`

## 4.2 – Arithmetic Expressions

- **Program 4.2:** `operators.m`
- **Program 4.3:** `operators.m`
- **Program 4.4:** `operators.m`
- **Program 4.5:** `conversions.m`

## 4.3 – Assignment Operators

No programs.

## 4.4 – A Calculator Class

- **Program 4.6:** `Calculator.m`

## Exercises

> **Exercise 4.1:** Which of the following are invalid constants? Why?

- `123.456`: valid float
- `0x10.5`: *invalid*: hexadecimal floating constants require an exponent
- `0X0G1`: *invalid*: `G1` is an invalid suffix
- `0001`: valid integer
- `0xFFFF`: valid integer
- `123L`: valid long integer
- `0Xab05`: valid integer
- `0L`: valid long integer
- `-597.25`: valid float
- `123.5e2`: valid float
- `.0001`: valid float
- `+12`: valid integer
- `98.6F`: valid float
- `98.7U`: *invalid*: `U` is an invalid suffix
- `17777s`: *invalid*: `s` is an invalid suffix
- `0996`: *invalid*: `9` is an invalid octal constant
- `-12E-12`: valid float
- `07777`: valid integer
- `1234uL`: valid unsigned long integer
- `1.2Fe-7`: *invalid*: `Fe-7` is an invalid suffix
- `15,000`: *invalid*: commas aren't valid in constants
- `1.234L`: valid long float
- `197u`: valid integer
- `100U`: valid integer
- `0XABCEDFL`: valid long integer
- `0xabcu`: valid unsigned int
- `+123`: valid integer

> **Exercise 4.2:** Write a program that converts from degrees Fahrenheit (F) to degrees Celsius (C) using the following formula: `C = (F - 32) / 1.8`.

Here is a simple expression to accomplish this:

```objc
double fah = 27.0, cel;
cel = (fah - 32.0) / 1.8;
```

> **Exercise 4.3:** What would you expect from the following program?

```objc
#import <Foundation/Foundation.h>

int main(int argc, char const **argv)
{
    @autoreleasepool {
        char c, d;
        c = 'd';
        d = c;
        NSLog(@"d = %c", d);
    }
    return 0;
}
```

The output of this program would be:

```
d = d
```

> **Exercise 4.4:** Write a program to evaluate the polynomial `3x^3 - 5x^2 + 6` for `x = 2.55`;

```objc
double x = 2.55, answer;

// calculate: 3x^3
answer = x * x * x * 3;

// calculate: - 5x^2
answer -= x * x* 5;

// calculate: + 6
answer += 6;
```

> **Exercise 4.5:** Write a program that evaluates the following expression and displays the results:
> - `(3.31 x 10^-8 + 2.01 x 10^-7) / (7.16 x 10^-6 + 2.01 x 10^-8)`

```objc
    double num   = 3.31e-8 + 2.01e-7;
    double denom = 7.16e-6 + 2.01e-8;
    NSLog(@"(3.31e-8 + 2.01e-7) / (7.16e-6 + 2.01e-8) = %.2e", 
        num / denom);
```

> **Exercise 4.6:** *Complex* number are numbers that contain two components: 
>
> 1. a *real* part,
> 2. and an *imaginary* part.
>
> If `a` is the real component and `b` is the imaginary component, this notation is used to represent the number: `a + bi`.
>
> Write an Objective-C program that defines a new class called `Complex`. Following the paradigm established for the `Fraction` class, define the following methods for your new class and write a test program to test your new class and methods.

```objc
- (void) setReal: (double) a;
- (void) setImaginary: (double) b;
- (void) print;
- (double) real;
- (double) imaginary;
```

See `ex4-06.m`.

> **Exercise 4.7:** Suppose you are developing a library of routines to manipulate graphical objects. Start by defining a new class called `Rectangle`. For now, just keep track of the rectangle's width and height. Develop methods to set the rectangle's width and height, retrieve these values, and calculate the rectangle's area and perimeter. Assume that these rectangle objects describe rectangles on an internal grid, such as a computer screen. In that case, assume the width and height are integer values.
>
> Here is the `@interface` sectio of the `Rectangle` class. Write the `@implementation` section and a test program to test your new class and methods.

```objc
@interface Rectangle: NSObject

- (void) setWidth: (int) w;
- (void) setHeight: (int) h;
- (int) width;
- (int) height;
- (int) area;
- (int) perimeter;

@end
```

See `ex4-07.m`.

> **Exercise 4.8:** The `add:`, `subtract:`, `multiply:`, and `divide:` methods from **program 4.6** do not return a value. Modify these methods to return the value of the accumulator after the computation is performed. Test the new methods.

See `ex4-08.m`.

> **Exercise 4.9:** Add the following methods to the `Calculator` class and test them:

```objc
- (double) changeSign
- (double) reciprocal
- (double) xSquared
```

See `ex4-09.m`.

> **Exercise 4.10:** Add a memory capability to the `Calculator` class. Implement the following method declarations and test them:

```objc
- (double) memoryClear;
- (double) memoryStore;
- (double) memoryRecall;
- (double) memoryAdd: (double) value;
- (double) memorySubtract: (double) value;
```

See `ex4-10.m`.