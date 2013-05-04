//
//  WCSFraction.m
//  Fraction Development
//
//  Created by Eric Shane on 4/18/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import "WCSFraction.h"


@implementation WCSFraction

@synthesize Numerator = _initializedNumerator;
@synthesize Denominator = _initializedDenominator;

-(id) init
{
    self = [self initWithNumerator:1 andDenominator:1];
    
    return self;
}

-(id) initWithNumerator:(int) num
         andDenominator:(int) denom
{
    
    int a = num;
    int b = denom;
    int newNumerator = a / gcd( a , b ) ;
    int newDenominator = b / gcd( a , b ) ;
    
    if (newDenominator<0)
    {
        newDenominator = newDenominator*-1;
        newNumerator = newNumerator*-1;
    }
    
    self = [super init];
    if (self) {
        _initializedNumerator = newNumerator;
        _initializedDenominator = newDenominator;
    }
    return self;
}


-(id) initWithFraction:FractionPointer
{
    WCSFraction* theFraction;
    theFraction = [[WCSFraction alloc] initWithNumerator:[FractionPointer Numerator] andDenominator:[FractionPointer Denominator]];
    return theFraction;
}

-(id)initWithInteger: (int) anInteger
{
    WCSFraction* aFraction;
    
    aFraction = [[WCSFraction alloc] initWithNumerator:anInteger andDenominator:1];
    
    return aFraction;
}


-(id)description
{

    if([self Denominator] == 1)
    {
        return [NSString stringWithFormat: @"%d" , [self Numerator]];
    }
    else
        
        if([self Denominator] == 0)
        {
            return [NSString stringWithFormat: @"ERROR" ];
        }
        else
            if ([self Denominator] == [self Numerator])
            {
                return [NSString stringWithFormat:@"%d", 1];
            }
        else
            if ([self Denominator] == 1)
            {
                return [NSString stringWithFormat:@"%d", [self Numerator]];
            }
            
            
            
        {
            return [NSString stringWithFormat: @"%d/%d" , [self Numerator] , [self Denominator]];
        }
    
}

-(WCSFraction*)negative
{
    int newNumerator;
    int newDenominator;
    
    int x = [self Numerator];
    int y = [self Denominator];
    newNumerator = x * -1;
    newDenominator = y;
    WCSFraction* theAnswer = [[WCSFraction alloc] initWithNumerator:newNumerator
                                                     andDenominator:y];
    
    return theAnswer;
}

-(WCSFraction*)reciprocal
{
    int newNumerator;
    int newDenominator;
    
    int x = [self Numerator];
    int y = [self Denominator];
    newNumerator = x;
    newDenominator = y;
    WCSFraction* theAnswer = [[WCSFraction alloc] initWithNumerator:newDenominator
                                                     andDenominator:newNumerator];
    
    return theAnswer;
}


-(NSComparisonResult) compareToFraction:(WCSFraction*) otherFraction
{
    //Common math trick:
    //   Do not compare two things directly :   a  vs b
    //   Do ompare their difference to zero :  a-b vs 0
    //   It is often easiest to determine whether
    //    a value is postive, negative, or zero
    
    int difference = [[self minus: otherFraction] Numerator];
    
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
    return MAX([self Numerator],
               [self Denominator]);
} //Wait until CS222 (Data Structures) to ask about this one



int gcd(int a, int b)
    { //Euclidean algorithm. It works!
        if(b==0) return a;
        else return gcd(b, a%b);
    }

-(float) floatValue
{
    return 0;
}

-(WCSFraction*)minus: (WCSFraction*) denom;
{
    WCSFraction* theAnswer = [denom subtractFrom: self];
    
    return theAnswer;
}

-(WCSFraction*)subtractFrom: (WCSFraction*) denom;
{
    return [self add:[denom negative]];
}

-(WCSFraction*)divideBy: (WCSFraction*) denom;
{
    return [self multiplyBy:[denom reciprocal]];
}

-(WCSFraction*)divideInto: (WCSFraction*) denom;
{
    return [denom multiplyBy:[self reciprocal]];
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

-(WCSFraction*)multiply:(WCSFraction*) denom
{
    int a =[self Numerator] ;
    int b = [self Denominator] ;
    int c = [denom Numerator] ;
    int d = [denom Denominator] ;
    
    int newNumerator = a*c;
    int newDenominator = b*d ;
    
    WCSFraction* theAnswer = [[WCSFraction alloc] initWithNumerator:newNumerator
                                                     andDenominator:newDenominator];
    
    return theAnswer ;
    
}

-(WCSFraction*)multiplyBy: (WCSFraction*) denom
{
    return [self multiply:denom];
}

- (id)copyWithZone:(NSZone *)zone
{
    WCSFraction* aFraction;
    aFraction = [[WCSFraction allocWithZone: zone]initWithFraction:self];
    
    return aFraction;
}


@end
