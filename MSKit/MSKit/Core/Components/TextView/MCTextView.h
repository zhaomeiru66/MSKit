///
//  MCTextView.h
//  MemoryChainKit
//
//  Created by Marc Zhao on 2019/5/21.
//  Copyright © 2019 Memory Chain technology(China) co,LTD. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/*
 
 A text view allowing to set a placeholder text just like for uilabel etc,In addition you can set a max character count.
 The text view will accept only the specified number of characters as input in this case
 
 */

@interface MCTextView : UITextView
// A placeholder text to be displayed by the text View just like UILabel

@property(nonatomic,copy) NSString *placeholder;
// the maximum number of characters allowed to be inserted by the user.
//0 means unlimited characters,in this case no remaining character count label will be displayed

@property (nonatomic, assign) NSUInteger maxCharacters;


    
@end

NS_ASSUME_NONNULL_END
