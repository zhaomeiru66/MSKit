//
//  UIButton+MSTouch.m
//  MSKit
//
//  Created by Marc Zhao on 2019/10/24.
//  Copyright © 2019 Marc Zhao. All rights reserved.
//

#import "UIButton+MSTouch.h"
@implementation UIButton (MSTouch)
- (BOOL)isTouchInside {
    self.enabled = NO;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.enabled = YES;
    });
    return YES;
}


@end
