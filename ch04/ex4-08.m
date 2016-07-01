/* 
 * ex4-08.m
 * 
 * Created by PAT GAFFNEY on 06/30/2016.
 * Last modified on 06/30/2016.
 * 
 * The add:, subtract:, multiply:, and divide: methods from the 
 * Calculator class do not return a value. Modify these methods to 
 * return the value of the accumulator after the computation is 
 * performed. Test the new methods.
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

@end

@implementation Calculator
{
    double accumulator;
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
        NSLog(@"The result is %g", [deskCalc accumulator]);
    }
    return 0;
}