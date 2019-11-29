//
//  MSCNavigationBarConfiguration.h
//  MSKit
//
//  Created by Marc Zhao on 2019/11/28.
//  Copyright © 2019 Memory Chain network technology (Shenzhen) co. LTD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSCCommon.h"

NS_ASSUME_NONNULL_BEGIN

@interface MSCNavigationBarConfiguration : NSObject
/**
 background color
 */
@property (nonatomic,strong) UIColor *backgroundColor;
/**
 title color
 */
@property (nonatomic,strong) UIColor *titleColor;
/**
 title font
 */
@property (nonatomic,strong) UIFont *titleFont;
/**
 statusBar Hidden

 */
@property (nonatomic,assign) BOOL isStatusbarHiden;
@property (nonatomic,assign)UIStatusBarStyle statusBarStyle;
@property (nonatomic,assign) CGFloat msc_navItemLeftSpace;
@property (nonatomic,assign) CGFloat msc_navItemRightSpace;
@property (nonatomic,assign) BOOL msc_disableFixedSpace;
@property (nonatomic,assign,readonly) BOOL msc_lastDisableFixedSpace;
@property (nonatomic,assign) CGFloat msc_pushTransitionCriticalValue;
@property (nonatomic,assign) CGFloat msc_popTransitionCriticalValue;
@property (nonatomic,assign) CGFloat msc_translationX;
@property (nonatomic,assign) CGFloat msc_translationY;
@property (nonatomic,assign) CGFloat msc_scaleX;
@property (nonatomic,assign) CGFloat msc_scaleY;
+ (instancetype)sharedInstance;
- (void)setupDefaultConfiguration;
//-(void)setupCustomConfiguration:(void)(^)(MSCNavigationBarConfiguration *configuration))block;
- (void)updateConfiguration:(void(^)(MSCNavigationBarConfiguration *configuration))block;
- (UIViewController *)visiableController;
- (CGFloat)msc_fixedSpace;
@end

NS_ASSUME_NONNULL_END
