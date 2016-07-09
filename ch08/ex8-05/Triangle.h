/* 
 * Triangle.h
 * 
 * Created by PAT GAFFNEY on 07/09/2016.
 * Last modified on 07/09/2016.
 * 
 * Exercise 8.5
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>
#import "GraphicObject.h"

@interface Triangle: GraphicObject

- (void) setS1: (double) s1 andS2: (double) s2 andS3: (double) s3;
- (double) area;
- (double) perimeter;
- (double) s1;
- (double) s2;
- (double) s3;

@end