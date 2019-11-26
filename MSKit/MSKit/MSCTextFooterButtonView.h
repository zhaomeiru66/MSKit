//
//  MSCTextFooterButtonView.h
//  MSKit
//
//  Created by Marc Zhao on 2019/11/26.
//  Copyright © 2019 Marc Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 options for the background color of the footer button
 
 */
typedef enum {
    MSCFooterButtonStyleGreen,
    MSCFooterButtonStyleGray,
    MSCFooterButtonStyleRed,
} MSCFooterButtonStyle;

@interface MSCTextFooterButtonView : UIView
/**
 The footer button
 
 */
@property (nonatomic,retain) UIButton *button;
@property (nonatomic,strong) UITextView *textView;

/**
 Initialize instance with specific MSCFooterButtonStyle
 */
- (id)initWithStyle:(MSCFooterButtonStyle)style;
@end

NS_ASSUME_NONNULL_END
