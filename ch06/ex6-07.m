/* 
 * ex6-07.m
 * 
 * Created by PAT GAFFNEY on 07/01/2016.
 * Last modified on 07/01/2016.
 * 
 * Modify primes.m to be much more efficient.
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>

int main(int argc, char const **argv)
{
    @autoreleasepool {
        int p, d;
        BOOL isPrime;
        
        for (p = 2; p <= 50; ++p) {
            // skip all even numbers > 2
            if (p % 2 == 0 && p > 2) continue;
            isPrime = YES;
            
            for (d = 2; d < p; ++d) {
                if (p % d == 0) isPrime = NO;
            }
            if (isPrime == YES) {
                NSLog(@"%i ", p);
            }
        }
    }
    return 0;
}