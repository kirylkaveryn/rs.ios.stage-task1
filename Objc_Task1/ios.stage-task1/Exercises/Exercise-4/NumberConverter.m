#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    
    // Method 1: convert number to string, delete all "-" and add each char to array from the end to star
    
    // alloc memory for Mutable Array
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    // check a nil input
    if (number == nil) {
        return array;
    }
    
    // create string from input number
    NSString *string = [number stringValue];
    
    // delete all minuses from string by trimming characters
    NSCharacterSet *charForTrimming = [NSCharacterSet characterSetWithCharactersInString:@"-"];
    NSString *stringWithoutMinuses = [string stringByTrimmingCharactersInSet:charForTrimming];
    
    // calc the length of string without "minuses"
    NSInteger lenght = stringWithoutMinuses.length;
    
    // iterate for chars one by one and add to array
    for (NSInteger i = 0; i < lenght; i++) {
        NSString *buffer = [NSString stringWithFormat:@"%c", [stringWithoutMinuses characterAtIndex:(lenght - i - 1)]];
        
        [array addObject: buffer];
    }

    
//    Method 2: create an array by adding converted to char the rest from /10
//
//    for (unsigned long i = 0; i < lenght; i++) {
//
//        NSInteger rest = numberInt % 10;
//
//        if (rest < 0) {
//            NSMutableString *buffer = [NSMutableString stringWithFormat:@"%li", rest * (-1)];
//            [array addObject:buffer];
//            numberInt = numberInt / 10;
//        }
//        else {
//            NSMutableString *buffer = [NSMutableString stringWithFormat:@"%li", rest];
//            [array addObject:buffer];
//            numberInt = numberInt / 10;
//        }
//    }
    
    NSArray *returnArray = [array copy];

    return returnArray;
}

@end
