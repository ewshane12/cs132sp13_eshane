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

-(void)initWithNumerator:andDenominator: (int num, int denom);
initWithFraction: (Fraction*);
-(void)negative: (Fraction*);
-(void)reciprocal: (Fraction*);
-(void)sumWith: (Fraction*);
-(void)subtractFrom: (Fraction*);
-(void)minus: (Fraction*);
-(void)multiplyBy: (Fraction*);
-(void)divideBy: (Fraction*);
-(void)divideInto: (Fraction*);
-(void) floatValue: (float);


@end
