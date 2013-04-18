//
//  ImmutableFraction.h
//  
//
//  Created by Eric Shane on 3/27/13.
//
//

#import <Cocoa/Cocoa.h>

@interface ImmutableFraction : NSObject

@property (readonly, assign) Numerator;
@property (readonly, assign) Denominator;

-(id)initWithNumerator:(int num)
        andDenominator:(int denom);
-(void)initWithFraction: (WCSFraction*)denom;


-(void) floatValue: (float);
-(WCSFraction*)negative: (WCSFraction*)denom;
-(WCSFraction*)reciprocal: (WCSFraction*)denom;
-(WCSFraction*)sumWith: (WCSFraction*)denom;
-(WCSFraction*)subtractFrom: (WCSFraction*)denom;
-(WCSFraction*)minus: (WCSFraction*)denom;
-(WCSFraction*)multiplyBy: (WCSFraction*)denom;
-(WCSFraction*)divideBy: (WCSFraction*)denom;
-(WCSFraction*)divideInto: (WCSFraction*)denom;
-(WCSFraction*)reduced: (WCSFraction*)denom;
(int) GCD (int x, int y);


@end
