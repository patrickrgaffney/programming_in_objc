/* 
 * ex4-07.m
 * 
 * Created by PAT GAFFNEY on 06/30/2016.
 * Last modified on 06/30/2016.
 * 
 * Suppose you are developing a library of routines to manipulate 
 * graphical objects. Start by defining a new class called 
 * Rectangle. For now, just keep track of the rectangle's width and 
 * height. Develop methods to set the rectangle's width and height, 
 * retrieve these values, and calculate the rectangle's area and 
 * perimeter.
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>

@interface Rectangle: NSObject

- (void) setWidth: (int) w;
- (void) setHeight: (int) h;
- (int) width;
- (int) height;
- (int) area;
- (int) perimeter;

@end

@implementation Rectangle 
{
    int width;
    int height;
}

- (void) setWidth: (int) w
{
    width = w;
}

- (void) setHeight: (int) h
{
    height = h;
}

- (int) width
{
    return width;
}

- (int) height
{
    return height;
}

- (int) area
{
    return width * height;
}

- (int) perimeter
{
    return 2 * width + 2 * height;
}

@end

int main(int argc, char const **argv)
{
    @autoreleasepool {
        Rectangle *rect = [[Rectangle alloc] init];
        
        [rect setHeight: 4];
        [rect setWidth: 8];
        
        NSLog(@"This rectangle has a width of %i and a height of %i",
            [rect width], [rect height]);
        NSLog(@"The area of the rectangle is %i", [rect area]);
        NSLog(@"The perimeter of the rectangle is %i", [rect perimeter]);
    }
    return 0;
}