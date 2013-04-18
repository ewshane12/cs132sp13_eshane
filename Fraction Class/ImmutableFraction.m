//
//  ImmutableFraction.m
//  
//
//  Created by Eric Shane on 3/27/13.
//
//

#import "ImmutableFraction.h"

@implementation ImmutableFraction



-(id) init
{
    return 0;
}

-(id)description
{
    self = [self initWithNumerator:1
                    andDenominator:1 ] ;
    return self;
}

-(WCSFraction*)negative
{
    int x = [self Numerator];
    int y = [self Denominator];
    newNumerator = x * -1;
    WCSFraction* theAnswer = [[WCSFraction alloc] initWithNumerator:newNumerator
                                                     andDenominator:newDenominator];
    
    return theAnswer;
}

-(WCSFraction*)reciprocal
{
    
    int x = [self Numerator];
    int y = [self Denominator];
    newNumerator = y;
    newDenominator = x;
    WCSFraction* theAnswer = [[WCSFraction alloc] initWithNumerator:newNumerator
                                                andDenominator:newDenominator];
    
    return theAnswer;
}

-(WCSFraction*)reduced
{
    int x = [self Numerator];
    int y = [self Denominator];
    int newNumerator = x / GCD(a,b);
    int newDenominator = y / GCD(a,b);
    WCSFraction* theAnswer = [[WCSFraction alloc] initWithNumerator:newNumerator
                                               andDenominator:newDenominator];
}


(int) GCD
{
    
    return nil;
}

-(WCSFraction*)minus: (WCSFraction*) denom
{
    WCSFraction* theAnswer = [self subtractFrom: denom];
    
    return theAnswer;
}

-(WCSFraction*)subtractFrom (WCSFraction*) denom;
{
    return [self add: [denom negative]] ;
}

-(WCSFraction*)divideBy;
{
    return [self multiply:[denom reciprocal]];
}

-(WCSFraction*)divideInto;
{
    return [denom multiply:[self reciprocal]];
}

-(WCSFraction*)add: (WCSFraction*) denom
{
    int x = [self Numerator];
    int y = [self Denominator];
    int a = [denom Numerator];
    int b = [denom Denominator];
    
    int newNumerator = (x * b) + (y * a);
    int newDenominator = (y * b);
    
    WCSFraction* theAnswer = [[WCSFraction alloc] initWithNumerator:newNumerator
                                                     andDenominator:newDenominator];
    
    return theAnswer;
}

-(WCSFraction*)multiplyBy: (WCSFraction*) denom
{
    return nil;
}

@end
