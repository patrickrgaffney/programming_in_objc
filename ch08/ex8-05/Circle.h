/* 
 * Circle.h
 * 
 * Created by PAT GAFFNEY on 07/09/2016.
 * Last modified on 07/09/2016.
 * 
 * Exercise 8.5
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>
#import "GraphicObject.h"

@interface Circle: GraphicObject

- (void) setRadius: (double) r;
- (double) radius;
- (double) area;
- (double) circumference;

@end