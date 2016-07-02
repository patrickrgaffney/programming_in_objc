/* 
 * ex5-08.m
 * 
 * Created by PAT GAFFNEY on 07/01/2016.
 * Last modified on 07/01/2016.
 * 
 * Write a program that calculates the sum of the digits of an 
 * integer.  The program should accept any arbitrary integer 
 * the user types.
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>

int main(int argc, char const **argv)
{
    @autoreleasepool {
        int n, number, right_digit, sum = 0;
        
        NSLog(@"Enter your number: ");
        scanf("%i", &number);
        
        n = number;
        while (number != 0) {
            right_digit = number % 10;
            sum += right_digit;
            number /= 10;
        }
        
        NSLog(@"The sum of %i's digits is %i", n, sum);
    }
    return 0;
}