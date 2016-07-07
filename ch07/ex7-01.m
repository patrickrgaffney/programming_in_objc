/* 
 * ex7-01.h
 * 
 * Created by PAT GAFFNEY on 07/06/2016.
 * Last modified on 07/06/2016.
 * 
 * Updated version of the Fraction class.
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

- (void) print;
- (double) convertToNum;
- (void) setTo: (int) n over: (int) d;
- (void) reduce;
- (Fraction *) add: (Fraction *) f;
- (Fraction *) subtract: (Fraction *) f;
- (Fraction *) multiply: (Fraction *) f;
- (Fraction *) divide: (Fraction *) f;

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

- (Fraction *) add: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    
    // a/b + c/d = ((a*d) + (b*c)) / (b*d)
    result.numerator   = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}

- (Fraction *) subtract: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    
    // a/b - c/d = ((a*d) - (b*c)) / (b*d)
    result.numerator   = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}

- (Fraction *) multiply: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    
    // a/b * c/d = (a * c) / (b * d)
    result.numerator   = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}

- (Fraction *) divide: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    
    // a/b * c/d = (a * d) / (b * c)
    result.numerator   = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
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

int main(int argc, char const **argv)
{
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        Fraction *result;
        
        // Addition
        [aFraction setTo: 1 over: 4];
        [bFraction setTo: 1 over: 2];
        
        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"=");
        result = [aFraction add: bFraction];
        [result print];
        NSLog(@"\n");
        
        // Subtraction
        [aFraction setTo: 1 over: 2];
        [bFraction setTo: 1 over: 5];

        [aFraction print];
        NSLog(@"-");
        [bFraction print];
        NSLog(@"=");
        result = [aFraction subtract: bFraction];
        [result print];
        NSLog(@"\n");

        // Multiplication
        [aFraction setTo: 1 over: 2];
        [bFraction setTo: 2 over: 3];

        [aFraction print];
        NSLog(@"*");
        [bFraction print];
        NSLog(@"=");
        result = [aFraction multiply: bFraction];
        [result print];
        NSLog(@"\n");

        // Division
        [aFraction setTo: 1 over: 2];
        [bFraction setTo: 1 over: 3];

        [aFraction print];
        NSLog(@"/");
        [bFraction print];
        NSLog(@"=");
        result = [aFraction divide: bFraction];
        [result print];
    }
    return 0;
}