//
//  WCSFraction.h
//  Fraction Development
//
//  Created by Eric Shane on 4/18/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WCSFraction : NSObject

@property (readwrite, assign) int Numerator;
@property (readwrite, assign) int Denominator;

-(id)initWithNumerator:(int) num
        andDenominator:(int) denom;
-(id)initWithFraction: (id) denom;
-(id)initWithInteger: (int) anInteger;


-(float) floatValue;
-(WCSFraction*)negative;
-(WCSFraction*)reciprocal;
-(WCSFraction*)subtractFrom: (WCSFraction*)denom;
-(WCSFraction*)minus: (WCSFraction*) denom;
-(WCSFraction*)multiplyBy: (WCSFraction*)denom;
-(WCSFraction*)divideBy: (WCSFraction*)denom;
-(WCSFraction*)divideInto: (WCSFraction*)denom;
-(WCSFraction*)reduced;
-(WCSFraction*)add: (WCSFraction*) denom;
-(WCSFraction*)multiply:(WCSFraction*) denom;

int gcd (int x, int y);

@end
