//
// Created by Kros Huang on 06/07/2017.
// Copyright (c) 2017 oSolve. All rights reserved.
//

#import "Job.h"


@implementation Job
- (instancetype)initWithTitle:(NSString *) title {
    self = [super init];
    if (self) {
        _title = [title copy];
    }

    return self;
}

@end