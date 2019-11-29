//
//  MSCDurationBlock.m
//  MSKit
//
//  Created by Marc Zhao on 2019/11/28.
//  Copyright © 2019 Memory Chain network technology (Shenzhen) co. LTD. All rights reserved.
//

#import "MSCDurationBlock.h"

@implementation MSCDurationBlock
+ (instancetype)block {
    MSCDurationBlock *blcok = [[self alloc]init];
    blcok.duration = 0.15f;
    return blcok;
    
}
@end
