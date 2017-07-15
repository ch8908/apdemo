//
// Created by Kros Huang on 15/07/2017.
// Copyright (c) 2017 oSolve. All rights reserved.
//

#import <Masonry/View+MASAdditions.h>
#import <Bolts/BFTask.h>
#import <Bolts/BFExecutor.h>
#import "EditingTableViewController.h"
#import "UILabelCell.h"
#import "UITextViewCell.h"

typedef NS_ENUM(NSInteger, DummySection) {
    DummySectionFirst,
    DummySectionSecond,
    DummySectionThird,
    DummySectionTotals,
};

@interface EditingTableViewController()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray<NSString *> *data1;
@property (nonatomic, strong) NSArray<NSString *> *data3;
@end

@implementation EditingTableViewController

- (void)loadView {
    [super loadView];
    UITableView *tableView = [[UITableView alloc] init];
    tableView.rowHeight = UITableViewAutomaticDimension;
    tableView.estimatedRowHeight = 50;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    tableView.dataSource = self;
    tableView.delegate = self;
    [tableView registerClass:[UILabelCell class] forCellReuseIdentifier:UILabelCellReuseIdentifier];
    [tableView registerClass:[UITextViewCell class] forCellReuseIdentifier:UITextViewCellReuseIdentifier];
    [self.view addSubview:tableView];
    [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    self.tableView = tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.data1 = [self getDefaultData];
    self.data3 = [self getDefaultData];
    __weak typeof(self) weakSelf = self;
    [[BFTask taskWithDelay:5000] continueWithExecutor:[BFExecutor mainThreadExecutor] withBlock:^id(BFTask<id> *t) {
        weakSelf.data1 = [weakSelf getData];
        [weakSelf.tableView reloadSections:[NSIndexSet indexSetWithIndex:DummySectionFirst] withRowAnimation:UITableViewRowAnimationNone];
        return nil;
    }];
}

- (NSArray<NSString *> *)getDefaultData {
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 30; ++i) {
        [array addObject:[NSString stringWithFormat:@"a%@", @(i)]];
    }
    return array;
}

- (NSArray<NSString *> *)getData {
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 30; ++i) {
        int i1 = i % 5;
        NSMutableString *string = [NSMutableString string];
        [string appendString:@"a\n"];
        for (int j = 0; j < i1; ++j) {
            [string appendString:@"\n b"];
        }
        [array addObject:string];
    }
    return array;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *) tableView {
    return DummySectionTotals;
}

- (NSInteger)tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger) section {
    switch ((DummySection) section) {
        case DummySectionFirst:
            return self.data1.count;
        case DummySectionSecond:
            return 1;
        case DummySectionThird:
            return self.data3.count;
        case DummySectionTotals:
        default:
            return 0;
    }
}

- (UITableViewCell *)tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *) indexPath {
    switch ((DummySection) indexPath.section) {
        case DummySectionFirst: {
            UILabelCell *cell = [tableView dequeueReusableCellWithIdentifier:UILabelCellReuseIdentifier];
            cell.label.text = self.data1[indexPath.row];
            return cell;
        }
        case DummySectionSecond: {
            UITextViewCell *cell = [tableView dequeueReusableCellWithIdentifier:UITextViewCellReuseIdentifier];
            return cell;
        }
        case DummySectionThird: {
            UILabelCell *cell = [tableView dequeueReusableCellWithIdentifier:UILabelCellReuseIdentifier];
            cell.label.text = self.data3[indexPath.row];
            return cell;
        }
        case DummySectionTotals:
            break;
    }
    return nil;
}

- (void)tableView:(UITableView *) tableView didSelectRowAtIndexPath:(NSIndexPath *) indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self.view endEditing:YES];
}

@end