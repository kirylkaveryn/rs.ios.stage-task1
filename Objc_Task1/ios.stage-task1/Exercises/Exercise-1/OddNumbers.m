//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    
//    NSInteger arrayLength = array.count;
    
//    NSLog(@"%lu", arrayLength);
    
    NSInteger sum = 0;

//    for (unsigned long i = 0; i < arrayLength; i++) {
//
//        if ([[array objectAtIndex:i] intValue] % 2 != 0) {
//            sum ++;
//        }
//    }
    
    for (NSNumber *number in array) {
    
        if (number.intValue % 2 != 0) {
            sum ++;
        }
    }
    
    return sum;
}

@end
