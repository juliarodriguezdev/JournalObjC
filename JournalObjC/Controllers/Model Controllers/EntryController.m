//
//  EntryController.m
//  JournalObjC
//
//  Created by Julia Rodriguez on 7/1/19.
//  Copyright © 2019 Julia Rodriguez. All rights reserved.
//

#import "EntryController.h"
#import "Entry.h"


@implementation EntryController

+ (EntryController *)sharedInstance {
    static EntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^ {
        
        shared = [EntryController new];
    });
    return shared;
    
}

- (void)createEntry:(Entry *)entry {
    
    [_entries addObject: entry];
    
}

- (void)removeEntry:(Entry *)entry {
    [_entries removeObject:entry];
}

@end
