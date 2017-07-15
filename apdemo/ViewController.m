//
//  ViewController.m
//  apdemo
//
//  Created by Kros on 2/17/16.
//  Copyright © 2016 oSolve. All rights reserved.
//

#import <Masonry/View+MASAdditions.h>
#import "ViewController.h"
#import "EditingTableViewController.h"

typedef NS_ENUM(NSInteger, APType) {
    APType1,
    APType2,
};

static NSString *const ReuseIdentifier = @"ReuseIdentifier";

@interface ViewController()<UITableViewDataSource>
@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UILabel *label2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];
    [button addTarget:self action:@selector(tapButton:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)tapButton:(UIButton *) sender {
    EditingTableViewController *controller = [[EditingTableViewController alloc] init];
    [self presentViewController:controller animated:YES completion:nil];
}

- (void)renameVariable:(NSString *) username {
    [self saveUsername:username];
    [self showUsername:username];
}

- (void)declareInInterface {

}

- (void)extractVariable {
    NSNumber *number10 = @(10);
}


- (void)extractConstant {
    ReuseIdentifier;
}


- (void)extractMethod {
    UILabel *label = [self createLabel];
    self.label = label;
}

- (UILabel *)createLabel {
    UILabel *label = [[UILabel alloc] init];
    label.textColor = [UIColor redColor];
    label.font = [UIFont systemFontOfSize:14];
    return label;
}


- (void)createProperty {
//     self.label2
    self.label2 = [self createLabel];
}


- (void)createMethod {
//    [self updateLabel:self.label];, color
    [self updateLable:self.label color:nil];
    [self updateLable:self.label color:nil];
    [self updateLable:self.label color:nil];
    [self updateLable:self.label color:nil];
}

- (void)updateLable:(UILabel *) label color:(UIColor *) color {
    label.text = @"";
}


- (void)intention {
    // Delegate

}

- (void)inlineStatment {
    NSString *helloWorld = [NSString stringWithFormat:@"Hello %@", @"World"];
}


- (void)logVariable:(NSString *) string {
    NSString *test = @"test";
    NSNumber *number = @10;
    NSLog(@">>>>>>>>>>>> string = %@", string);
    NSLog(@">>>>>>>>>>>> %s", sel_getName(_cmd));
}


- (void)flipOperation {
    APType type = [self currentType];
    if (APType1 == type) {

    }
}

- (APType)currentType {
    return APType1;
}

- (void)switchWarning {
    APType type = [self currentType];
    switch (type) {
        case APType2:
            break;
        case APType1:
            break;
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
    for (int i = 0; i < 10; ++i) {

    }
}

- (void)liveTemplates2:(NSArray *) list {
    // each
    for (NSString *string in list) {

    }
}


- (void)localization {
//    NSLocalizedString(@"error", nil);
    NSLocalizedString(@"error.wrong_email", nil);
    NSLocalizedString(@"error.wrong_email_password", nil);
}

- (void)wrapWithStringWithFormat {
//    [NSString stringWithFormat:@"Hello %@", @"World"];
    NSString *string = [NSString stringWithFormat:@"Hello %@", @"World"];
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

- (void)saveUsername:(NSString *) name {

}

- (void)showUsername:(NSString *) name {

}

- (NSInteger)tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger) section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *) indexPath {
    return nil;
}


@end
