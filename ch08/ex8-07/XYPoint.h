/* 
 * XYPoint.h
 * 
 * Created by PAT GAFFNEY on 07/09/2016.
 * Last modified on 07/09/2016.
 * 
 * Exercise 8.7
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>

@interface XYPoint: NSObject

@property int x, y;

- (void) setX: (int) xVal andY: (int) yVal;

@end