//
//  View2.m
//  XibBenchmarks
//
//  Created by Mgen on 05/11/2016.
//  Copyright © 2016 Mgen. All rights reserved.
//

#import "View2.h"

#define kHeight  10

@implementation View2

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        for (int i = 0; i < 20; i++) {
            CGRect rect = CGRectMake(0, i * kHeight, 100, kHeight);
            UIView *view = [[UIView alloc] initWithFrame:rect];
            view.backgroundColor = [UIColor blackColor];
            [self addSubview:view];
        }
    }
    return self;
}

@end
