//
//  EntryDetailViewController.h
//  JournalObjC
//
//  Created by Julia Rodriguez on 7/1/19.
//  Copyright © 2019 Julia Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryDetailViewController : UIViewController
// landing pad 
@property (strong, nonatomic) Entry *entry;

@end

NS_ASSUME_NONNULL_END
