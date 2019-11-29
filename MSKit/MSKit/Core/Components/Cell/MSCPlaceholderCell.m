//
//  MSCPlaceholderCell.m
//  MSKit
//
//  Created by Marc Zhao on 2019/11/26.
//  Copyright © 2019 Marc Zhao. All rights reserved.
//

#import "MSCPlaceholderCell.h"

@implementation MSCPlaceholderCell

- (void)layoutSubviews {
    [super layoutSubviews];
    CGRect origFrame = self.contentView.frame;
    if (self.textField.text !=nil || self.textField.placeholder != nil) {
        self.textField.hidden = NO;
        self.textField.frame = CGRectMake(origFrame.origin.x, origFrame.origin.y, origFrame.size.width - 20, origFrame.size.height -1);
        self.textField.autocorrectionType = UITextAutocapitalizationTypeNone;
        
    }else {
        self.textField.hidden = YES;
        NSInteger imageWidth = 0;
        if (self.imageView.image != nil) {
            imageWidth = self.imageView.image.size.width + 5;
            
        }
        self.textField.frame = CGRectMake(origFrame.origin.x+imageWidth + 10, origFrame.origin.y,origFrame.size.width-imageWidth-20, origFrame.size.height-1);
    }
    [self setNeedsDisplay];
    
}
@end
