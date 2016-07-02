/* 
 * ex6-06.m
 * 
 * Created by PAT GAFFNEY on 07/01/2016.
 * Last modified on 07/01/2016.
 * 
 * Write a program that takes an integer keyed in from the terminal 
 * and extracts and displays each digit in English.
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>

int main(int argc, char const **argv)
{
    @autoreleasepool {
        int number, right_digit, new_num, i, count;
        
        NSLog(@"Enter your number: ");
        scanf("%i", &number);
        
        // determine the number of digits in number
        new_num = number;
        for (i = 0; number != 0; number /= 10) count++;
        
        // loop through each digit -> right-to-left
        while (count > 0) {
            number = new_num;
            
            // get to the correct digit
            for (i = 1; i < count; i++) {
                right_digit = number / 10;
                number = right_digit;
            }
            right_digit = number % 10;
            
            switch (right_digit) {
                case 0: NSLog(@"zero"); break;
                case 1: NSLog(@"one"); break;
                case 2: NSLog(@"two"); break;
                case 3: NSLog(@"three"); break;
                case 4: NSLog(@"four"); break;
                case 5: NSLog(@"five"); break;
                case 6: NSLog(@"six"); break;
                case 7: NSLog(@"seven"); break;
                case 8: NSLog(@"eight"); break;
                case 9: NSLog(@"nine"); break;
            }
            count--;
        }
    }
    return 0;
}