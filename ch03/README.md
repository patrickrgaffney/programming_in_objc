# Chapter 3: Classes, Objects, and Methods

## 3.1 – What Is an Object, Anyway?

No programs.

## 3.2 – Instances and Methods

No programs.

## 3.3 –An Objective-C Class for Working with Fractions

- **Program 3.1:** `fractions.m`
- **Program 3.2:** `myFraction.m`

## 3.4 – The `@interface` Section

No programs.

## 3.5 – The `@implementation` Section

No programs.

## 3.6 – The `program` Section

- **Program 3.3:** `myFraction2.m`

## 3.7 – Accessing Instance Variables and Data Encapsulation

- **Program 3.4:** `myFraction3.m`

## Exercises

> **Exercise 3.1:** Which of the following are invalid names? Why?

- `Int`: technically *valid*, but `int` is reserved, so not good practice
- `playNextSong`: *valid*
- `6_05`: *invalid*, names cannot begin with a number
- `_calloc`: *valid*, although `calloc` is a method, so not good practice
- `Xx`: *valid*
- `alphaBetaRoutine`: *valid*
- `clearScreen`: *valid*
- `_1312`: *valid*
- `z`: *valid*
- `ReInitialize`: *valid*
- `_`: *valid*
- `A$`: *invalid*, `$` is not a valid character for identifiers

> **Exercise 3.2:** Based on the example of the car in this chapter, think of an object you use everyday. Identify a class for that object and write five actions you do with that object.

Making this very simple: we could create a `Fridge` object with the following 5 methods:

1. `fillFridge`
2. `makeIce`
3. `lowerTemp`
4. `raiseTemp`
5. `getBeer`

> **Exercise 3.3:** Given the list in exercise 3.2, use the following syntax to rewrite your list in this format: `[instance method];`.

1. `[myFridge fillFridge]`
2. `[myFridge makeIce]`
3. `[myFridge lowerTemp]`
4. `[myFridge raiseTemp]`
5. `[myFridge getBeer]`

> **Exercise 3.4:** Imagine that you own a boat and a motorcycle in addition to a car. List the actions you perform with each of these. Do you have any overlap between these actions?

Examples of overlapping methods would be `washVehicle`, `fillWithGas`, `changeOil`, etc.  Each of these could be implemented in a *parent* class such as `Vehicle`.


> **Exercise 3.5:** Based on question 3.4, imagine you have a class called `Vehicle` and an object called `myVehicle` that could be either `Car`, `Motorcycle`, or `Boat`. Suppose that you write the following:
> 
> - `[myVehicle prep]`
> - `[myVehicle getGas]`
> - `[myVehicle service]`
>
> Do you see any advantages of being able to apply an action to an object that could be from one of several classes?

A parent class gives us the advantage that we would only have to write the above methods once — just for the parent class, `Vehicle`.  Then, each subclass `Car`, `Boat`, or `Motorcycle` would not have to implement methods for these actions, as they are already implemented in the parent class — similiar to how the `init` method is implemented in `NSObject`.

> **Exercise 3.6:** In a procedural language such as C, you think about actions and then write code to perform the action on various objects. Referring to the car example, you might write a procedure in C to wash a vehicle and then inside that procedure write code to handle washing a car, washing a boat, washing a motorcycle, and so on. If you took that approach and then wanted to add a new vehicle type (see the previous exercise), do you see advantages or disadvantages to using this procedural approach over an object-oriented approach?

The great disadvantage is that you would have to reimplement the `wash` method for each new vehicle type you added.  Whereas in an object-oriented language (like Objective-C), we can implement a `Vehicle` parent class, implement the *shared* methods in that class, and then have all the vehicle's become a subclass of `Vehicle`.

> **Exercise 3.7:** Define a class called `XYPoint` that will hold a Cartesian coordinate `(x, y)`, where `x` and `y` are integers. Define methods to individually set the `x` and `y` coordinates of a point and retrieve their values. Write an objective-C program to implement your new class and test it.

See `ex3-07.m`.