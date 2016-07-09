/* 
 * Rectangle.h
 * 
 * Created by PAT GAFFNEY on 07/09/2016.
 * Last modified on 07/09/2016.
 * 
 * Exercise 8.7
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle: NSObject

@property int width, height;

- (XYPoint *) origin;
- (void) setOrigin: (XYPoint *) pt;
- (int) area;
- (int) perimeter;
- (void) setWidth: (int) w andHeight: (int) h;
- (Rectangle *) intersect: (Rectangle *) rect;
- (void) draw;

@end