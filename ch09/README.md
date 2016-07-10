# Chapter 9: Polymorphism, Dynamic Typing, and Dynamic Binding

## 9.1 – Polymorphism: Same Name, Different Class

- **Program 9.1A:** `Complex.h`
- **Program 9.1B:** `Complex.m`
- **Program 9.1C:** `main.m`

## 9.2 – Dynamic Binding and the `id` Type

- **Program 9.2:** `id.m`

## 9.3 – Compile Time Versus Runtime Checking

No programs.

## 9.4 – The `id` Data Type and Static Typing

No programs.

### 9.4.1 – Argument and Return Types with Dynamic Typing

No programs.

## 9.5 – Asking Questions about Classes

- **Program 9.3:** `classes.m`

## 9.6 – Exception Handling Using `@try`

- **Program 9.4:** `error.m`
- **Program 9.5:** `exceptions.m`

## Exercises

> **Exercise 9.1:** What will happen if you insert the message:
>
>     [compResult reduce];
>
> into `main.m` after the addition is performed?

The `Complex` class has no `reduce` method, so you will get the following compiler warning:

```
main.m:34:18: error: no visible @interface for 'Complex' declares the selector 'reduce'
```

> **Exercise 9.2:** Can the `id` variable `dataValue` be assigned a `Rectangle` object as it was defined in Chapter 8? That is, is the following statement valid:
>
>     dataValue = [[Rectangle alloc] init];

Yes, that statement is valid and will not produce any errors or compiler warnings. You *will* run into trouble if you try to apply methods to `dataValue` that have not been defined for `Rectangle` instances — this would also not be caught at compilation, as the compiler has no idea what will be stored in `dataValue`, even though it is *hard-coded* into the program.

> **Exercise 9.3:** Add a `print` method to your `XYPoint` class from Chapter 8. Have it display the point in regular format `(x, y)`. Then modify `id.m` to incorporate an `XYPoint` object. Have the modified program create an `XYPoint` object, set its value, assign it to the `id` variable `dataValue`, and then display its value.

See the folder `ex9-03/`.

> **Exercise 9.4:** Modify both `add:` methods in the `Fraction` and `Complex` classes to take and return `id` objects. Then write a program that incorporates the following code sequence:
>
>     result = [dataValue1 add: dataValue2];
>     [result print];
>
> Here, `result`, `dataValue1`, and `dataValue2` are `id` objects. Make sure that you set `dataValue1` and `dataValue2` appropriately.

See the folder `ex9-04/`.

> **Exercise 9.5:** Given the `Fraction` and `Complex` class definitions and the following definitions:
>
>     Fraction *fraction = [[Fraction alloc] init];
>     Complex *complex   = [[Complex alloc] init];
>     id number          = [[Complex alloc] init];
>
> Determine the return value from the following message expressions:

```objc
[fraction isMemberOfClass: [Complex class]];                // NO
[complex isMemberOfClass: [NSObject class]];                // NO
[complex isKindOfClass: [NSObject class]];                  // YES
[fraction isKindOfClass: [Fraction class]];                 // YES
[fraction respondsToSelector: @selector (print)];           // YES
[complex respondsToSelector: @selector (print)];            // YES
[Fraction instancesRespondToSelector: @selector (print)];   // YES
[number respondsToSelector: @selector (print)];             // YES
[number isKindOfClass: [Complex class]];                    // YES
[[number class] respondsToSelector: @selector (alloc)];     // YES
```
