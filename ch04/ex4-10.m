/* 
 * ex4-08.m
 * 
 * Created by PAT GAFFNEY on 06/30/2016.
 * Last modified on 06/30/2016.
 * 
 * Add a memory capability to the Calculator class.
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>

@interface Calculator: NSObject

// accumulator methods
- (void) setAccumulator: (double) value;
- (void) clear;
- (double) accumulator;

// arithmetic methods
- (double) add: (double) value;
- (double) subtract: (double) value;
- (double) multiply: (double) value;
- (double) divide: (double) value;
- (double) changeSign;
- (double) reciprocal;
- (double) xSquared;

// memory methods
- (double) memoryClear;
- (double) memoryStore;
- (double) memoryRecall;
- (double) memoryAdd: (double) value;
- (double) memorySubtract: (double) value;

@end

@implementation Calculator
{
    double accumulator;
    double memory;
}

- (void) setAccumulator: (double) value
{
    accumulator = value;
}

- (void) clear
{
    accumulator = 0;
}

- (double) accumulator
{
    return accumulator;
}

- (double) add: (double) value
{
    accumulator += value;
    return accumulator;
}

- (double) subtract: (double) value
{
    accumulator -= value;
    return accumulator;
}

- (double) multiply: (double) value
{
    accumulator *= value;
    return accumulator;
}

- (double) divide: (double) value
{
    accumulator /= value;
    return accumulator;
}

- (double) changeSign
{
    accumulator = -accumulator;
    return accumulator;
}

- (double) reciprocal
{
    accumulator = 1 / accumulator;
    return accumulator;
}

- (double) xSquared
{
    accumulator *= accumulator;
    return accumulator;
}

- (double) memoryClear
{
    memory = 0;
    return accumulator;
}

- (double) memoryStore
{
    memory = accumulator;
    return accumulator;
}

- (double) memoryRecall
{
    accumulator = memory;
    return accumulator;
}

- (double) memoryAdd: (double) value
{
    memory += value;
    accumulator = memory;
    return accumulator;
}

- (double) memorySubtract: (double) value
{
    memory -= value;
    accumulator = memory;
    return accumulator;
}

@end

int main(int argc, char const **argv)
{
    @autoreleasepool {
        Calculator *deskCalc = [[Calculator alloc] init];
        
        [deskCalc setAccumulator: 100.0];
        NSLog(@"Add 200.0 to %g = %g", [deskCalc accumulator], [deskCalc add: 200.0]);
        NSLog(@"Divide 15.0 by %g = %g", [deskCalc accumulator], [deskCalc divide: 15.0]);
        NSLog(@"Subtract 10.0 from %g = %g", [deskCalc accumulator], [deskCalc subtract: 10.0]);
        NSLog(@"Multiply 5.0 to %g = %g", [deskCalc accumulator], [deskCalc multiply: 5]);
        NSLog(@"Change sign of %g = %g", [deskCalc accumulator], [deskCalc changeSign]);
        NSLog(@"Take reciprocal of %g = %g", [deskCalc accumulator], [deskCalc reciprocal]);
        NSLog(@"Square of %g = %g", [deskCalc accumulator], [deskCalc xSquared]);
        NSLog(@"Clearing memory = %g", [deskCalc memoryClear]);
        NSLog(@"Storing %g in memory = %g", [deskCalc accumulator], [deskCalc memoryClear]);
        NSLog(@"Recalling memory = %g", [deskCalc memoryRecall]);
        NSLog(@"Add 20 to memory = %g", [deskCalc memoryAdd: 20]);
        NSLog(@"Subtract 11 from memory = %g", [deskCalc memorySubtract: 11]);
        NSLog(@"The result is %g", [deskCalc accumulator]);
    }
    return 0;
}