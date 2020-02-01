//
//  MSPageableView.m
//  MemoryChain
//
//  Created by Marc Zhao on 2016/2/1.
//  Copyright © 2016 Memory Chain network technology(Shenzhen) co,LTD. All rights reserved.
//

#import "MSPageableView.h"
static const int imageButtonCount = 3;
@interface MSPageableView ()<UIScrollViewDelegate>
@property (nonatomic,weak) UIScrollView *scrollView;
@property (nonatomic,weak) UIPageControl *pageControl;
@property (nonatomic,weak) NSTimer *timer;

@end

@implementation MSPageableView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        UIScrollView *scrollView = [[UIScrollView alloc]init];
        scrollView.delegate = self;
        scrollView.showsVerticalScrollIndicator = NO;
        scrollView.showsHorizontalScrollIndicator = NO;
        scrollView.pagingEnabled = YES;
        scrollView.bounces = NO;
        [self addSubview:scrollView];
        self.scrollView = scrollView;
        @autoreleasepool {
            for (int i = 0; i< imageButtonCount; i++) {
                UIButton *imageButton = [[UIButton alloc]init];
                [scrollView addSubview:imageButton];
                
            }
        }
        UIPageControl *pageControl = [[UIPageControl alloc]init];
        [self addSubview:pageControl];
        self.pageControl = pageControl;
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.scrollView.frame = self.bounds;
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height;
    if (self.isScrollDirectionPortraint) {
        self.scrollView.contentSize = CGSizeMake(width, height * imageButtonCount);
        
        
    }else {
        self.scrollView.contentSize = CGSizeMake(width *imageButtonCount, height);
    }
    @autoreleasepool {
        for (int i = 0 ; i < imageButtonCount ; i++) {
            UIButton *imageButton = self.scrollView.subviews[i];
            [imageButton addTarget:self action:@selector(imageButtonOnClick:) forControlEvents:UIControlEventTouchUpInside];
            if (self.isScrollDirectionPortraint) {
                imageButton.frame = CGRectMake(0, i* height, width, height);
            }else {
                imageButton.frame = CGRectMake(i * width, 0, width, height);
            }
            
        }
        if (self.isScrollDirectionPortraint) {
            self.scrollView.contentOffset = CGPointMake(0, height);
        }else {
            self.scrollView.contentOffset = CGPointMake(width, 0);
        }
        CGFloat pageWidth = 100;
        CGFloat pageHeight = 20;
        CGFloat pageX = width - pageWidth;
        CGFloat pageY = height - pageHeight;
        self.pageControl.frame = CGRectMake(pageX, pageY, pageWidth, pageHeight);
        
    }
}
#pragma mark - setter
- (void)setCurrentPageColor:(UIColor *)currentPageColor {
    _currentPageColor = currentPageColor;
    self.pageControl.currentPageIndicatorTintColor = currentPageColor;
    
}
- (void)setPageColor:(UIColor *)pageColor {
    _pageColor = pageColor;
    self.pageControl.pageIndicatorTintColor = pageColor;
}
- (void)setImages:(NSArray *)images {
    _images = images;
    self.pageControl.numberOfPages = images.count;
    self.pageControl.currentPage = 0;

}
- (void)setContent {
    @autoreleasepool {
        for (int i = 0 ; i < self.scrollView.subviews.count; i++) {
            UIButton *imageButton = self.scrollView.subviews[i];
            NSInteger index = self.pageControl.currentPage;
            if (i == 0) {
                index--;
            }else if (i == 2) {
                index++;
            }
            if (index < 0) {
                index = self.pageControl.numberOfPages - 1;
                
            }else if (index == self.pageControl.numberOfPages) {
                index =0;
            }
            imageButton.tag = index;
            [imageButton setBackgroundImage:self.images[index] forState:UIControlStateNormal];
            [imageButton setBackgroundImage:self.images[index] forState:UIControlStateHighlighted];
        }
        
    }
}
- (void)updateContent {
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height;
    [self setContent];
    
    if (self.scrollDirectionPortrait) {
        self.scrollView.contentOffset = CGPointMake(0, height);
    } else {
        self.scrollView.contentOffset = CGPointMake(width, 0);
    }
}
#pragma mark - UIScrollView  Delegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
       NSInteger page = 0;
    
       CGFloat minDistance = MAXFLOAT;
       
       for (int i = 0; i < self.scrollView.subviews.count; i++) {
           UIButton *imageBtn = self.scrollView.subviews[i];
           CGFloat distance = 0;
           if (self.scrollDirectionPortrait) {
               distance = ABS(imageBtn.frame.origin.y - scrollView.contentOffset.y);
           } else {
               distance = ABS(imageBtn.frame.origin.x - scrollView.contentOffset.x);
           }
           if (distance < minDistance) {
               minDistance = distance;
               page = imageBtn.tag;
           }
       }
       self.pageControl.currentPage = page;
}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    
}
#pragma mark - Timer
- (void)startTimer {
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(goToFollowingImage) userInfo:nil repeats:YES];
    [[NSRunLoop mainRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
    self.timer = timer;
}
- (void)invalidateTimer {
    [self.timer invalidate];
    self.timer = nil;
}
- (void)goToFollowingImage {
    CGFloat height = self.bounds.size.height;
    CGFloat width = self.bounds.size.width;
    if (self.scrollDirectionPortrait) {
        [self.scrollView setContentOffset:CGPointMake(0, 2 * height) animated:YES];
    } else {
        [self.scrollView setContentOffset:CGPointMake(2 * width, 0) animated:YES];
    }
}
- (void)imageButtonOnClick:(UIButton *)button {
    if ([self.delegate respondsToSelector:@selector(scrollView: didClickImageButtonIndex:)]) {
        [self.delegate scrollView:self didClickImageButtonIndex:button.tag];
    }
}
@end
