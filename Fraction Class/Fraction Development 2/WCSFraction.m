//
//  WCSFraction.m
//  Fraction Development
//
//  Created by Eric Shane on 4/18/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import "WCSFraction.h"

@implementation WCSFraction

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
    
    if([self Denominator] < 0)
    {
        int newNumerator = [self Numerator]*-1;
        int newDenominator = [self Denominator]*-1;
    }
    
    int x = [self Numerator];
    int y = [self Denominator];
    int newNumerator = x / GCD(a,b);
    int newDenominator = y / GCD(a,b);
    
    WCSFraction* theAnswer = [[WCSFraction alloc] initWithNumerator:newNumerator
                                                     andDenominator:newDenominator];
}


(int) GCD
{
    -(NSComparisonResult) compareToFraction:(WCSFraction*) otherFraction
    {
        //Common math trick:
        //   Do not compare two things directly :   a  vs b
        //   Do ompare their difference to zero :  a-b vs 0
        //   It is often easiest to determine whether
        //    a value is postive, negative, or zero
        
        int difference = [[self minus: otherFraction] numerator];
        
        if(difference > 0) return NSOrderedDescending; // self > other
        if(difference < 0) return NSOrderedAscending; // self < other
        if(difference == 0) return NSOrderedSame; //self == other
        
        return NSOrderedSame; //This line should never execute
        
    }
    
    - (BOOL)isEqual:(id)other
    {
        if (other == self)
            return YES; //That's ME!
        if (!other)
            return NO; //There's no "that" to compare to
        if(![other isKindOfClass:[WCSFraction class]])
            return NO; //Meh, it's not a fraction. Apples'n'oranges.
        
        return [self compareToFraction:other]==NSOrderedSame; //Comparing Fractions
    }
    
    -(NSUInteger) hash
    { //This has to do with how these could be stored in sets and dictionaries
        return MAX([self numerator], [self denominator]);
    } //Wait until CS222 (Data Structures) to ask about this one
    
    
    int gcd(int a, int b)
    { //Euclidean algorithm. It works!
        if(b==0) return a;
        else return gcd(b, a%b);
    }
    
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
