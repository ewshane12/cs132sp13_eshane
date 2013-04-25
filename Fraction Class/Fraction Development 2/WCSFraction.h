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


-(float) floatValue;
-(WCSFraction*)negative: (WCSFraction*)denom;
-(WCSFraction*)reciprocal: (WCSFraction*)denom;
-(WCSFraction*)subtractFrom: (WCSFraction*)denom;
-(WCSFraction*)minus: (WCSFraction*)denom;
-(WCSFraction*)multiplyBy: (WCSFraction*)denom;
-(WCSFraction*)divideBy: (WCSFraction*)denom;
-(WCSFraction*)divideInto: (WCSFraction*)denom;
-(WCSFraction*)reduced: (WCSFraction*)denom;
-(WCSFraction*)add: (WCSFraction*) denom;

int gcd (int x, int y);

@end
