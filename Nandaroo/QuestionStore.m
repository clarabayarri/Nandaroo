//
//  QuestionStore.m
//  Nandaroo
//
//  Created by Clara Bayarri on 02/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "QuestionStore.h"

@implementation QuestionStore

@synthesize allItems;

+ (QuestionStore *)sharedStore {
    static QuestionStore *defaultStore = nil;
    if (!defaultStore) {
        defaultStore = [[QuestionStore alloc] init];
    }
    return defaultStore;
}

- (id)init 
{
    self = [super init];
    if(self) {
        NSString *path = [self itemArchivePath];
        self.allItems = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
        
        // If the array hadn't been saved previously, create a new empty one
        if(!allItems)
            allItems = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *)itemArchivePath
{
    NSArray *documentDirectories =
    NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    // Get one and only document directory from that list
    NSString *documentDirectory = [documentDirectories objectAtIndex:0];
    
    return [documentDirectory stringByAppendingPathComponent:@"items.archive"];
}

- (BOOL)saveChanges
{
    // returns success or failure
    NSString *path = [self itemArchivePath];
    
    return [NSKeyedArchiver archiveRootObject:allItems toFile:path];
}

@end
