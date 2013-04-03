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

-(void)initWithNumerator:andDenominator: (int num, int denom);
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


@end
