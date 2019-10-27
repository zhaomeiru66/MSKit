//
//  NSString+MSEmoji.m
//  MSKit
//
//  Created by Marc Zhao on 2019/10/27.
//  Copyright © 2019 Marc Zhao. All rights reserved.
//

#import "NSString+MSEmoji.h"




@implementation NSString (MSEmoji)
-(BOOL)isEmoji {
        const unichar high = [self characterAtIndex:0];
        
        // Surrogate pair (U+1D000-1F77F)
        if (0xd800 <= high && high <= 0xdbff && self.length >= 2) {
            const unichar low = [self characterAtIndex:1];
            const int codepoint = ((high - 0xd800) * 0x400) + (low - 0xdc00) + 0x10000;
            
            return (0x1d000 <= codepoint && codepoint <= 0x1f77f);
            
            // Not surrogate pair (U+2100-27BF)
        } else {
            return (0x2100 <= high && high <= 0x27bf);
        }
    }

@end
