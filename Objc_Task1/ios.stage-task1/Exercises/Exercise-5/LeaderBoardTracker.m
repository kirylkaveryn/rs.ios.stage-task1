#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    
    // calculate the number of Players and init result array
    NSInteger playerLength = playerArray.count;
    NSMutableArray *resultRanks = [[NSMutableArray alloc] init];
    
    
    // iterate for each player
    for (NSInteger i = 0; i < playerLength; i++) {
        
        // create Set from both of input ranked and player arrays - dublicate objects will be auto deleted
        NSSet *set = [NSSet setWithArray:rankedArray];
        NSMutableSet *setRanked = [NSMutableSet setWithSet:set];
        [setRanked addObject:[playerArray objectAtIndex:i]];
        
        
        //create array from set and sort it
        NSArray *rankedArrayTotal = setRanked.allObjects;
        NSArray *sortedArrayTotal = [rankedArrayTotal sortedArrayUsingSelector:@selector(compare:)];
//        NSLog(@"Sorted array: %@", sortedArrayTotal);
        
//        NSLog(@"Lenght rank array %li:", rankLength);
        
        NSNumber *object = [playerArray objectAtIndex:i];
//        NSLog(@"playerArray %li: %@", i, object);
//        NSLog(@"index of object place %@", @([sortedArrayTotal indexOfObject:object]));
        
        [resultRanks insertObject:@(sortedArrayTotal.count - [sortedArrayTotal indexOfObject:object]) atIndex:i];
//        NSLog(@"Result array at iteration %li: %@", i, resultRanks);
        }
    
    NSArray *outputArray = [resultRanks copy];
//    NSLog(@"Return array: %@", outputArray);
    
    return outputArray;
}

@end
