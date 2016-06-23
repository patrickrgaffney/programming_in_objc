/* 
 * ex2-02.m
 * 
 * Created by PAT GAFFNEY on 06/22/2016.
 * Last modified on 06/22/2016.
 * 
 * Write a program that displays the following text:
 *     In Objective-C, lowercase letters are significant.
 *     main is where program execution begins.
 *     Open and closed braces enclose program statements in a routine.
 *     All program statements must be terminated by a semicolon.
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>

int main(int argc, char const **argv)
{
    @autoreleasepool {
        NSLog(@"In Objective-C, lowercase letters are significant.");
        NSLog(@"main is where program execution begins.");
        NSLog(@"Open and closed braces enclose program statements in a routine.");
        NSLog(@"All program statements must be terminated by a semicolon.");
    }
    return 0;
}