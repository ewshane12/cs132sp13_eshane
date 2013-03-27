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





@end
