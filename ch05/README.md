# Chapter 5: Program Looping

- **Program 5.1:** `triangles.m`

## 5.1 – The `for` Statement

- **Program 5.2:** `triangles.m`
- **Program 5.3:** `triangles.m`
- **Program 5.4:** `triangles.m`
- **Program 5.5:** `triangles.m`

## 5.2 – The `while` Statement

- **Program 5.6:** `while.m`
- **Program 5.7:** `gcd.m`
- **Program 5.8:** `reverse.m`

## 5.3 – The `do` Statement

- **Program 5.9:** `reverse.m`

## 5.4 – The `break` Statement

No programs.

## 5.5 – The `continue` Statement

No programs.

## Exercises

> **Exercise 5.1:** Write a program to generate a display a table of `n` and `n2`, for integer values of `n` ranging from 1 to 10. Be sure to print the appropriate column headings.

This doesn't really need it own file...

```objc
unsigned int n = 1, n2 = 1;

NSLog(@"For n -- 1 to 10");
NSLog(@"----------------");
NSLog(@" n           2n ");
NSLog(@"----------------");

while (n < 11) {
    n2 = n * 2;
    NSLog(@"%2i           %2i ", n++, n2);
}
```

> **Exercise 5.2:** A triangular number can also be generated for an integer value of `n` by this formula:
> 
>     triangularNumber = n * (n + 1) / 2
>
> Write a program that generates a table of triangular numbers using the previous formula. Have the program generate every fifth triangular number between 5 and 50 (i.e: 5, 10, 15, ... , 50).

See `ex5-02.m`.

> **Exercise 5.3:** The factorial of an integer `n`, written as `n!`, is the product of the consecutive integers 1 through `n`. Write a program to generate and print a table of the first 10 factorials.

See `ex5-03.m`.

> **Exercise 5.4:** A minus sign placed in front of a field width specification causes the field to be displayed left-justified. Substitute the following `NSLog` statement for the corresponding statement in **program 5.3**, run the program, and compare the outputs produced by both programs.

```objc
NSLog(@"%-2i %i", n, triangularNumber);
```

This one is pretty self-explanatory -- the output using the above statement will be *left* justified as opposed to the standard *right* justification.

> **Exercise 5.5:** **Program 5.5** allows the user to type in only five different numbers. Modify that program so that the user can type in the number of triangular numbers to be calculated.

All you have to do is request that the user populate the `counter` variable themselves -- instead of manually hard-coding it to be 5.  This would occur outside and before the outer `for` loop.

```objc
NSLog(@"Enter how many triangular numbers to be calculated.");
scanf("%i", &counter);
```

> **Exercise 5.6:** In **programs 5.2** and **programs 5.5** replace all uses of the `for` statement with equivalent `while` statements. Run each program to verify that both versions are identical.

The original loop in **program 5.2**:

```objc
for (n = 1; n <= 200; n + 1) {
    triangularNumber += n;
}
```

Updated to use a `while` loop:

```objc
n = 1;
while (n <= 200) {
    triangularNumber += n++;
}
```

The original loop in **program 5.5**:

```objc
for (counter = 1; counter <= 5; ++counter) {
    // statements
    for (n = 1; n <= number; ++n) {
        triangularNumber += n;
    }
}
```

Updated to use a `while` loop:

```objc
counter = 1;
while (counter++ <= 5) {
    // statements
    n = 1;
    while (n <= number) {
        triangularNumber += n++;
    }
}
```

> **Exercise 5.7:** What would happen if you were to type a negative number into **program 5.8**?

The loop still operates as designed, it just prints each number with a leading minus to indicate that it is negative.

> **Exercise 5.8:** Write a program that calculates the sum of the digits of an integer.  The program should accept any arbitrary integer the user types.

See `ex5-08.m`.