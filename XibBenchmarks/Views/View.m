//
//  View.m
//  XibBenchmarks
//
//  Created by Mgen on 05/11/2016.
//  Copyright © 2016 Mgen. All rights reserved.
//

#import "View.h"

@implementation View {
    UIView *_internalView;
    UIButton *_internalButton;
}


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _internalView = [[UIView alloc] init];
        _internalView.backgroundColor = [UIColor blackColor];
        _internalView.frame = CGRectMake(0, 0, 150, 150);
        
        _internalButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _internalButton.frame = CGRectMake(0, 150, 150, 150);
        
        [self addSubview:_internalView];
        [self addSubview:_internalButton];
    }
    return self;
}

@end
