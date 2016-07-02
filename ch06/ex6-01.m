/* 
 * ex6-01.m
 * 
 * Created by PAT GAFFNEY on 07/01/2016.
 * Last modified on 07/01/2016.
 * 
 * Write a program that asks the user to type in two integer values. 
 * Test these two number to determine whether the first is evenly 
 * divisible by the second and then display an appropriate message 
 * at the terminal.
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>

int main(int argc, char const **argv)
{
    @autoreleasepool {
        int i, j;
        
        NSLog(@"Enter two integer values:");
        scanf("%i %i", &i, &j);
        
        if (i % j == 0) {
            NSLog(@"%i is evenly divisible by %i.", i, j);
        }
        else NSLog(@"%i is not evenly divisible by %i.", i, j);
    }
    return 0;
}