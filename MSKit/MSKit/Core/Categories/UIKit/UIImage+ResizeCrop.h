//
//  UIImage+ResizeCrop.h
//  MSKit
//
//  Created by Marc Zhao on 2019/11/5.
//  Copyright © 2019 Marc Zhao. All rights reserved.
//




#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (ResizeCrop)
- (UIImage *)croppedImageWithSize:(CGSize)size;
- (UIImage *)resizedImageWithSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
