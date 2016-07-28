# Chapter 12: The Preprocessor

## 12.1 – The `#define` Statement

No programs.

### 12.1.1 – More Advanced Types of Definitions

No programs.

## 12.2 – The `#import` Statement

No programs.

## 12.3 – Conditional Compilation

No programs.

### 12.3.1 – The `#ifdef`, `#endif`, `#else`, and `ifndef` Statements

No programs.

### 12.3.2 – The `#if` and `#elif` Preprocessor Statements

No programs.

### 12.3.3 – The `#undef` Statement

No programs.

## Exercises

> **Exercise 12.1:** Locate the system header files `limits.h` and `float.h` on your machine. Examine the files to see whats in them. If these files include other header files, be sure to track them down as well to examine their contents.

Fairly self-explanatory...

> **Exercise 12.2:** Define a macro `MIN` that gives the minimum of two values.

```objc
#define MIN(a,b) ( ((a) < (b)) > (a) : (b) )
```

> **Exercise 12.3:** Define a macro `MAX3` that gives the maximum of three values.

```objc
#define MAX3(x,y,z) (((x) > (y)) ? (x) : ((y) > (z)) ? (y) : (z))
```

> **Exercise 12.4:** Write a macro `IS_UPPER_CASE` that gives a nonzero value if a character is an uppercase letter.

```objc
#define IS_UPPER_CASE(x) ( ((x) >= 'A') && ((x) <= 'Z') )
```

> **Exercise 12.5:** Write a macro called `IS_ALPHABETIC` that gives a nonzero value if a character is an alphabetic character.

```objc
#define IS_ALPHABETIC(x) ( (IS_UPPER_CASE((x)) || IS_LOWER_CASE((x))) )
```

> **Exercise 12.6:** Write a macro `IS_DIGIT` that gives a nonzero value if a character is a digit `0` through `9`.

```objc
#define IS_UPPER_CASE(x) ( ((x) >= '0') && ((x) <= '9') )
```

> **Exercise 12.7:** Write a macro called `ABSOLUTE_VALUE` that computes the absolute value of its argument.

```objc
#define ABSOLUTE_VALUE(x) ( ((x) < 0) ? -(x) : (x))
```