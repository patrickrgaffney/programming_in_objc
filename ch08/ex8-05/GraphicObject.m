/* 
 * GraphicObject.m
 * 
 * Created by PAT GAFFNEY on 07/09/2016.
 * Last modified on 07/09/2016.
 * 
 * Exercise 8.5
 *********ultrapatbeams*/

#import "GraphicObject.h"

@implementation GraphicObject
{
    int fillColor;
    BOOL filled;
    int lineColor;
}

- (void) setFillColor: (int) c
{
    fillColor = c;
}

- (void) setFilled: (BOOL) f
{
    filled = f;
}

- (void) setLineColor: (int) c
{
    lineColor = c;
}

- (int)  fillColor
{
    return fillColor;
}

- (BOOL) filled
{
    return filled;
}

- (int)  lineColor
{
    return lineColor;
}

@end