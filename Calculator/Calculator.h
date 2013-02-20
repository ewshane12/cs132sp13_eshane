#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property (assign) int numberOnScreen;
@property (assign) int numberAccumulated;
@property (assign) char operatingPending;

-(void) pressKey: (char) keyPress;
-(void) appendDigit: (char) changedDigit;

@end

bool isADigit (char digit);
bool isClearScreenKey(char someChar);


