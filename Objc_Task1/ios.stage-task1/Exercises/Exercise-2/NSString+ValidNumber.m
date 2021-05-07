#import "NSString+ValidNumber.h"


@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    
    
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    NSNumber *number = [formatter numberFromString:self];
    
    if (self.length < 0 || self.length > 110) {
        return false;
    }
    else if (number == nil) {
        return false;
    }
    else {
        return true;
    }

}

@end
