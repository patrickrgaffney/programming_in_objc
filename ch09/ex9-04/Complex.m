/* 
 * Complex.m
 * 
 * Created by PAT GAFFNEY on 07/09/2016.
 * Last modified on 07/09/2016.
 * 
 * Exercise 9.4
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>
#import "Complex.h"

@implementation Complex: NSObject

@synthesize real, imagine;

- (void) print
{
    NSLog(@" %g + %gi ", real, imagine);
}

- (void) setReal: (double) a andImagine: (double) b
{
    real    = a;
    imagine = b;
}

- (id) add: (id) f;
{
    id result = [[Complex alloc] init];
    [result setReal: real + [f real] andImagine: imagine + [f imagine]];
    return result;
}

@end