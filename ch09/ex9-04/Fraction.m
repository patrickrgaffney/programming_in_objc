/* 
 * Fraction.m
 * 
 * Created by PAT GAFFNEY on 07/01/2016.
 * Last modified on 07/01/2016.
 * 
 * Exercise 9.4
 *********ultrapatbeams*/

#import "Fraction.h"

@implementation Fraction 

@synthesize numerator, denominator;

- (void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

- (double) convertToNum
{
    if (denominator != 0) {
        return (double) numerator / denominator;
    }
    else return NAN;
}

- (void) setTo: (int) n over: (int) d
{
    numerator   = n;
    denominator = d;
}

- (id) add: (id) f;
{
    id result = [[Fraction alloc] init];
    
    // a/b + c/d = ((a*d) + (b*c)) / (b*d)
    [result setTo: numerator * [f denominator] + denominator * [f numerator] over: denominator * [f denominator]];
    [result reduce];
    return result;
}

- (void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
}

@end