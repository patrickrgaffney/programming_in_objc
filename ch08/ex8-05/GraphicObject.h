/* 
 * GraphicObject.h
 * 
 * Created by PAT GAFFNEY on 07/09/2016.
 * Last modified on 07/09/2016.
 * 
 * Exercise 8.5
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>

@interface GraphicObject: NSObject

- (void) setFillColor: (int) c;
- (void) setFilled: (BOOL) f;
- (void) setLineColor: (int) c;
- (int)  fillColor;
- (BOOL) filled;
- (int)  lineColor;

@end