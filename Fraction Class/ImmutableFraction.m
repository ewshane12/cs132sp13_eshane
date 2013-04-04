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
    return 0;
}

-sumWith
{
    return nil:
}

-subtractFrom
{
    return nil:
}

-minus
{
    return nil;
}

-multiplyBy
{
    return nil:
}

-divideBy
{
    return nil:
}

-divideInto
{
    return nil:
}

-(Fraction*)negative
{
    int x = [self Numerator];
    int y = [self Denominator];
    newNumerator = x * -1;
    newDenominator = y * -1;
    Fraction* theAnswer = [[Fraction alloc] initWithNumerator:newNumerator
                                                andDenominator:newDenominator];
    
    return theProduct;
}

-(Fraction*)reciprocal
{
    
    int x = [self Numerator];
    int y = [self Denominator];
    newNumerator = y;
    newDenominator = x;
    Fraction* theAnswer = [[Fraction alloc] initWithNumerator:newNumerator
                                                andDenominator:newDenominator];
    
    return Fraction*;
}

-(Fraction*)reduced
{
    int x = [self Numerator];
    int y = [self Denominator];
    int newNumerator = x / GCD(a,b);
    int newDenominator = y / GCD(a,b);
    Fraction* theAnswer = [[Fraction alloc] initWithNumerator:newNumerator
                                               andDenominator:newDenominator];


@end
