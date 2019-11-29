//
//  MSCCustomNavigationBar.h
//  MSKit
//
//  Created by Marc Zhao on 2019/11/28.
//  Copyright © 2019 Memory Chain network technology (Shenzhen) co. LTD. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MSCCustomNavigationBar : UINavigationBar
/**
 
 */
@property (nonatomic,assign) BOOL msc_statusHidden;
@property (nonatomic,assign) CGFloat msc_navigationAlpha;
@property (nonatomic,assign) BOOL msc_navigationLineHidden;

@end

NS_ASSUME_NONNULL_END
