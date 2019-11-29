//
//  MSCPanGestureRecognizer.h
//  MSKit
//
//  Created by Marc Zhao on 2019/11/28.
//  Copyright © 2019 Memory Chain network technology (Shenzhen) co. LTD. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSUInteger,MSCPanGestureRecognizerDirection) {
    MSCPanGestureRecognizerDirectionVertoca,
    MSCPanGestureRecognizerDirectionHorizontal
};
@interface MSCPanGestureRecognizer : UIPanGestureRecognizer
@property (nonatomic,assign) MSCPanGestureRecognizerDirection direction;

@end

NS_ASSUME_NONNULL_END
