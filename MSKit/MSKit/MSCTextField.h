//
//  MSCTextField.h
//  MSKit
//
//  Created by Marc Zhao on 2019/11/10.
//  Copyright © 2019 Marc Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MSCTextField : UITextField


@property (nonatomic, assign) UIEdgeInsets edgeInsets UI_APPEARANCE_SELECTOR;
@property (nonatomic, strong) UIColor *textFieldColor UI_APPEARANCE_SELECTOR;
@property (nonatomic, strong) UIColor *borderColor UI_APPEARANCE_SELECTOR;
@property (nonatomic, assign) CGFloat borderWidth UI_APPEARANCE_SELECTOR;
@property (nonatomic, assign) CGFloat cornerRadius UI_APPEARANCE_SELECTOR;

@end

NS_ASSUME_NONNULL_END
