/* 
 * Square.m
 * 
 * Created by PAT GAFFNEY on 07/09/2016.
 * Last modified on 07/09/2016.
 * 
 * exercise 11.5
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>
#import "Rectangle.h"

@interface Square: NSObject
- (instancetype)initWithSide: (int)s;
- (void)setSide: (int)s;
- (int)side;
- (int)area;
- (int)perimeter;
@end

@implementation Square
{
    Rectangle *rect;
}

- (instancetype)initWithSide: (int)s
{
    self = [super init];
    if (self) {
        rect = [[Rectangle alloc] init];
        [rect setSide:s andHeight:s];
    }
    return self;
}

- (instancetype)init
{
    return [self initWithSide:0];
}

- (void) setSide: (int) s
{
    [self setWidth: s andHeight: s];
}

- (int) side
{
    return self.width;
}

- (int)area
{
    return [rect area];
}

- (int)perimeter
{
    return [rect perimeter];
}
@end

int main(int argc, char const **argv)
{
    @autoreleasepool {
        Square *s = [[Square alloc] initWithSide:4];
        NSLog(@"side of square: %i", [square side]);
        NSLog(@"area of square: %i", [square area]);
        NSLog(@"perimeter of square: %i", [square perimeter]);
    }
    return 0;
}