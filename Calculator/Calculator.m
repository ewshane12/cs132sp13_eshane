#import "Calculator.h"

@implementation Calculator

- (id)init
{
    self = [super init];
    if (self)
    {
        //Set up initial calculator conditions here
        [self setNumberOnScreen:0];
        [self setNumberAccumulated:0];
        [self setOperatingPending:'?'];
    }
    return self;
}


-(void) pressKey: (char) keyPress
{

    if([self isADigit:keyPress])
    {
        [self appendDigit: keyPress];
    }
    
    else if([self isClearScreenKey:keyPress])
    {
        [self clearNumberOnScreen];
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
        [self clearOperator];
        [self clearAccumulator];
    }
     
    else
    {
        NSLog(@"Uncovered argument '%c' in %@ message received by object at %p (%@)", keyPress, NSStringFromSelector(_cmd), self, self);
    }

return;
}

-(void) clearNumberOnScreen
{
    [self setNumberOnScreen:0];
}

-(void) clearAccumulator
{
    [self setNumberAccumulated:0];
}

-(void) clearOperator
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
    if (someChar == 'c' || someChar == 'C')
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
    if (someChar == 'a' || someChar == 'A')
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
    switch (someChar)
    {
        case '%':
            return YES;
            break;
            
        case '*':
            return YES;
            break;
            
        case '+':
            return YES;
            break;
            
        case '-':
            return YES;
            break;
            
        case '/':
            return YES;
            break;
            
        default:
            NSLog(@"ERROR");
            return NO;
            break;
    }
    
}

-(void) registerArithmetic:(char)theOperator
{
    [self setNumberAccumulated:[self numberOnScreen]];
    [self clearNumberOnScreen];
    [self setOperatingPending:theOperator];
}

-(void) computeAndDisplayResult
{
    int result;
    
    switch ([self operatingPending])
    {
        case '%':
            result = [self numberAccumulated] % [self numberOnScreen];
            break;
            
        case '*':
            result = [self numberAccumulated] * [self numberOnScreen];
            break;
            
        case '+':
            result = [self numberAccumulated] + [self numberOnScreen];
            break;
        
        case '-':
            result = [self numberAccumulated] - [self numberOnScreen];
            break;
            
        case '/':
            result = [self numberAccumulated] / [self numberOnScreen];
            break;
            
        default:
            break;
    }
    
    [self setNumberAccumulated:[self numberOnScreen]];
    [self clearNumberOnScreen];
    [self clearOperator];
} 


-(void) appendDigit: (char) changedDigit
{
    int oldValue;
    //added breakpoint
    oldValue = [self numberOnScreen];
    oldValue = (oldValue * 10 + changedDigit - 48);
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"Calculator with %d on screen.", [self numberOnScreen]];
}
@end
