/* 
 * Fraction.h
 * 
 * Created by PAT GAFFNEY on 07/01/2016.
 * Last modified on 07/01/2016.
 * 
 * Exercise 9.4
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

- (void)   print;
- (double) convertToNum;
- (void)   setTo: (int) n over: (int) d;
- (id)     add: (id) f;
- (void)   reduce;

@end