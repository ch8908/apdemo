//
//  apdemoTests.m
//  apdemoTests
//
//  Created by Kros on 2/17/16.
//  Copyright © 2016 oSolve. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Job.h"
#import "JobFactory.h"

@interface apdemoTests : XCTestCase

@end

@implementation apdemoTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testGetTitle {
    Job *job = [[Job alloc] initWithTitle:@"Title"];

    XCTAssertEqualObjects(@"Title", [JobFactory fromJob:job]);
}

@end
