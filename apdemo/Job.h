//
// Created by Kros Huang on 06/07/2017.
// Copyright (c) 2017 oSolve. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Job : NSObject
@property (nonatomic, readonly, copy) NSString* title;

- (instancetype)initWithTitle:(NSString *) title;

@end