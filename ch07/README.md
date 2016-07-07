# Chapter 7: More on Classes

## 7.1 – Separate Interface and Implementation Files

- **Program 7.1A:** `main.m`
- **Program 7.1B:** `Fraction.h`
- **Program 7.1C:** `Fraction.m`

## 7.2 – Synthesized Accessor Methods

No programs.

## 7.3 – Accessing Properties Using the Dot Operator

- **Program 7.2A:** `main.m`

## 7.4 – Multiple Arguments to Methods

- **Program 7.2B:** `Fraction.h`
- **Program 7.2C:** `Fraction.m`
- **Program 7.2A:** `main.m`
- **Program 7.3A:** `Fraction.h`
- **Program 7.3B:** `Fraction.m`

## 7.5 – Local Variables

- **Program 7.4A:** `Fraction.h`
- **Program 7.4B:** `Fraction.m`
- **Program 7.4C:** `main.m`

## 7.6 – The `self` Keyword

No programs.

## 7.7 – Allocating and Returning Objects from Methods

- **Program 7.5:** `main.m`

## Exercises

> **Exercise 7.1:** Add the following methods to the `Fraction` class to round out the arithmetic operations on fractions.

```objc
- (Fraction *) subtract: (Fraction *) f;
- (Fraction *) multiply: (Fraction *) f;
- (Fraction *) divide: (Fraction *) f;
```

See `ex7-01.m`.

> **Exercise 7.2:** Modify the `print` method from your `Fraction` class so that it takes an additional `BOOL` argument that indicates whether the fraction should be reduced for display. If it is to be reduced, be sure not to make any permanent changes to the fraction itself.

In order to preserve the original `Fraction` instance, we will create a new instance, `r`, if we are to reduce the `Fraction` before printing.

```objc
- (void) print: (BOOL) d
{
    if (d) {
        Fraction *r = [[Fraction alloc] init];
        [r setNumerator: numerator];
        [r setDenominator: denominator];
        [r reduce];
        NSLog(@"%i/%i", r.numerator, r.denominator);
    }
    else NSLog(@"%i/%i", numerator, denominator);
}
```

> **Exercise 7.3:** Will your `Fraction` class work with negative numbers? Write a test program to try it.

Yes, the `Fraction` class will work with negative numbers.  But, due to how we calculate the result of the addition, subtraction, multiplication, and division to two fractions, the negative number will always be carried in the denominator.

> **Exercise 7.4:** Modify the `Fraction`'s print method to display fractions greater than `1` as mixed numbers.

This implementation will print fraction's as mixed number if the `numerator` is greater than the `denominator`.  It will also only print the *whole* number if the result of `numerator % denominator` is `0` -- in other words, it will print `2` for `4/2`.

```objc
- (void) print
{
    if (numerator > denominator) {
        int whole  = numerator / denominator;
        int remain = numerator % denominator;
        if (remain != 0) {
            NSLog(@"%i %i/%i", whole, remain, denominator);
        }
        else NSLog(@"%i", whole);
    }
    else NSLog(@"%i/%i", numerator, denominator);
}
```

> **Exercise 7.5:** Remove the `@synthesize` directive from *Program 7.2* and modify the program to handle the new names given to the intance variables by the compiler.

Removing the `@synthesize` directive tells the compiler to automatically insert an underscore `_` before the name of the instance variable(s).  You would just need to modify all references to these variables in the implementation section.

> **Exercise 7.6:** Add a new method to your `Complex` class from chapter 4 called `add:` that can be used to add two complex numbers -- based on the following method declaration:

```objc
- (Complex *) add: (Complex *) complexNum;
```

See `ex7-06/Complex.h` and `ex7-06/Complex.m`.

> **Exercise 7.7:** Given the `Complex` class from chapter 4 and the above addition(s), create separate `Complex.h` and `Complex.m` interface and implementation files. Create a separate test program to test everything.

`Complex` class implemented in `ex7-06/Complex.h` and `ex7-06/Complex.m`.  Everything is tested through `ex7-06/main.m`.