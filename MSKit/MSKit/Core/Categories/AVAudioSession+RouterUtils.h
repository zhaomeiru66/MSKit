//
//  AVAudioSession+RouterUtils.h
//  MemoryChain
//
//  Created by Marc Zhao on 2020/2/3.
//  Copyright © 2020 Memory Chain network technology(China) co,LTD. All rights reserved.
//




#import <AVFoundation/AVFoundation.h>
NS_ASSUME_NONNULL_BEGIN

@interface AVAudioSession (RouterUtils)
- (BOOL)usingBlueTooth;
- (BOOL)usingWireMicrophone;
- (BOOL)shouldShowEarPhoneAlert;


@end

NS_ASSUME_NONNULL_END
