#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {

//    unsigned long arrayLength = [self count];
//    unsigned long min;

    NSArray *sorted = [self sortedArrayUsingSelector:@selector(compare:)];
//    NSNumber *min = [self valueForKeyPath:@"@min.self"];
//    for (int i = 0; i < arrayLength; i++)
    
    
    return sorted.firstObject;
}

@end
