//
//  MSProgressView.m
//  MemoryChain
//
//  Created by Marc Zhao on 2020/2/3.
//  Copyright © 2020 Memory Chain network technology(China) co,LTD. All rights reserved.
//

#import "MSProgressView.h"

@implementation MSProgressView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initialize];
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self initialize];
    }
    return self;
}
#pragma mark - initialize
- (void)initialize {
    [self.layer addAnimation:[self mediumProgressAnimation] forKey:@"animation"];
    
}
- (CAAnimation *)mediumProgressAnimation {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position,x"];
    animation.fromValue = @(-self.frame.size.width);
    animation.toValue = @(self.frame.size.width * 2);
    animation.duration = 1.2f;
    animation.fillMode = kCAFillModeBoth;
    animation.repeatCount = INFINITY;
    return animation;
}

@end
