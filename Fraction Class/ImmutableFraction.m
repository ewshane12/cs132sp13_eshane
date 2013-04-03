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
    Fraction* theProduct = [[Fraction alloc] initWithNumerator:newNumerator
                                                andDenominator:newDenominator];
    
    return theProduct;
}

-(Fraction*)reciprocal
{
    
    
    
    return Fraction*;
}


(int) GCD
{
    return nil;
}




@end
