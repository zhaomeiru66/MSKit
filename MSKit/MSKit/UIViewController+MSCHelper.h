//
//  UIViewController+MSCHelper.h
//  MSKit
//
//  Created by Marc Zhao on 2019/11/28.
//  Copyright © 2019 Memory Chain network technology (Shenzhen) co. LTD. All rights reserved.
//




#import <UIKit/UIKit.h>
#import "MSCNavigationBarConfiguration.h"
NS_ASSUME_NONNULL_BEGIN
extern NSString *const MSCViewControllerPropertyDidChangeNotification;
@protocol MSCViewControllerPushDelegate <NSObject>

@optional
- (void)pushToNextViewController;

@end
@protocol MSCViewControllerPopDelegate <NSObject>

@optional
- (void)viewControllerPopScrollBegan;
- (void)viewControllerPopScrollDidUpdate:(float)progress;
- (void)viewControllerPopScrollDidFinish;

@end

@interface UIViewController (MSCHelper)
@property(nonatomic,assign)BOOL msc_interactivePopDisable;
@property(nonatomic,assign) BOOL msc_fullScreenPopDisable;
@property (nonatomic,assign) CGFloat msc_popMaxAllowedDistanceToLeftEdge;
@property(nonatomic,assign) CGFloat msc_navBarAlpha;
@property (nonatomic,assign) UIStatusBarStyle msc_statusBarStyle;
@property (nonatomic,assign) BOOL msc_isStatusBarHidden;

@end

NS_ASSUME_NONNULL_END
