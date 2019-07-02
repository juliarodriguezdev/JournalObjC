//
//  EntryController.h
//  JournalObjC
//
//  Created by Julia Rodriguez on 7/1/19.
//  Copyright © 2019 Julia Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryController : NSObject

// Shared Instance
+(EntryController *)sharedInstance;

// Source of Truth
@property (nonatomic, strong) NSMutableArray* entries;

// CRUD functions

// Create
-(void)createEntry:(NSString *)title body:(NSString *)bodyText;

// Update
-(void)updateEntry:(Entry *)entry title:(NSString *)title body:(NSString *)bodyText; 

// Delete
-(void)removeEntry:(Entry *)entry;

@end

NS_ASSUME_NONNULL_END
