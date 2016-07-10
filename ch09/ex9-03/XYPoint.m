/* 
 * XYPoint.m
 * 
 * Created by PAT GAFFNEY on 07/09/2016.
 * Last modified on 07/09/2016.
 * 
 * Exercise 9.3
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>
#import "XYPoint.h"

@implementation XYPoint

@synthesize x, y;

- (void) setX: (int) xVal andY: (int) yVal
{
    x = xVal;
    y = yVal;
}

- (void) print
{
    NSLog(@"(%i, %i)", x, y);
}

@end