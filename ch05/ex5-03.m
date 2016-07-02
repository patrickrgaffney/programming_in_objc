/* 
 * ex5-03.m
 * 
 * Created by PAT GAFFNEY on 07/01/2016.
 * Last modified on 07/01/2016.
 * 
 * Write a program to generate and print a table of the first 
 * 10 factorials
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>

int main(int argc, char const **argv)
{
    @autoreleasepool {
        int factorial, i;
        
        for (i = 1, factorial = 1; i < 11; i++) {
            factorial *= i;
            NSLog(@"%2i    %7i", i, factorial);
        }
    }
    return 0;
}