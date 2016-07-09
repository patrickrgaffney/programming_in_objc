/* 
 * Rectangle.m
 * 
 * Created by PAT GAFFNEY on 07/09/2016.
 * Last modified on 07/09/2016.
 * 
 * Exercise 8.7
 *********ultrapatbeams*/

#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint *origin;
}

@synthesize width, height;

- (void) setWidth: (int) w andHeight: (int) h
{
    width  = w;
    height = h;
}

- (void) setOrigin: (XYPoint *) pt;
{
    origin = pt;
}

- (int) area
{
    return width * height;
}

- (int) perimeter
{
    return (width + height) * 2;
}

- (XYPoint *) origin
{
    return origin;
}

- (Rectangle *) intersect: (Rectangle *) rect
{
    int xLeft, xRight, yBottom, yTop;
    
    if (origin.x > rect.origin.x) {
        xLeft = origin.x;
    }
    else xLeft = rect.origin.x;
    
    if (origin.x + width < rect.origin.x + rect.width) {
        xRight = origin.x + width;
    }
    else xRight = rect.origin.x + rect.width;
    
    if (origin.y > rect.origin.y) {
        yBottom = origin.y;
    }
    else yBottom = rect.origin.y;
    
    if (origin.y + height < rect.origin.y + rect.height) {
        yTop = origin.y + height;
    }
    else yTop = rect.origin.y + rect.height;
    
    Rectangle *r = [[Rectangle alloc] init];  
    XYPoint *p   = [[XYPoint alloc] init];  
    
    if (xLeft <= xRight && yBottom <= yTop) {
        r.width  = xRight - xLeft;
        r.height = yTop - yBottom;
        p.x = xLeft;
        p.y = yBottom;
    }  
    else {
        r.width  = 0;
        r.height = 0;
        p.x = 0;
        p.y = 0;
    }
    r.origin = p;  
    return r;
}

- (void) draw
{
    for (int i = 0; i < width; i++) printf("-");
    printf("\n");
    for (int i = 0; i < height; i++) {
        printf("|");
        printf("%*c", width - 2, ' ');
        printf("|\n");
    }
    for (int i = 0; i < width; i++) printf("-");
    printf("\n");
}

@end