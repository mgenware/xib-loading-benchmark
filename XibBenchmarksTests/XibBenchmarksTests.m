//
//  XibBenchmarksTests.m
//  XibBenchmarksTests
//
//  Created by Mgen on 12/12/2016.
//  Copyright © 2016 Mgen. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "View.h"
#import "View2.h"
#import "View3.h"
#import <Foundation/Foundation.h>

@interface XibBenchmarksTests : XCTestCase

@end

@implementation XibBenchmarksTests {
    NSBundle *_mainBundle;
}

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _mainBundle = [NSBundle mainBundle];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testXIB2ViewsPerformanceExample {
    [self measureBlock:^{
        @autoreleasepool {
            [_mainBundle loadNibNamed:@"View" owner:self options:nil];
        }
    }];
}

- (void)testCoded2ViewsPerformanceExample {
    [self measureBlock:^{
        @autoreleasepool {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-value"
            [[View alloc] init];
#pragma clang diagnostic pop
        }
    }];
}

- (void)testXIB20ViewsPerformanceExample {
    [self measureBlock:^{
        @autoreleasepool {
            [_mainBundle loadNibNamed:@"View2" owner:self options:nil];
        }
    }];
}

- (void)testCoded20ViewsPerformanceExample {
    [self measureBlock:^{
        @autoreleasepool {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-value"
            [[View2 alloc] init];
#pragma clang diagnostic pop
        }
    }];
}

- (void)testXIB100ViewsPerformanceExample {
    [self measureBlock:^{
        @autoreleasepool {
            [_mainBundle loadNibNamed:@"View3" owner:self options:nil];
        }
    }];
}

- (void)testCoded100ViewsPerformanceExample {
    [self measureBlock:^{
        @autoreleasepool {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-value"
            [[View3 alloc] init];
#pragma clang diagnostic pop
        }
    }];
}

@end
