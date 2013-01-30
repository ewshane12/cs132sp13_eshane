/**
 @file main.m
 @author Prof. Adams
 @date 2013 01 18
 */

#import <Foundation/Foundation.h>

/**
 @brief Entry point for the program - sets up objects and puts everything in motion
 @returns EXIT_SUCCESS if all went well
 */
int main(void)
{
    
    @autoreleasepool {
    
        NSMutableArray* words = nil;
        
        NSLog(@"array uninitialized %@.", words);
        words = [[NSMutableArray alloc] init];
        NSLog(@" initialized array %@.", words);
        
        [words addObject:(@", ")];
        NSLog(@" adding , %@", words);
        
        [words addObject:(@" Hello ")];
        NSLog(@" adding Hello %@", words);
        
        [words addObject:(@" World ")];
        NSLog(@" adding World %@", words);
        
        [words sortUsingSelector: @selector(localizedCaseInsensitiveCompare:)];
        NSLog(@"Sorting alphabeically , %@",words);
    
    }
    return EXIT_SUCCESS;
}