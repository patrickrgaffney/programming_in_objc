/* 
 * Triangle.m
 * 
 * Created by PAT GAFFNEY on 07/09/2016.
 * Last modified on 07/09/2016.
 * 
 * Exercise 8.5
 *********ultrapatbeams*/

#import "Triangle.h"
#include "math.h"

@implementation Triangle
{
    double a, b, c;
}

- (void) setS1: (double) s1 andS2: (double) s2 andS3: (double) s3
{
    a = s1;
    b = s2;
    c = s3;
}

- (double) area
{
    double semi = (a + b + c) / 2;
    double square = semi * ((semi - a) * (semi - b) * (semi - c));
    return sqrt(square);
}

- (double) perimeter
{
    return a + b + c;
}

- (double) s1
{
    return a;
}

- (double) s2
{
    return b;
}

- (double) s3
{
    return c;
}

@end