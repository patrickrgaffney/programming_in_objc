/* 
 * Comparison.m
 * 
 * Created by PAT GAFFNEY on 07/28/2016.
 * Last modified on 07/28/2016.
 * 
 * exercise 11-02.
 *********ultrapatbeams*/

#import "Fraction+MathOps.h"

@interface Fraction (Comparison)
- (BOOL)isEqualTo: (Fraction *)f;
- (int)compare: (Fraction *)f;
@end

@implementation Fraction (Comparison)
- (BOOL)isEqualTo: (Fraction *)f
{
    [self reduce];
    [f reduce];
    Fraction *result = [self subtract: f];
    if (result.numerator == 0) return YES;
    else return NO;
}

- (int)compare: (Fraction *)f
{
    double d1 = self.numerator / self.denominator;
    double d2 = f.numerator / f.denominator;
    return d1 - d2;
}
@end