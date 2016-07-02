/* 
 * ex5-02.m
 * 
 * Created by PAT GAFFNEY on 07/01/2016.
 * Last modified on 07/01/2016.
 * 
 * Write a program that generates a table of triangular numbers using
 * the previous formula. Have the program generate every fifth 
 * triangular number between 5 and 50 (i.e: 5, 10, 15, ... , 50).
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>

int main(int argc, char const **argv)
{
    @autoreleasepool {
        int n, triangularNumber = 0;
        
        for (n = 5; n <= 50; n = n + 5) {
            triangularNumber = n * (n + 1) / 2;
            NSLog(@"%2i     %4i", n, triangularNumber);
        }
    }
    return 0;
}