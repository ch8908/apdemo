//
// Created by Kros Huang on 06/07/2017.
// Copyright (c) 2017 oSolve. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Job;


@interface JobFactory : NSObject
+ (NSString *)fromJob:(Job*) job;
@end