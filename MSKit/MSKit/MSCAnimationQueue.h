//
//  MSCAnimationQueue.h
//  MSKit
//
//  Created by Marc Zhao on 2019/11/28.
//  Copyright © 2019 Memory Chain network technology (Shenzhen) co. LTD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSCDurationBlock.h"

NS_ASSUME_NONNULL_BEGIN

@interface MSCAnimationQueue : NSObject
@property (nonatomic,readonly) int numberOfStages;
@property (nonatomic,readonly) int completedStages;
@property (nonatomic,readonly) BOOL isActive;
@property (nonatomic,readonly) BOOL isCompleted;
@property (nonatomic,readonly) NSMutableArray *queue;
@property (nonatomic,weak) id delegate;

- (BOOL)start;
- (BOOL)enqueue:(AnimationBlock)animationBlock
   withDuration:(NSTimeInterval)duration;

@end

NS_ASSUME_NONNULL_END
