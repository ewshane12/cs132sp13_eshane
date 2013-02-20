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
