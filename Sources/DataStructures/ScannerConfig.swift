//
//  Config.swift
//  BarcodeScanner-iOS
//
//  Created by Asaduzzaman Shuvro on 25/5/21.
//  Copyright © 2021 Hyper Interaktiv AS. All rights reserved.
//

import Foundation
import UIKit

public struct ScannerConfig {
    public var cameraViewConfig: CameraViewConfig
    public var messageViewConfig: MessageViewConfig
    public var headerViewConfig: HeaderViewConfig
    
    public init(cameraViewConfig:CameraViewConfig,messageViewConfig: MessageViewConfig , headerViewConfig: HeaderViewConfig ) {
        self.cameraViewConfig = cameraViewConfig
        self.messageViewConfig = messageViewConfig
        self.headerViewConfig = headerViewConfig
    }
}

public extension ScannerConfig {
    init() {
        self.cameraViewConfig = CameraViewConfig(hideFocusAfterScanning: false)
        self.messageViewConfig = MessageViewConfig(showDefaultLoader: true, blurViewAlpha: 1)
        self.headerViewConfig = HeaderViewConfig(closeButtonTitle: "", navTitle: "")
    }
}

public struct CameraViewConfig {
    public var hideFocusAfterScanning: Bool = true
    public var focusViewType : FocusViewType = .oneDimension
    
    public init(hideFocusAfterScanning: Bool , focusViewType type: FocusViewType = .oneDimension ) {
        self.hideFocusAfterScanning = hideFocusAfterScanning
        self.focusViewType = type
    }

}

public struct MessageViewConfig {
    public var showDefaultLoader: Bool = true
    public var blurViewAlpha: CGFloat = 0.0
    
    public init(showDefaultLoader: Bool ,  blurViewAlpha: CGFloat) {
        self.showDefaultLoader = showDefaultLoader
        self.blurViewAlpha = blurViewAlpha
    }
}

public struct HeaderViewConfig {
    public var closeButtonTitle: String
    public var navTitle: String
    
    public init(closeButtonTitle: String, navTitle: String) {
        self.closeButtonTitle = closeButtonTitle
        self.navTitle = navTitle
    }
}

