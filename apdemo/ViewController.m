//
//  ViewController.m
//  apdemo
//
//  Created by Kros on 2/17/16.
//  Copyright © 2016 oSolve. All rights reserved.
//

#import "ViewController.h"

typedef NS_ENUM(NSInteger, APType) {
    APType1,
    APType2,
};

@interface ViewController()
@property (nonatomic, strong) UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)renameVariable:(NSString *) userName {
    [self saveUserName:userName];
    [self showUserName:userName];
}

- (void)declareInInterface {

}

- (void)extractVariable {
    @(10);
}


- (void)extractConstant {
    @"ReuseIdentifier";
}


- (void)extractMethod {
    UILabel *label = [[UILabel alloc] init];
    label.textColor = [UIColor redColor];
    label.font = [UIFont systemFontOfSize:14];
    self.label = label;
}


- (void)createProperty {
//     self.label2
}


- (void)createMethod {
//    [self updateLabel:self.label];, color
}


- (void)intention {
    // Delegate
}

- (void)inlineStatment {
    NSString *world = @"World";
    NSString *helloWorld = [NSString stringWithFormat:@"Hello %@", world];
}


- (void)logVariable:(NSString *) string {
    NSString *test = @"test";
    NSNumber *number = @10;
}


- (void)flipOperation {
    APType type = [self currentType];
    if (type == APType1) {

    }
}

- (APType)currentType {
    return APType1;
}

- (void)switchWarning {
    APType type = [self currentType];
    switch (type) {
    }
}

- (void)deprecateMethod {
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
}

- (void)searchForUsage {
    [self logHello];
}

- (void)liveTemplates1 {
//    for (int i = 0; i < 10; ++i) {
//
//    }
}

- (void)liveTemplates2:(NSArray *) list {
    // each
}


- (void)localization {
//    NSLocalizedString(@"error", nil);
    NSLocalizedString(@"error.wrong_email", nil);
}

- (void)wrapWithStringWithFormat {
//    [NSString stringWithFormat:@"Hello %@", @"World"];

}

#pragma mark Reference

- (void)log2 {
    [self logHello];
}

- (void)log3 {
    [self logHello];
}

- (void)logHello {
    NSLocalizedString(@"error", nil);
}

- (void)saveUserName:(NSString *) name {

}

- (void)showUserName:(NSString *) name {

}

@end
