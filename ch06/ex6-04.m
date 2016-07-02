/* 
 * ex6-04.m
 * 
 * Created by PAT GAFFNEY on 07/01/2016.
 * Last modified on 07/01/2016.
 * 
 * Write a program that acts as a simple printing calculator.
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>

@interface Calculator: NSObject

// accumulator methods
- (void) setAccumulator: (double) value;
- (void) clear;
- (double) accumulator;

// arithmetic methods
- (void) add: (double) value;
- (void) subtract: (double) value;
- (void) multiply: (double) value;
- (void) divide: (double) value;

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

- (void) add: (double) value
{
    accumulator += value;
}

- (void) subtract: (double) value
{
    accumulator -= value;
}

- (void) multiply: (double) value
{
    accumulator *= value;
}

- (void) divide: (double) value
{
    accumulator /= value;
}

@end

int main(int argc, char const **argv)
{
    @autoreleasepool {
        Calculator *deskCalc = [[Calculator alloc] init];
        double value;
        char operator;
        BOOL continueExecution = true;
        
        NSLog(@"Begin Calculations.");
        
        while (continueExecution) {
            scanf("%lf %c", &value, &operator);
            
            switch (operator) {
                case '+':
                    [deskCalc add: value];
                    break;
                case '-':
                    [deskCalc subtract: value];
                    break;
                case '*':
                    [deskCalc multiply: value];
                    break;
                case '/':
                    [deskCalc divide: value];
                    break;
                case 'S':
                    [deskCalc setAccumulator: value];
                    break;
                case 'E':
                    continueExecution = false;
                    break;
                default: 
                    NSLog(@"Unknown operator.");
                    break;
            }
            NSLog(@"= %lf", [deskCalc accumulator]);
        }
        NSLog(@"End of Calculations.");
    }
    return 0;
}