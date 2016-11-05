//
//  ViewController.m
//  XibBenchmarks
//
//  Created by Mgen on 05/11/2016.
//  Copyright © 2016 Mgen. All rights reserved.
//

#import "ViewController.h"
#import "View.h"
#import "View2.h"
#import "View3.h"
#import <Foundation/Foundation.h>

#define kIterations         1000

@interface ViewController ()

@end

extern uint64_t dispatch_benchmark(size_t count, void (^block)(void));

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // store main bundle here to avoid unnecessary overhead
    NSBundle *mainBundle = [NSBundle mainBundle];
    // store timestamps returned from dispatch_benchmark (nanosecond)
    uint64_t timestamp1, timestamp2;
    
    // View with 2 sub views
    timestamp1 = dispatch_benchmark(kIterations, ^{
        @autoreleasepool {
            [mainBundle loadNibNamed:@"View" owner:self options:nil];
        }
    });
    NSLog(@"[XIB]  View with 2 sub views: %f sec", timestamp1 / 10e9);
    
    timestamp2 = dispatch_benchmark(kIterations, ^{
        @autoreleasepool {
            // ignore unused variable warning
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-value"
            [[View alloc] init];
#pragma clang diagnostic pop
        }
    });
    NSLog(@"[Code] View with 2 sub views: %f sec", timestamp2 / 10e9);
    
    // View with 20 sub views
    timestamp1 = dispatch_benchmark(kIterations, ^{
        @autoreleasepool {
            [mainBundle loadNibNamed:@"View2" owner:self options:nil];
        }
    });
    NSLog(@"[XIB]  View with 20 sub views: %f sec", timestamp1 / 10e9);
    
    timestamp2 = dispatch_benchmark(kIterations, ^{
        @autoreleasepool {
            // ignore unused variable warning
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-value"
            [[View2 alloc] init];
#pragma clang diagnostic pop
        }
    });
    NSLog(@"[Code] View with 20 sub views: %f sec", timestamp2 / 10e9);
    
    // View with 100 sub views
    timestamp1 = dispatch_benchmark(kIterations, ^{
        @autoreleasepool {
            [mainBundle loadNibNamed:@"View3" owner:self options:nil];
        }
    });
    NSLog(@"[XIB]  View with 100 sub views: %f sec", timestamp1 / 10e9);
    
    timestamp2 = dispatch_benchmark(kIterations, ^{
        @autoreleasepool {
            // ignore unused variable warning
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-value"
            [[View3 alloc] init];
#pragma clang diagnostic pop
        }
    });
    NSLog(@"[Code] View with 100 sub views: %f sec", timestamp2 / 10e9);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
