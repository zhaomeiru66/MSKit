//
//  MSCTextFooterButtonView.m
//  MSKit
//
//  Created by Marc Zhao on 2019/11/26.
//  Copyright © 2019 Marc Zhao. All rights reserved.
//

#import "MSCTextFooterButtonView.h"

@implementation MSCTextFooterButtonView
@synthesize button= _button;
@synthesize textView = _textView;

- (id)init {
    self = [super init];
    if (self) {
        self.textView = [[UITextView alloc]initWithFrame:CGRectMake(0, 0, 320, 175)];
        self.textView.text = @"test";
        [self addSubview:self.textView];
        
        self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.button setTitle:@"Sample text" forState:UIControlStateNormal];
        self.button.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:23];
        [self.button setTitleShadowColor:[UIColor blackColor] forState:UIControlStateNormal];
        [[self.button titleLabel] setShadowOffset:CGSizeMake(0, -.50f)];
        
        // default button
        [self.button setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
        [self.button setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
        [self addSubview:self.button];
        
    }
    return self;
}
- (id)initWithStyle:(MSCFooterButtonStyle)style {
    self = [self init];
    if (style == MSCFooterButtonStyleGreen) {
        [self.button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.button setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    }else if (style == MSCFooterButtonStyleGray) {
        [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.button setTitleShadowColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [[self.button titleLabel] setShadowOffset:CGSizeMake(0, 1.0f)];
        [self.button setTitleShadowColor:[UIColor blackColor] forState:UIControlStateHighlighted];
         [self.button setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];

        [self.button setBackgroundImage:[UIImage imageNamed:@"gray.png"] forState:UIControlStateNormal];
    }else if (style == MSCFooterButtonStyleRed) {
        [self.button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.button setBackgroundImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        
    }
    
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    self.button.frame = CGRectMake(10, self.textView.frame.size.height + 10, self.bounds.size.width - 10 - 10, 45);
}

@end
