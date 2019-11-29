//
//  MSCDurationBlock.h
//  MSKit
//
//  Created by Marc Zhao on 2019/11/28.
//  Copyright © 2019 Memory Chain network technology (Shenzhen) co. LTD. All rights reserved.
//

#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN
typedef void (^AnimationBlock) (void);
@interface MSCDurationBlock : NSObject
@property (nonatomic) NSTimeInterval duration;
@property (nonatomic,copy) AnimationBlock block;
@property (nonatomic) NSInteger tag;
+ (instancetype)block;


@end

NS_ASSUME_NONNULL_END
