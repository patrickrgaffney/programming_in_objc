/* 
 * Circle.m
 * 
 * Created by PAT GAFFNEY on 07/09/2016.
 * Last modified on 07/09/2016.
 * 
 * Exercise 8.5
 *********ultrapatbeams*/

#import "Circle.h"
#include "math.h"


@implementation Circle
{
    double radius;
}

- (void) setRadius: (double) r
{
    radius = r;
}

- (double) radius
{
    return radius;
}

- (double) area
{
    return M_PI * pow(radius, 2);
}

- (double) circumference
{
    return 2 * M_PI * radius;
}

@end