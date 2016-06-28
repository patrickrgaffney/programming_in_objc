/* 
 * ex3-07.m
 * 
 * Created by PAT GAFFNEY on 06/28/2016.
 * Last modified on 06/28/2016.
 * 
 * Exercise 3.07: Define a class called `XYPoint` that will hold a 
 * Cartesian coordinate (x, y), where `x` and `y` are integers. 
 * Define methods to individually set the `x` and `y` coordinates 
 * of a point and retrieve their values. Write the class and test it.
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>

//---- @interface section ----

@interface XYPoint: NSObject

- (void) print;
- (void) setX: (int) i;
- (void) setY: (int) i;

@end

//---- @implementation section ----

@implementation XYPoint
{
    int x;
    int y;
}

- (void)print
{
    NSLog(@"(%i, %i)", x, y);
}

- (void)setX: (int) i
{
    x = i;
}

- (void)setY: (int) i
{
    y = i;
}

@end

//---- program section ----

int main(int argc, char const **argv)
{
    @autoreleasepool {
        XYPoint *coordinate = [[XYPoint alloc] init];
        
        // Set coordinate to (1, 4)
        [coordinate setX: 1];
        [coordinate setY: 4];
        
        // Display the fraction using the print method
        NSLog(@"The value of the coordinate is:");
        [coordinate print];
    }
    return 0;
}