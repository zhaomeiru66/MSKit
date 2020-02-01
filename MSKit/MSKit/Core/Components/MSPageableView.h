//
//  MSPageableView.h
//  MemoryChain
//
//  Created by Marc Zhao on 2016/2/1.
//  Copyright © 2016 Memory Chain network technology(Shenzhen) co,LTD. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


@class MSPageableView;
@protocol PageableViewDelegate <NSObject>

- (void)scrollView:(MSPageableView *) view didClickImageButtonIndex:(NSUInteger) index;

@end

@interface MSPageableView : UIView
@property (nonatomic,copy) NSArray *images;
@property (nonatomic,strong) UIColor *currentPageColor;
@property (nonatomic,strong) UIColor *pageColor;
@property (nonatomic,assign,getter=isScrollDirectionPortraint) BOOL scrollDirectionPortrait;
@property (nonatomic,weak) id<PageableViewDelegate> delegate;


@end

NS_ASSUME_NONNULL_END
