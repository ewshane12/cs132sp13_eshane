#import "Calculator.h"

@implementation Calculator

-(void) pressKey: (char) keyPress
{
    //    if(isADigit (keyPress))
    if([self isADigit:keyPress])
    {
        [self appendDigit: keyPress];
    }
    
    else if([self isClearScreenKey:keyPress])
    {
        [self clearNumberOnScreen:0];
    }
    else if ([self isResultKey:keyPress])
    {
        [self computeAndDisplayResult];
    }
    else if ([self isArithmeticAllKey: keyPress])
    {
        [self computeAndDisplayResult];
        [self registerArithmetic : keyPress];
    }
    else if ([self isClearAllKey: keyPress])
    {
        [self clearOperator: keyPress];
        [self clearAccumulator : keyPress];
    }
     
    else
    {
        NSLog(@"Uncovered argument '%c' in %@ message received by object at %p (%@)", keyPress, NSStringFromSelector(_cmd), self, self);
    }

return;
}

-(void) clearNumberOnScreen:(char)numClearer
{
    [self setNumberOnScreen:0];
}

-(void) clearAccumulator:(char)accClearer
{
    [self setNumberAccumulated:0];
}

-(void) clearOperator:(char)opClearer
{
    [self setOperatingPending:'?'];
}

-(BOOL) isADigit: (char) digit
{
    if (digit <= '9' && digit >= '0')
    {
        return YES;
    }
    else
    {
        return NO;
    }

}

-(BOOL) isClearScreenKey: (char) someChar
{
    if (someChar == 67 || someChar == 99)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

-(BOOL) isClearAllKey: (char) someChar
{
    if (someChar == 65 || someChar == 97)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

-(BOOL) isResultKey: (char) someChar
{
    if (someChar == '=')
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

-(BOOL) isArithmeticAllKey: (char) someChar
{
    if (someChar == '%' || someChar == '*' || someChar == '+' || someChar == '-' || someChar == '/')
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

-(void) registerArithmetic:(char)theOperator
{
    [self setNumberAccumulated:[self numberOnScreen]];
    [self clearNumberOnScreen:0];
    [self setOperatingPending:theOperator];
}

-(void) computeAndDisplayResult
{
    int RHS = _numberOnScreen;
    int LHS = _numberAccumulated;
    int result;
    
        if([self operatingPending] == '%')
        {
            result = LHS % RHS;
        }
        if ([self operatingPending] == '*')
        {
            result = LHS * RHS;
        }
        if ([self operatingPending] == '+')
        {
            result = LHS + RHS;
        }
        if ([self operatingPending] == '-')
        {
            result = LHS - RHS;
        }
        if ([self operatingPending] == '/')
        {
           result = LHS / RHS;
        }
        else
        {
            [self setNumberOnScreen:[self numberOnScreen]];
        }
    
    [self setNumberOnScreen:result];
    [self clearAccumulator:0];
    [self clearOperator:'?'];
} 


- (id)init
{
    self = [super init];
    if (self)
    {
        //Set up initial calculator conditions here
        _numberOnScreen = 0;
        _numberAccumulated = 0;
        _operatingPending = '+';
    }
    return self;
}

-(void) appendDigit: (char) changedDigit
{
    _numberOnScreen = (_numberOnScreen * 10 + changedDigit - 48);
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"Calculator with %d on screen.", [self numberOnScreen]];
}
@end
