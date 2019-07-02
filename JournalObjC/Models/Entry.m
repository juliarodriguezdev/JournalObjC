//
//  Entry.m
//  JournalObjC
//
//  Created by Julia Rodriguez on 7/1/19.
//  Copyright © 2019 Julia Rodriguez. All rights reserved.
//

#import "Entry.h"

@implementation Entry

-(instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText {
    
    self = [super init];
    if (self) {
        _title = title;
        _bodyText = bodyText;
        // Swift - NSDate(), new = () (initialize)
        _timestamp = [NSDate new];
    }
    return self;
}

@end
