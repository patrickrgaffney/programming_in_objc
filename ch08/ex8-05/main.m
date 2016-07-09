/* 
 * main.m
 * 
 * Created by PAT GAFFNEY on 07/09/2016.
 * Last modified on 07/09/2016.
 * 
 * Exercise 8.5
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>
#import "Circle.h"
#import "Triangle.h"

int main(int argc, char const **argv)
{
    @autoreleasepool {
        Circle *circle = [[Circle alloc] init];
        Triangle *tri  = [[Triangle alloc] init];
        
        [circle setRadius: 4.5];
        NSLog(@"The circle has a radius of %f", [circle radius]);
        NSLog(@"And circumference %f and area %f", [circle circumference], [circle area]);
        
        [tri setS1: 5 andS2: 4 andS3: 3];
        NSLog(@"The triangle is %f x %f x %f", [tri s1], [tri s2], [tri s3]);
        NSLog(@"And perimeter %f and area %f", [tri perimeter], [tri area]);
    }
    return 0;
}