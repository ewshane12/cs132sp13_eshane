//
//  ImmutableFraction.h
//  
//
//  Created by Eric Shane on 2/25/13.
//
//

#import <Cocoa/Cocoa.h>

@interface ImmutableFraction : NSObject
@property int numerator
@property int denomenator

-initWithNumerator:andDenominator: (int num, int denom);
initWithFraction: (Fraction*);
-negative(Fraction*);
-reciprocal(Fraction*);

-(void) floatValue (float)


@end
