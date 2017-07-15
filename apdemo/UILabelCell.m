//
// Created by Kros Huang on 15/07/2017.
// Copyright (c) 2017 oSolve. All rights reserved.
//

#import <Masonry/View+MASAdditions.h>
#import "UILabelCell.h"

NSString *const UILabelCellReuseIdentifier = @"UILabelCell";

@implementation UILabelCell
- (instancetype)initWithStyle:(UITableViewCellStyle) style reuseIdentifier:(nullable NSString *) reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        UILabel *label = [[UILabel alloc] init];
        label.numberOfLines = 0;
        [self.contentView addSubview:label];
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(8);
            make.left.equalTo(self.contentView).offset(8);
            make.right.equalTo(self.contentView).offset(-8);
            make.bottom.equalTo(self.contentView).offset(-8);
        }];
        self.label = label;
    }
    return self;
}

@end