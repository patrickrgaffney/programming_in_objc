/* 
 * Complex.h
 * 
 * Created by PAT GAFFNEY on 07/09/2016.
 * Last modified on 07/09/2016.
 * 
 * Exercise 9.4
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>

@interface Complex: NSObject

@property double real, imagine;

- (void) print;
- (void) setReal: (double) a andImagine: (double) b;
- (id)   add: (id) f;

@end