#import "Calculator.h"

@implementation Calculator

@synthesize numberOnScreen;
@synthesize numberAccumulated;
@synthesize operatingPending;

-(void) pressKey: (char) keyPress
{
    
    //    if(isADigit (keyPress))
    if([self isADigit:keyPress])
    {
        [self appendDigit: keyPress];
    }
    
    else if([self isClearScreenKey:keyPress])
    {
        numberOnScreen = 0;
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
    }
    return self;
}

-(void) appendDigit: (char) changedDigit
{
    numberOnScreen = (numberOnScreen * 10 + changedDigit - 48);
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"Calculator with %d on screen.", [self numberOnScreen]];
}
@end
