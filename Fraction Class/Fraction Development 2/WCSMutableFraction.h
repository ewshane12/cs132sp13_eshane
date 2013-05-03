//
//  WCSMutableFraction.h
//  Fraction Development
//
//  Created by Eric Shane on 4/18/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import "WCSFraction.h"

@interface WCSMutableFraction : WCSFraction

-(void)setNumerator:(int)num
     andDenominator:(int)denom;

-(void)modifyByAdding: (WCSFraction*)sum;
-(void)modifyByMultiplying: (WCSFraction*)product;
-(void)modifyByInverting;
-(void)modifyByNegating;

@end
