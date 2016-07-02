# Chapter 6: Making Decisions

## 6.1 – The `if` Statement

- **Program 6.1:** `abs.m`
- **Program 6.2:** `Fraction.m`
- **Program 6.3:** `odd_even.m`
- **Program 6.4:** `odd_even.m`
- **Program 6.5:** `leap_years.m`
- **Program 6.6:** `sign.m`
- **Program 6.7:** `characters.m`
- **Program 6.8:** `Calculator.m`

## 6.2 – The `switch` Statement

- **Program 6.9:** `Calculator.m`

## 6.3 – Boolean Variables

- **Program 6.10:** `primes.m`

## 6.4 – The Conditional Operator

No programs.

## Exercises

> **Exercise 6.1:** Write a program that asks the user to type in two integer values. Test these two number to determine whether the first is evenly divisible by the second and then display an appropriate message at the terminal.

See `ex6-01.m`.

> **Exercise 6.2:** *Program 6.8* displays the value in the accumulator even if an invalid operator is entered or division by zero is attempted. Fix that problem.

This occurs because we call `[deskCalc setAccumulator: value1]` before we determine what values and operators were actually entered by the user.  The simplest fix would be too add that method call as the first statement inside the body every *satisfying* conditional.

> **Exercise 6.3:** Modify the `print` method from the `Fraction` class so that whole numbers are displayed as such (i.e: `5/1` would be displayed as `5`). Also modify the method to display fractions with a numerator of `0` as simply zero.

```objc
- (void) print
{
    if (denominator == 1) {
        NSLog(@"%i", numerator,);
    }
    else if (numerator == 0) {
        NSLog("0");
    }
    else NSLog(@"%i/%i", numerator, denominator);
}
```

> **Exercise 6.4:** Write a program that acts as a simple printing calculator. The program should allow the user to type in expressions of the following form:
>
>     number operator
>
> The program should recognize the following operators:
>
>     +     -> addition
>     -     -> subtraction
>     *     -> multiplication
>     /     -> division
>     S     -> set the accumulator
>     E     -> end execution
>
> The arithmetic operators are performed on the contents of the accumulator, with the number that was keyed in acting as the second operand.

See `ex6-04.m`.

> **Exercise 6.5:** We developed *Program 5.9* to reverse the digits of an integer typed in from the terminal. However, this program does not function well if you type in a negative number. Find out what happens in such a case, and modify the program so that negative numbers are correctly handled. By this, we mean that if the number `-8645` were typed in, for example, the output of the program should be `5468-`.

When the original program encounters a negative number, it prints a sign with each number.  To fix this we could use a flag variable that would be turned on when a digit is determined to be negative.  Then we could multiply that number by `-1` to ensure only the digit is printed -- then, we could print the sign at the end.

See `ex6-05.m`.

> **Exercise 6.6:** Write a program that takes an integer keyed in from the terminal and extracts and displays each digit in English. So if the user types in `939`, the program should display:
>
>     nine
>     three
>     two

See `ex6-06.m`.

> **Exercise 6.7:** *Program 6.10* has several inefficiencies. One results from checking even numbers. Because any even number greater than 2 obviously cannot be prime, the program could simply skip all even numbers as possible primes and as possible divisors. The inner `for` loop is also inefficient because the value of `p` is always divided by all values of `d` from `2` through `p - 1`. You can avoid this inefficiency if you add a test for the value if `isPrime` in the conditions of the `for` loop. In this manner, you can set up the `for` loop to continue as long as no divisor is found and the value of `d` is less than `p`. Modify this program to incorporate these two changes; then run the program to verify its operation.

See `ex6-07.m`.