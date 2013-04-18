//
//  WCSFraction.h
//  Fraction Development
//
//  Created by Eric Shane on 4/18/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WCSFraction : NSObject

@property (readonly, assign) Numerator;
@property (readonly, assign) Denominator;

-(id)initWithNumerator:(int num);
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
-(int) GCD (int x, int y);

@end
