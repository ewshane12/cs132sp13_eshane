//
//  main.m
//  Fraction Development
//
//  Created by Bryant Adams on 3/19/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "WCSFraction.h"
#import "WCSMutableFraction.h"

int main(int argc, char *argv[])
{
    WCSFraction* oneThird;
    WCSFraction* oneHalf;
    WCSFraction* oneEigth;
    WCSFraction* two;
    WCSFraction* theMutant;
    WCSFraction* theResult;
    
    oneThird = [[WCSFraction alloc] initWithNumerator:1 andDenominator:3];
    oneHalf = [[WCSFraction alloc] initWithNumerator:1 andDenominator:2];
    oneEigth = [[WCSFraction alloc] initWithNumerator:1 andDenominator:8];
    two = [[WCSFraction alloc] initWithNumerator:2 andDenominator:1];
    theMutant = [[WCSFraction alloc] initWithNumerator:5 andDenominator:8];
    
    theResult = [oneThird minus:oneHalf];
    NSLog(@"%@",theResult);
    
    theResult = [[theMutant minus:oneEigth]multiplyBy:two];
    NSLog(@"%@",theResult);
    
    
    
    return NSApplicationMain(argc, (const char **)argv);
}
