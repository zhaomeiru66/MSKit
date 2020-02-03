//
//  AVAudioSession+RouterUtils.m
//  MemoryChain
//
//  Created by Marc Zhao on 2020/2/3.
//  Copyright © 2020 Memory Chain network technology(China) co,LTD. All rights reserved.
//

#import "AVAudioSession+RouterUtils.h"



@implementation AVAudioSession (RouterUtils)
- (BOOL)usingBlueTooth {
    NSArray *inputs = self.currentRoute.inputs;
    NSArray *blueToothInputRouters = @[AVAudioSessionPortBluetoothHFP];
    for (AVAudioSessionPortDescription *description in inputs) {
        if ([blueToothInputRouters containsObject:description.portType]) {
            return YES;
        }
    }
    NSArray *outputs = self.currentRoute.outputs;
    NSArray *blueToothOutputRoutes = @[AVAudioSessionPortBluetoothHFP, AVAudioSessionPortBluetoothA2DP, AVAudioSessionPortBluetoothLE];
    for (AVAudioSessionPortDescription *description in outputs) {
        if ([blueToothOutputRoutes containsObject:description.portType]) {
            return YES;
        }
    }
    
    return NO;
}
- (BOOL)usingWireMicrophone {
    NSArray *inputs = self.currentRoute.inputs;
    NSArray *microphoneInputRouter = @[AVAudioSessionPortHeadphones];
    for (AVAudioSessionPortDescription *description in inputs) {
        if ([microphoneInputRouter containsObject:description.portType]) {
            return YES;
        }
    }
    NSArray *outputs = self.currentRoute.outputs;
    NSArray *microphoneOutputRouter = @[AVAudioSessionPortHeadphones,AVAudioSessionPortUSBAudio];
    for (AVAudioSessionPortDescription *description in outputs) {
        if ([microphoneOutputRouter containsObject:description.portType]) {
            return YES;
        }
    }
    return NO;
}
- (BOOL)shouldShowEarPhoneAlert {
    NSArray *outputs = self.currentRoute.outputs;
    NSArray *earPhoneOutputRouter = @[AVAudioSessionPortBuiltInReceiver,AVAudioSessionPortBuiltInSpeaker];
    for (AVAudioSessionPortDescription *description in outputs) {
        if ([earPhoneOutputRouter containsObject:description.portType]) {
            return YES;
        }
    }
    return NO;
}
@end
