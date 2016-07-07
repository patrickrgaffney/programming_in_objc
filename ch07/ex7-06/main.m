/* 
 * ex7-06/main.m
 * 
 * Created by PAT GAFFNEY on 07/06/2016.
 * Last modified on 07/06/2016.
 * 
 * Class to handle complex numbers.
 *********ultrapatbeams*/

#import "Complex.h"

int main(int argc, char const **argv)
{
    @autoreleasepool {
        Complex *n1 = [[Complex alloc] init];
        Complex *n2 = [[Complex alloc] init];
        Complex *result;
        
        [n1 setReal: 101.00];
        [n1 setImaginary: 45.00];
        [n1 print];
        NSLog(@"+");
        [n2 setReal: 50.00];
        [n2 setImaginary: 33.00];
        [n2 print];
        NSLog(@"=");
        result = [n1 add: n2];
        [result print];
    }
    return 0;
}