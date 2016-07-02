/* 
 * ex6-05.m
 * 
 * Created by PAT GAFFNEY on 07/01/2016.
 * Last modified on 07/01/2016.
 * 
 * Fix the reverse.m program to correctly handle negative numbers.
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>

int main(int argc, char const **argv)
{
    @autoreleasepool {
        int number, right_digit;
        BOOL negative = false;
        
        NSLog(@"Enter your number: ");
        scanf("%i", &number);
        
        while (number != 0) {
            right_digit = number % 10;
            if (right_digit < 0) {
                negative = true;
                printf("%i", right_digit * -1);
            }
            else printf("%i", right_digit);
            number /= 10;
        }
        
        if (negative) printf("-");
        
        printf("\n");
    }
    return 0;
}