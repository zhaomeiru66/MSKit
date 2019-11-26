//
//  MSCSwitchCell.m
//  MSKit
//
//  Created by Marc Zhao on 2019/11/26.
//  Copyright © 2019 Marc Zhao. All rights reserved.
//

#import "MSCSwitchCell.h"

@implementation MSCSwitchCell
@synthesize switchItem = _switchItem;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        UISwitch *item = [[UISwitch alloc]initWithFrame:CGRectZero];
        self.switchItem = item;
        [self.contentView addSubview:self.switchItem];
        
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.accessoryType = UITableViewCellAccessoryNone;
    
    CGFloat margin = self.contentView.bounds.size.height * .20;
    CGFloat width = self.contentView.frame.size.width;
    CGRect rect = CGRectMake(self.contentView.bounds.size.width - margin - width, self.contentView.bounds.origin.y + (self.contentView.bounds.size.height - self.switchItem.frame.size.height)/2, width, self.contentView.bounds.size.height);
    [self.switchItem setFrame:rect];
    
}

@end
