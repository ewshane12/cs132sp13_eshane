#import "Calculator.h"

@implementation Calculator

@synthesize numberOnScreen = _DNU_numberOnScreen;
@synthesize numberAccumulated = _DNU_numberAccumulated;
@synthesize operatingPending = _DNU_operationPending;

-(void) pressKey: (char) keyPress
{
    
    //    if(isADigit (keyPress))
    if([self isADigit:keyPress])
    {
        [self appendDigit: keyPress];
    }
    
    else if([self isClearScreenKey:keyPress])
    {
        _DNU_numberOnScreen = 0;
    }
    
    else
    {
        NSLog(@"Uncovered argument '%c' in %@ message received by object at %p (%@)", keyPress, NSStringFromSelector(_cmd), self, self);
    }

return;
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
    if (someChar == 75)
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
    if (someChar == 37 || someChar == 42 || someChar == 43 || someChar == 45 || someChar == 47)
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
    [self setNumberOnScreen:0];
    [self setOperatingPending:theOperator];
}

-(void) computeAndDisplayResult
{
    int numberOnScreen = _DNU_numberOnScreen;
    int numberAccumulated = _DNU_numberAccumulated;
    
    
        if([self operatingPending] == 37)
        {
            numberOnScreen = numberAccumulated % numberOnScreen;
        }
        if([self operatingPending] == 42)
        {
            numberOnScreen = numberAccumulated * numberOnScreen;
        }
        if([self operatingPending] == 43)
        {
            numberOnScreen = numberAccumulated + numberOnScreen;
        }
        if([self operatingPending] == 45)
        {
            numberOnScreen = numberAccumulated - numberOnScreen;
        }
        if([self operatingPending] == 47)
        {
           numberOnScreen = numberAccumulated / numberOnScreen;
        }
        else
        {
            [self setNumberOnScreen:[self numberOnScreen]];
        }
    
    [self setNumberAccumulated:0];
    [self setOperatingPending:'?'];
}


- (id)init
{
    self = [super init];
    if (self)
    {
        //Set up initial calculator conditions here
        _DNU_numberOnScreen = 0;
        _DNU_numberAccumulated = 0;
        _DNU_operationPending = 43;
    }
    return self;
}

-(void) appendDigit: (char) changedDigit
{
    _DNU_numberOnScreen = (_DNU_numberOnScreen * 10 + changedDigit - 48);
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"Calculator with %d on screen.", [self numberOnScreen]];
}
@end
