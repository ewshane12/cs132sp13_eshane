//
//  ImmutableFraction.h
//  
//
//  Created by Eric Shane on 3/27/13.
//
//

#import <Cocoa/Cocoa.h>

@interface ImmutableFraction : NSObject

@property (readonly) Numerator;
@property (readonly) Denominator;

-(id)initWithNumerator:(int num)
          andDenominator:(int denom);
initWithFraction: (Fraction*);


-(void) floatValue: (float);
-(Fraction*)negative: (Fraction*);
-(Fraction*)reciprocal: (Fraction*);
-(Fraction*)sumWith: (Fraction*);
-(Fraction*)subtractFrom: (Fraction*);
-(Fraction*)minus: (Fraction*);
-(Fraction*)multiplyBy: (Fraction*);
-(Fraction*)divideBy: (Fraction*);
-(Fraction*)divideInto: (Fraction*);
(int) GCD (int x, int y);


@end
