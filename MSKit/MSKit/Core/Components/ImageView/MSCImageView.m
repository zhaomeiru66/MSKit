//
//  MSCImageView.m
//  MSKit
//
//  Created by Marc Zhao on 2019/11/26.
//  Copyright © 2019 Memory Chain network technology (SZ) co. LTD. All rights reserved.
//

#import "MSCImageView.h"

@implementation MSCImageView
#pragma mark - init
- (id)init {
    self = [super init];
    if (self) {
        [self initialize];
    }
    return self;
}
- (id)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self initialize];
    }
    return self;
}
- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initialize];
    }
    return self;
}
- (void)initialize {
    self.contentMode = UIViewContentModeScaleAspectFit;
    self.clipsToBounds = YES;
}
@end
