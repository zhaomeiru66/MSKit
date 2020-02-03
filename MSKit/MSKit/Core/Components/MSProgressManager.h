//
//  MSProgressManager.h
//  MemoryChain
//
//  Created by Marc Zhao on 2020/2/3.
//  Copyright © 2020 Memory Chain network technology(China) co,LTD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
/**
 ProgressView Style
 */
typedef NS_ENUM(NSInteger,MSProgressViewStyle) {
    MSProgressViewStyleRepeated,
    MSProgressViewStyleProgressBar
};
typedef NS_ENUM(NSInteger,MSProgressViewPosition) {
    MSProgressViewPositionTop,
    MSProgressViewPositionBottom
};

@interface MSProgressManager : NSObject
@property MSProgressViewStyle style;
@property MSProgressViewPosition positon;
@property UIColor *color;
@property UIColor *gradientStartColor;
@property UIColor *gradientEndColor;
@property CGFloat height;


+ (instancetype)default;
- (void)showProgressOnView:(UIView *)view;
- (void)hideProgressView;

@end

NS_ASSUME_NONNULL_END
