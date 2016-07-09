#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, char const **argv)
{
    @autoreleasepool {
        Rectangle *r1 = [[Rectangle alloc] init];
        XYPoint *p1   = [[XYPoint alloc] init];
        Rectangle *r2 = [[Rectangle alloc] init];
        XYPoint *p2   = [[XYPoint alloc] init];
        Rectangle *results = [[Rectangle alloc] init];
        
        [p1 setX: 200 andY: 420];
        [r1 setWidth: 250 andHeight: 75];
        r1.origin = p1;
        
        NSLog(@"Rectangle 1: w = %i, h = %i", r1.width, r1.height);
        NSLog(@"Origin at (%i, %i)", r1.origin.x, r1.origin.y);
        
        [p2 setX: 400 andY: 300];
        [r2 setWidth: 100 andHeight: 180];
        r2.origin = p2;
        
        NSLog(@"Rectangle 2: w = %i, h = %i", r2.width, r2.height);
        NSLog(@"Origin at (%i, %i)", r2.origin.x, r2.origin.y);
        
        results = [r1 intersect: r2];
        
        NSLog(@"Resulting rectangle: w = %i, h = %i", results.width, results.height);
        NSLog(@"Origin at (%i, %i)", results.origin.x, results.origin.y);
    }
    return 0;
}