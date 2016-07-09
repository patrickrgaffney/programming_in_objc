# Chapter 8: Inheritance

## 8.1 – It All Begins at the Root

- **Program 8.1:** `ClassAB.m`

### 8.1.1 – Finding the Right Method

No programs.

## 8.2 – Extension through Inheritance: Adding New Methods

- **Program 8.2A:** `Rectangle.h`
- **Program 8.2B:** `Rectangle.m`
- **Program 8.2C:** `main.m`
- **Program 8.3A:** `Square.h`
- **Program 8.3B:** `Square.m`
- **Program 8.3C:** `test_square.m`

### 8.2.1 – A Point Class and Object Allocation

No Programs.

### 8.2.2 – The `@class` Directive

- **Program 8.4A:** `Rectangle.m`
- **Program 8.4B:** `XYPoint.h`
- **Program 8.4C:** `XYPoint.m`
- **Program 8.4D:** `Rectangle.h`
- **Program 8.4E:** `main.m`

### 8.2.3 – Classes Owning Their Objects

- **Program 8.5:** `test_pointers.m`

## 8.3 – Overriding Methods

- **Program 8.6:** `ClassAB.m`

### 8.3.1 – Which Method Is Selected?

- **Program 8.7:** `ClassAB.m`

## 8.4 – Abstract Classes

No programs.

## Exercises

> **Exercise 8.1:** Add a new class called `ClassC`, which is a subclass of `ClassB`, to `ClassAB.m`. Make an `initVar` method that sets the value of its instance variable `x` to `300`. Write a test routine that declares `ClassA`, `ClassB`, and `ClassC` objects and invokes their corresponding `initVar` methods.

See `ex8-01.m`.

> **Exercise 8.2:** When dealing with higher-resolution devices, you might need to use a coordinate system that enables you to specify points as floating-point values instead of as simple integers. Modify the `XYPoint` and `Rectangle` classes from this chapter to deal with floating-point numbers. The rectangle's `width`, `height`, and `perimeter` should all work with floating-point numbers as well.

This is fairly self-explanatory — just change all the types to `double` and make a few different casts.

> **Exercise 8.3:** Modify `ClassAB.m` to add a new class `ClassB2` that, like `ClassB`, is a subclass of `ClassA`. What can you say about the relationship between `ClassB` and `ClassB2`?

`ClassB` and `ClassB2` are siblings — they both have the same *parent*.

> Identify the relationship between the `NSObject` class, `ClassA`, `ClassB`, and `ClassB2`.

```
       NSObject
           |
           |
        ClassA
           |
           |
   -----------------
   |               |
   |               |
ClassB          ClassB2
```

> What is the superclass of `ClassB`?

`ClassA`.

> What is the superclass of `ClassB2`?

`ClassA`.

> How many subclasses can a class have, and how many superclasses can it have?

A class can have 0 or more subclasses, and it can also have 0 or more superclasses.

> **Exercise 8.4:** Write a `Rectangle` method called `translate:` that takes an `XYPoint` object as its argument. Have it translate the rectangle's origin by the specified vector.

Here is the method, as would be in the `implementation` section of `Rectangle.m`:

```objc
- (void) translate: (XYPoint *) vector
{
    origin.x += vector.x;
    origin.y += vector.y;
}
```

> **Exercise 8.5:** Define a new class called `GraphicObject` and make it a subclass of `NSObject`. Define the following instance variables:
>
>     int fillColor;
>     BOOL filled;
>     int lineColor;
> 
> Write methods to set and retrieve the variables defined previously.
>
> Define new classes, `Circle` and `Triangle`, which are subclasses of `GraphicObject`. Write methods to set and retrieve the various parameters for these objects and also to calculate the circle's circumference and area, and the triangle's perimeter and area.

See `ex8-05/` folder.  The `main.m` file is full of tests for the above constraints.

> **Exercise 8.6:** Write a `Rectangle` method called `containsPoint:` that takes an `XYPoint` object as its argument. Have the method return a `BOOL` value `YES` is the rectangle encloses the specified point and `NO` if it does not.

```objc
- (BOOL) containsPoint: (XYPoint *) aPoint
{
    return (origin.x <= aPoint.x && origin.x + width >= aPoint.x && 
            origin.y <= aPoint.y && origin.y + height >= aPoint.y) ? YES : NO;
}
```

> **Exercise 8.7:** Write a `Rectangle` method called `intersect:` that takes a rectangle as an argument and returns a rectangle representing the overlapping area between the two rectangles. If the rectangles do not intersect, return one whose width and height are zero and whose origin is at `(0, 0)`.

The method is listed below, but is also implemented in the `ex8-07/` folder, along with the test case listed in the book.

Most of the `if` statements could be written using the `?:` conditional operator from C, but they are *far* more readable as logical branches.  Memory management is left for the calling function, since the returned `Rectangle` contains a pointer to the `XYPoint` that was allocated in this function.

```objc
- (Rectangle *) intersect: (Rectangle *) rect
{
    int xLeft, xRight, yBottom, yTop;
    
    if (origin.x > rect.origin.x) {
        xLeft = origin.x;
    }
    else xLeft = rect.origin.x;
    
    if (origin.x + width < rect.origin.x + rect.width) {
        xRight = origin.x + width;
    }
    else xRight = rect.origin.x + rect.width;
    
    if (origin.y > rect.origin.y) {
        yBottom = origin.y;
    }
    else yBottom = rect.origin.y;
    
    if (origin.y + height < rect.origin.y + rect.height) {
        yTop = origin.y + height;
    }
    else yTop = rect.origin.y + rect.height;
    
    Rectangle *r = [[Rectangle alloc] init];  
    XYPoint *p   = [[XYPoint alloc] init];  
    
    if (xLeft <= xRight && yBottom <= yTop) {
        r.width  = xRight - xLeft;
        r.height = yTop - yBottom;
        p.x = xLeft;
        p.y = yBottom;
    }  
    else {
        r.width  = 0;
        r.height = 0;
        p.x = 0;
        p.y = 0;
    }
    r.origin = p;  
    return r;
}
```

> **Exercise 8.8:** Write a method for the `Rectangle` class called `draw` that draws a rectangle using dashes and vertical bar characters.

```objc
- (void) draw
{
    for (int i = 0; i < width; i++) printf("-");
    printf("\n");
    for (int i = 0; i < height; i++) {
        printf("|");
        printf("%*c", width - 2, ' ');
        printf("|\n");
    }
    for (int i = 0; i < width; i++) printf("-");
    printf("\n");
}
```