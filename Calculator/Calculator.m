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
        numberOnScreen = (numberOnScreen * 10 + keyPress - 48);
    }
    
    else if(keyPress == 67 || keyPress == 99)
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


- (id)init
{
    self = [super init];
    if (self)
    {
        //Set up initial calculator conditions here
    }
    return self;
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"Calculator with %d on screen.", [self numberOnScreen]];
}
@end
