//
//  MSCRoundedImageCell.m
//  MSKit
//
//  Created by Marc Zhao on 2019/11/26.
//  Copyright © 2019 Marc Zhao. All rights reserved.
//
#import <QuartzCore/QuartzCore.h>
#import "MSCRoundedImageCell.h"

@implementation MSCRoundedImageCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
        self.imageView.clipsToBounds = YES;
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    CGFloat margin = self.imageView.frame.size.height * .15;
        self.imageView.frame = CGRectMake(
                                     self.imageView.frame.origin.x + margin,
                                     self.imageView.frame.origin.y + margin/2, self.imageView.frame.size.height-margin, self.imageView.frame.size.height-margin);
        

        
        CALayer *l = [self.imageView layer];
        [l setMasksToBounds:YES];
        [l setCornerRadius:7.0];
        
        // You can even add a border
        [l setBorderWidth:.25];
        [l setBorderColor:[[UIColor blackColor] CGColor]];
}
@end
