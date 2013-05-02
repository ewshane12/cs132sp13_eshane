//
//  WCSMutableFraction.m
//  Fraction Development
//
//  Created by Eric Shane on 4/18/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import "WCSMutableFraction.h"
#import "WCSFraction.h"

@implementation WCSMutableFraction

@synthesize Numerator = _AOII_numerator;
@synthesize Denominator = _AOII_denominator;


-(void)setNumerator:(int)num
       andDenominator:(int)denom
{
    int GCD = gcd(num, denom);
    
    [self setNumerator: num/GCD] ;
    [self setDenominator:denom/GCD];
    
}

-(void)modifyByAdding: (WCSFraction*)sum
{
    WCSFraction* theAnswer = [self add: sum];
    
    [self setNumerator: [theAnswer Numerator]
        andDenominator: [theAnswer Denominator]];
}

-(void)modifyByMultiplying: (WCSFraction*)product
{
    WCSFraction* theAnswer = [self multiplyBy:product];
    
    [self setNumerator: [theAnswer Numerator]
        andDenominator: [theAnswer Denominator]];
}

-(void)modifyByInverting: (WCSFraction*)inverse
{
    WCSFraction* theAnswer = [self reciprocal];
    
    [self setNumerator: [theAnswer Numerator]
        andDenominator: [theAnswer Denominator]];
    
}

-(void)modifyByNegating: (WCSFraction*)negative
{
    WCSFraction* theAnswer = [self negative];
    
    [self setNumerator: [theAnswer Numerator]
        andDenominator: [theAnswer Denominator]];
}




@end
