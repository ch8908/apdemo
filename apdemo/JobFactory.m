//
// Created by Kros Huang on 06/07/2017.
// Copyright (c) 2017 oSolve. All rights reserved.
//

#import "JobFactory.h"
#import "Job.h"


@implementation JobFactory
+ (NSString *)fromJob:(Job *) job {
    return job.title;
}
@end