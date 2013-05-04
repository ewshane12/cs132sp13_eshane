#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property (assign) int numberOnScreen;
@property (assign) int numberAccumulated;
@property (assign) char operatingPending;

-(void) pressKey: (char) keyPress;
-(void) appendDigit: (char) changedDigit;
-(void) registerArithmetic:(char)theOperator;
-(void) computeAndDisplayResult;
-(void) clearAccumulator;
-(void) clearOperator;
-(void) clearNumberOnScreen;

@end

bool isADigit (char digit);
bool isClearScreenKey(char someChar);
bool isClearAllKey (char someChar);
bool isResultKey (char someChar);
bool isArithmeticAllKey (char someChar);
