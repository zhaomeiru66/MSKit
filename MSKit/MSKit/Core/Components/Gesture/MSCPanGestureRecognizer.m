//
//  MSCPanGestureRecognizer.m
//  MSKit
//
//  Created by Marc Zhao on 2019/11/28.
//  Copyright © 2019 Memory Chain network technology (Shenzhen) co. LTD. All rights reserved.
//

#import "MSCPanGestureRecognizer.h"

int const static sDirectionPanThreshold = 5;
@interface MSCPanGestureRecognizer ()
@property (nonatomic,assign) BOOL isDrag;
@property (nonatomic,assign) int moveX;
@property (nonatomic,assign) int moveY;

@end

@implementation MSCPanGestureRecognizer
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesMoved:touches withEvent:event];
    if (self.state == UIGestureRecognizerStateFailed) return;
    CGPoint nowPoint = [[touches anyObject] locationInView:self.view];
    CGPoint previousPoint = [[touches anyObject] previousLocationInView:self.view];
    _moveX += previousPoint.x - nowPoint.x;
    _moveY += previousPoint.y - nowPoint.y;
    if (!self.isDrag) {
        if (abs(_moveX) > sDirectionPanThreshold) {
            if (_direction == MSCPanGestureRecognizerDirectionVertoca) {
                self.state = UIGestureRecognizerStateFailed;
            }else {
                _isDrag = YES;
            }
        }else if (abs(_moveY) >sDirectionPanThreshold) {
            if (_direction == MSCPanGestureRecognizerDirectionHorizontal) {
                self.state = UIGestureRecognizerStateFailed;
            }else {
                _isDrag = YES;
            }
        }
    }
}
- (void)reset {
    [super reset];
    _isDrag = NO;
    _moveX = 0;
    _moveY = 0;
}
@end
