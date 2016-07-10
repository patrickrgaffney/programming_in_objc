/* 
 * main.m
 * 
 * Created by PAT GAFFNEY on 07/01/2016.
 * Last modified on 07/01/2016.
 * 
 * Exercise 9.4
 *********ultrapatbeams*/

#import "Fraction.h"
#import "Complex.h"
#import <Foundation/Foundation.h>

int main(int argc, char const **argv)
{
    @autoreleasepool {
        id dataValue1, dataValue2, result;
        
        dataValue1 = [[Fraction alloc] init];
        dataValue2 = [[Fraction alloc] init];
        [dataValue1 setTo: 2 over: 5];
        [dataValue2 setTo: 3 over: 4];
        result = [dataValue1 add: dataValue2];
        [result print];
    }
    return 0;
}