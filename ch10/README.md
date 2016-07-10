# Chapter 10: More on Variables and Data Types

## 10.1 – Initializing Objects

- **Program 10.1:** `init.m`

## 10.2 – Scope Revisited

No programs.

### 10.2.1 – More on Properties, Synthesized Accessors, & Instance Variables

No programs.

### 10.2.2 – Global Variables

No programs.

### 10.2.3 – Static Variables

- **Program 10.2:** `alloc.m`

## 10.3 – Enumerated Data Types

- **Program 10.3:** `enum.m`

## 10.4 – The `typedef` Statement

No programs.

## 10.5 – Data Type Conversions

No programs.

### 10.5.1 – Conversion Rules

No programs.

## 10.6 – Bit Operators

No programs.

### 10.6.1 – The Bitwise AND Operator

No programs.

### 10.6.2 – The Bitwise Inclusive-OR Operator

No programs.

### 10.6.3 –The Bitwise Exclusive-OR Operator

No programs.

### 10.6.4 – The Ones Complement Operator

- **Program 10.4:** `bits.m`

### 10.6.5 – The Left-Shift Operator

No programs.

### 10.6.6 – The Right-Shift Operator

No programs.

## Exercises

> **Exercise 10.1:** Using the `Rectangle` class from Chapter 8, add an initializer method according to the following declaration:
>
>     - (id) initWithWidth: (int) w andHeight: (int) h;

```objc
- (id) initWithWidth: (int) w andHeight: (int) h
{
    self = [super init];
    
    if (self) {
        [self setWidth: w andHeight: h];
    }
    return self;
}
```

> **Exercise 10.2:** Add an initializer to the `Square` class from Chapter 8 to be in accordance with the initializer from the above exercise and the following declaration:
>
>     - (id) initWithSide: (int) side;

`Square` is a subclass of `Rectangle`, so instead of calling `init` on `super`, we can call the method we just made — `initWithWidth:andHeight:`

```objc
- (id) initWithSide: (int) side
{
    self = [super initWithWidth: side andHeight: side];
    return self;
}
```

> **Exercise 10.3:** Add a counter to the `Fraction` class's `add:` method to count the number of times it is invoked. How can you retrieve the value of the counter?

You can make a global counter variable in the `Fraction` class, `gAddCounter`, and make class methods `+` to update and retrieve this value.

> **Exercise 10.4:** Using `typedef` and enumerated data types, define a type `Day` with the possible values of `Sunday`, `Monday`, etc.

```objc
typedef enum {
    SUNDAY,
    MONDAY,
    TUESDAY,
    WEDNESDAY,
    THURSDAY,
    FRIDAY,
    SATURDAY,
    SUNDAY
} Day;
```

> **Exercise 10.5:** Using `typedef`, define a type `FractionObj` that enables you to write statements such as the following:
>
>     FractionObj f1 = [[Fraction alloc] init], f2 = [[Fraction alloc] init];

```objc
typedef Fraction *FractionObj;
```

> **Exercise 10.6:** Based on the following definitions:
>
>     float f     = 1.00;
>     short int i = 100;
>     long int l  = 500L;
>     double d    = 15.00;
>
> and the order of precedence for conversion of operands in expressions, determine the type and value of the following:

```objc
f + i               // (float)    = 101.000000
l / d               // (double)   = 33.333333
i / l + f           // (float)    = 1.000000
l * i               // (long int) = 50000
f / 2               // (float)    = 0.500000
i / (d + f)         // (double)   = 6.250000
l / (i * 2.0)       // (float)    = 700.000000
l + i / (double) l  // (double)   = 500.200000
```
