/* 
 * ex8-01.m
 * 
 * Created by PAT GAFFNEY on 07/09/2016.
 * Last modified on 07/09/2016.
 * 
 * pg. 156-157 in Programming in Objective-C 6e
 *********ultrapatbeams*/

#import <Foundation/Foundation.h>

@interface ClassA : NSObject
{
    int x;
}

- (void) initVar;
- (void) printVar;

@end

@implementation ClassA

- (void) initVar
{
    x = 100;
}

- (void) printVar
{
    NSLog(@"x = %i", x);
}

@end

// ClassB definition and declaration

@interface ClassB: ClassA

- (void) printVar;
- (void) initVar;

@end

@implementation ClassB

- (void) printVar
{
    NSLog(@"x = %i", x);
}

- (void) initVar
{
    x = 200;
}

@end

// ClassC definition and declaration

@interface ClassC: ClassB

- (void) printVar;
- (void) initVar;

@end

@implementation ClassC

- (void) printVar
{
    NSLog(@"x = %i", x);
}

- (void) initVar
{
    x = 300;
}

@end

int main(int argc, char const **argv)
{
    @autoreleasepool {
        ClassA *a = [[ClassA alloc] init];
        ClassB *b = [[ClassB alloc] init];
        ClassC *c = [[ClassC alloc] init];
        
        [a initVar];
        [a printVar];
        
        [b initVar];
        [b printVar];
        
        [c initVar];
        [c printVar];
    }
    return 0;
}