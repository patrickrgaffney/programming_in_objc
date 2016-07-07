/* 
 * ex7-06/Complex.m
 * 
 * Created by PAT GAFFNEY on 06/30/2016.
 * Last modified on 06/30/2016.
 * 
 * Class to handle complex numbers.
 *********ultrapatbeams*/

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

- (void) print
{
    NSLog(@"%f + %fi", real, imaginary);
}

- (Complex *) add: (Complex *) complexNum
{
    Complex *result = [[Complex alloc] init];
    
    // (a + bi) + (c + di) = (a+c) + (b+d)i
    result.real = real + complexNum.real;
    result.imaginary = imaginary + complexNum.imaginary;
    return result;
}

@end