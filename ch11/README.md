# Chapter 11: Categories and Protocols

## 11.1 – Categories

- **Program 11.1:** `MathOps.m`

## 11.2 – Class Extensions

No programs.

### 11.2.3 – Some Note about Categories

No programs.

## 11.3 – Protocols and Delegation

No programs.

### 11.3.1 – Delegation

No programs.

### 11.3.2 – Informal Protocols

No programs.

## 11.4 – Composite Objects

No programs.

## Exercises

> **Exercise 11.1:** Extend the `MathOps` category from `MathOps.m` to also include an `invert` method, which returns a `Fraction` that is an inversion of the receiver.

Here is just the method:

```objc
- (Fraction *)invert
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = self.denominator;
    result.denominator = self.numerator;
    [result reduce];
    return result;
}
```

> **Exercise 11.2:** Add a category to the `Fraction` class called `Comparison`. In this category, add two methods according to these declarations:
>
>     - (BOOL)isEqualto: (Fraction *)f;
>     - (int)compare: (Fraction *)f;
>
> The first method should return `YES` if the two fractions are identical and should return `NO` otherwise. Be careful about comparing fractions (you should reduce both fractions first).
>
> The second method should return `-1` if the receiver compares less than the fraction represented by the argument, return `0` if the two are equal, and return `1` if the receiver is greater than the argument.

See `11-02.m`.

> **Exercise 11.3:** Extend the `Fraction` class by adding methods that conform to the informal protocol `NSComparisonMethods`. Implement the first six methods from the protocol:
>
> 1. `isEqualTo:`
> 2. `isLessThanOrEqualTo:`
> 3. `isLessThan:`
> 4. `isGreaterThanOrEqualTo:`
> 5. `isGreaterThan:`
> 6. `isNotEqualTo:`

See `11-03.m`.

> **Exercise 11.4:** Add a category called `Trig` to the `Calculator` class from Chapter 6. Add methods to this category to calculate the sine, cosine, and tangent based on these declarations:
>
>     - (double)sin;
>     - (double)cos;
>     - (double)tan;

```objc
#import "Calculator.h"

@interface Calculator (Trig)
- (double)sin;
- (double)cos;
- (double)tan;
@end

@implementation Calculator (Trig)
- (double)sin
{
    return sin(self.accumulator);
}

- (double)cos
{
    return cos(self.accumulator);
}

- (double)tan
{
    return tan(self.accumulator);
}
@end
```

> **Exercise 11.5:** Given the following interface and implementation sections, complete the implementation section for a `Square` and a test program to check its methods. Make sure you override `init` because `initWithSide:` will be your designated initializer.

See `11-05.m`.