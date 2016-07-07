/* 
 * ex7-06/Complex.h
 * 
 * Created by PAT GAFFNEY on 06/30/2016.
 * Last modified on 06/30/2016.
 * 
 * Class to handle complex numbers.
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>

@interface Complex: NSObject

@property double real, imaginary;

- (void) print;
- (Complex *) add: (Complex *) complexNum;

@end