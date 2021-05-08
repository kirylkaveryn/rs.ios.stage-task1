#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    
//     Method 1:
    NSArray *sorted = [self sortedArrayUsingSelector:@selector(compare:)];
    if (self.count == 0) {
            return nil;
        }
    
        if (self.count == 1) {
            return [self objectAtIndex: 0];
        }
    // Methot 2:

//    NSInteger mid;
//
//    if (self.count == 0) {
//        return nil;
//    }
//
//    if (self.count == 1) {
//        return [self objectAtIndex: 0];
//    }
//
//    NSInteger left = 0;
//    NSInteger right = self.count - 1;
//
//    while (left <= right) {
//        NSInteger mid = left + (right - left);
//        if (mid > 0 && [[self objectAtIndex:mid]intValue] < [[self objectAtIndex:(mid-1)]intValue]) {
//            return [self objectAtIndex:mid];
//        }
//        else if ([[self objectAtIndex:left]intValue] <= [[self objectAtIndex:mid]intValue] && [[self objectAtIndex:mid+1]intValue] <= [[self objectAtIndex:right]intValue]) {
//            left = mid + 1;
//        }
//        else {
//            right = mid - 1;
//        }
//    }
    
//    if (mid = (left + right)/2) {
//        return [self objectAtIndex:0];
//    }
//
//
    return [sorted objectAtIndex: 0];
}
@end
