//
//  KeyChainUtils.h
//
//  Created by Marc Zhao on 2016/8/16.
//  Copyright © 2016 Marc Zhao. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KeyChainUtils : NSObject
+ (BOOL)authenticateWithUseName:(NSString *)userName
                    andPassword:(NSString *)password;
+ (void)logout;

+ (BOOL)credentialsAreValid;
+ (NSString *)credentialToken;
+ (NSString *)credentialUserName;
+ (BOOL)setValue:(NSString *)value
   forIdentifier:(NSString *)identifier;
+ (NSString*)getValueForIdentifier:(NSString*)identifier;
+ (BOOL)deleteValueForIdentifier:(NSString*)identifier;
@end

NS_ASSUME_NONNULL_END
