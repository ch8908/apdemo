//
// Created by Kros Huang on 15/07/2017.
// Copyright (c) 2017 oSolve. All rights reserved.
//

#import <Masonry/View+MASAdditions.h>
#import "UITextViewCell.h"

NSString *const UITextViewCellReuseIdentifier = @"UITextViewCell";

@interface UITextViewCell()
@property (nonatomic, strong) UILabel *label;
@end

@implementation UITextViewCell
+ (NSDictionary *)attrs {
    return @{
      NSFontAttributeName : [UIFont systemFontOfSize:15]
    };
}

+ (CGFloat)height {
    return 8
      + 30
      + 8
      + 100
      + 8;
}

- (instancetype)initWithStyle:(UITableViewCellStyle) style reuseIdentifier:(nullable NSString *) reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        UILabel *label = [[UILabel alloc] init];
        label.text = @"This is title";
        [self.contentView addSubview:label];
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(8);
            make.left.equalTo(self.contentView).offset(8);
            make.right.equalTo(self.contentView).offset(-8);
            make.height.equalTo(@(30));
        }];
        self.label = label;
        UITextView *textView = [[UITextView alloc] init];
        textView.backgroundColor = [UIColor grayColor];
        [self.contentView addSubview:textView];
        [textView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(label.mas_bottom).offset(8);
            make.left.equalTo(self.contentView).offset(8);
            make.right.equalTo(self.contentView).offset(-8);
            make.bottom.equalTo(self.contentView).offset(-8);
            make.height.equalTo(@(100));
        }];
    }
    return self;
}

@end