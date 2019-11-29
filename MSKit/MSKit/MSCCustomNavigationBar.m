//
//  MSCCustomNavigationBar.m
//  MSKit
//
//  Created by Marc Zhao on 2019/11/28.
//  Copyright © 2019 Memory Chain network technology (Shenzhen) co. LTD. All rights reserved.
//

#import "MSCCustomNavigationBar.h"

@implementation MSCCustomNavigationBar

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.msc_navigationAlpha = 1.0f;
        
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
}
@end
