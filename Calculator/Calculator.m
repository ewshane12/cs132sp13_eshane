#import "Calculator.h"

@implementation Calculator

@synthesize numberOnScreen;
@synthesize numberAccumulated;
@synthesize operatingPending;

-(void) pressKey: (char) keyPress
{
    
    if (numberOnScreen <= 57 && numberOnScreen >= 48)
    {
        numberOnScreen = (numberOnScreen * 10 + numberOnScreen);
    }
    else(numberOnScreen = numberOnScreen);
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
