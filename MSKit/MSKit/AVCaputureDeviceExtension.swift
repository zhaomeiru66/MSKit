//
//  AVCaputureDeviceExtension.swift
//  MemoryChain
//
//  Created by Marc Zhao on 2020/2/4.
//  Copyright © 2020 Memory Chain network technology(China) co,LTD. All rights reserved.
//

import AVFoundation

public extension AVCaptureDevice {
    static var videoDevice:[AVCaptureDevice] {
        return AVCaptureDevice.default(for: .video)
    }
    static var audioDevice:[AVCaptureDevice] {
        return AVCaptureDevice.default(for: .audio)
    }
}
