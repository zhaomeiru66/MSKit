//
//  MSProgressManager.m
//  MemoryChain
//
//  Created by Marc Zhao on 2020/2/3.
//  Copyright © 2020 Memory Chain network technology(China) co,LTD. All rights reserved.
//

#import "MSProgressManager.h"
#import "MSProgressView.h"

@interface MSProgressManager ()
@property MSProgressView *progressView;
@end

@implementation MSProgressManager
#pragma mark - lifeCycle
- (instancetype)init {
    self = [super init];
    if (self) {
        [self initialize];
    }
    return self;
}
+ (instancetype)default {
    static MSProgressManager *_instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc]init];
    });
    return _instance;
}

- (void)initialize {
    self.style = MSProgressViewStyleRepeated;
    self.positon = MSProgressViewPositionTop;
    self.gradientStartColor = [UIColor blueColor];
    self.gradientEndColor = [UIColor grayColor];
    self.height = 2.0f;
    
}
#pragma mark - public
- (void)showProgressOnView:(UIView *)view {
    self.progressView = [self initializeProgressWIthFrame:view.frame];
    [view addSubview:self.progressView];
}
- (void)hideProgressView {
    [self.progressView removeFromSuperview];
    
}
- (MSProgressView *)initializeProgressWIthFrame:(CGRect)aFrame {
    CGFloat width = aFrame.size.width;
    CGFloat height = aFrame.size.height;
    CGRect frame = CGRectMake(0, 0, width, self.height);
    if (self.positon == MSProgressViewPositionBottom) {
        frame = CGRectMake(0, height - self.height, width, self.height);
    }
    MSProgressView *progressView = [[MSProgressView alloc] initWithFrame:frame];
    
    if (self.color) {
        progressView.backgroundColor = self.color;
        return progressView;
    }
    
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = progressView.bounds;
    gradient.startPoint = CGPointMake(0, 0);
    gradient.endPoint = CGPointMake(width, 0);
    gradient.colors = [NSArray arrayWithObjects:(id)[self.gradientStartColor CGColor], (id)[self.gradientEndColor CGColor], nil];
    
    [progressView.layer insertSublayer:gradient atIndex:0];
    
    return progressView;
    
    }
@end
