#import "Calculator.h"

@implementation Calculator

@synthesize numberOnScreen;
@synthesize numberAccumulated;
@synthesize operatingPending;

-(void) pressKey: (char) keyPress
{
    
    if (numberOnScreen <= 48 && numberOnScreen >= 57)
    {
        numberOnScreen = (numberOnScreen * 10 + numberOnScreen);
    }
    if(numberOnScreen == 67 || numberOnScreen == 99)
    {
        numberOnScreen = 0;
    }
    else
    {
        NSLog(@"Uncovered argument '%c' in %@ message received by object at %p (%@)", keyPress, NSStringFromSelector(_cmd), self, self);
    }

return;
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
