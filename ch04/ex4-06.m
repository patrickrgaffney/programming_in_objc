/* 
 * ex4-06.m
 * 
 * Created by PAT GAFFNEY on 06/30/2016.
 * Last modified on 06/30/2016.
 * 
 * Write an Objective-C program that defines a new class called 
 * Complex. Following the paradigm established for the Fraction 
 * class, define the following methods for your new class and 
 * write a test program to test your new class and methods.
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>

@interface Complex: NSObject

- (void) setReal: (double) a;
- (void) setImaginary: (double) b;
- (void) print;
- (double) real;
- (double) imaginary;

@end

@implementation Complex 
{
    double real;
    double imaginary;
}

- (void) setReal: (double) a
{
    real = a;
}

- (void) setImaginary: (double) b
{
    imaginary = b;
}

- (void) print
{
    NSLog(@"%f + %fi", real, imaginary);
}

- (double) real
{
    return real;
}

- (double) imaginary
{
    return imaginary;
}

@end

int main(int argc, char const **argv)
{
    @autoreleasepool {
        Complex *number = [[Complex alloc] init];
        
        [number setReal: 101.00];
        [number setImaginary: 45.00];
        [number print];
    }
    return 0;
}