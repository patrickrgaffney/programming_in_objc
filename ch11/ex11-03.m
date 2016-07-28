/* 
 * Fraction.m
 * 
 * Created by PAT GAFFNEY on 07/28/2016.
 * Last modified on 07/28/2016.
 * 
 * exercise 11-03
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator, denominator;
- (void)print;
- (double)convertToNum;
- (void)setTo: (int)n over: (int)d;
- (void)reduce;
@end

@interface Fraction (NSComparisonMethods)
- (BOOL)isEqualTo: (id)object;
- (BOOL)isLessThanOrEqualTo: (id)object;
- (BOOL)isLessThan: (id)object;
- (BOOL)isGreaterThanOrEqual: (id)object;
- (BOOL)isGreaterThan: (id)object;
- (BOOL)isNotEqual: (id)object;
@end

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

@implementation Fraction (NSComparisonMethods)
- (BOOL)isEqualTo: (id)object
{
    if (self.denominator != 0 && [object denominator] != 0)
    {
        double d1 = (double) self.numerator / self.denominator;
        double d2 = (double) [object numerator] / [object denominator];
        return d1 == d2;
    }
    else return NAN;
}

- (BOOL)isLessThanOrEqualTo: (id)object
{
    if (self.denominator != 0 && [object denominator] != 0)
    {
        double d1 = (double) self.numerator / self.denominator;
        double d2 = (double) [object numerator] / [object denominator];
        return d1 <= d2;
    }
    else return NAN;
}

- (BOOL)isLessThan: (id)object
{
    if (self.denominator != 0 && [object denominator] != 0)
    {
        double d1 = (double) self.numerator / self.denominator;
        double d2 = (double) [object numerator] / [object denominator];
        return d1 < d2;
    }
    else return NAN;
}

- (BOOL)isGreaterThanOrEqual: (id)object
{
    if (self.denominator != 0 && [object denominator] != 0)
    {
        double d1 = (double) self.numerator / self.denominator;
        double d2 = (double) [object numerator] / [object denominator];
        return d1 >= d2;
    }
    else return NAN;
}

- (BOOL)isGreaterThan: (id)object
{
    if (self.denominator != 0 && [object denominator] != 0)
    {
        double d1 = (double) self.numerator / self.denominator;
        double d2 = (double) [object numerator] / [object denominator];
        return d1 > d2;
    }
    else return NAN;
}
- (BOOL)isNotEqual: (id)object
{
    if (self.denominator != 0 && [object denominator] != 0)
    {
        double d1 = (double) self.numerator / self.denominator;
        double d2 = (double) [object numerator] / [object denominator];
        return d1 != d2;
    }
    else return NAN;
}