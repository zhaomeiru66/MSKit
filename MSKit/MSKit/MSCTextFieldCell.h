//
//  MSCTextFieldCell.h
//  MSKit
//
//  Created by Marc Zhao on 2019/11/26.
//  Copyright © 2019 Marc Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class MSCTextFieldCell;

@protocol MSCTextFieldCellDelegate <NSObject>

@optional

//Called to the delegate whenever return is hit when a user is typing into the rightTextField of an SDTextFieldCell
- (BOOL)textFieldCell:(MSCTextFieldCell *)inCell shouldReturnForIndexPath:(NSIndexPath*)inIndexPath withValue:(NSString *)inValue;

//Called to the delegate whenever the text in the textField is changed
- (void)textFieldCell:(MSCTextFieldCell *)inCell updateTextLabelAtIndexPath:(NSIndexPath *)inIndexPath string:(NSString *)inValue;

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField;
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField;
- (void)textFieldDidBeginEditing:(UITextField *)textField;
- (void)textFieldDidEndEditing:(UITextField *)textField;



@end

@interface MSCTextFieldCell : UITableViewCell
@property (nonatomic,strong) UITextField *textField;
@property (nonatomic, weak) id <MSCTextFieldCellDelegate> delegate;
@property (nonatomic, strong) NSIndexPath *indexPath;
@end

NS_ASSUME_NONNULL_END
