//
//  View3.m
//  XibBenchmarks
//
//  Created by Mgen on 05/11/2016.
//  Copyright © 2016 Mgen. All rights reserved.
//

#import "View3.h"

@implementation View3

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        for (int i = 0; i < 100; i++) {
            UIView *view = [[UIView alloc] initWithFrame:CGRectZero];
            [self addSubview:view];
        }
    }
    return self;
}

@end
