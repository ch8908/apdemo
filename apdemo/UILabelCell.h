//
// Created by Kros Huang on 15/07/2017.
// Copyright (c) 2017 oSolve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

extern NSString *const UILabelCellReuseIdentifier;

@interface UILabelCell : UITableViewCell
@property (nonatomic, strong) UILabel *label;
@end