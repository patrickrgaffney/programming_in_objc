/* 
 * id.m
 * 
 * Created by PAT GAFFNEY on 07/09/2016.
 * Last modified on 07/09/2016.
 * 
 * Exercise 9.3
 *********ultrapatbeams*/

#import "XYPoint.h"

int main(int argc, char const **argv)
{
    @autoreleasepool {
        id dataValue;
        XYPoint *pt = [[XYPoint alloc] init];
        
        [pt setX: 4 andY: 7];
        
        dataValue = pt;
        [dataValue print];
    }
    return 0;
}