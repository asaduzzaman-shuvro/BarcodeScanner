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
    
    public init(
        cameraViewConfig:CameraViewConfig,
        messageViewConfig: MessageViewConfig ,
        headerViewConfig: HeaderViewConfig
    ) {
        self.cameraViewConfig = cameraViewConfig
        self.messageViewConfig = messageViewConfig
        self.headerViewConfig = headerViewConfig
    }
    
    static func `default`() -> ScannerConfig {
        .init(cameraViewConfig: .default(), messageViewConfig: .default(), headerViewConfig: .default())
    }
}

public struct CameraViewConfig {
    public var hideFocusAfterScanning: Bool = true
    public var focusViewType : FocusViewType = .oneDimension
    public var infoMessageConfig: CameraInfoMessageConfig

    public init(
        hideFocusAfterScanning: Bool ,
        focusViewType type: FocusViewType = .oneDimension,
        infoMessageConfig: CameraInfoMessageConfig
    ) {
        self.hideFocusAfterScanning = hideFocusAfterScanning
        self.focusViewType = type
        self.infoMessageConfig = infoMessageConfig
    }
    
    static func `default`() -> CameraViewConfig {
        return CameraViewConfig(hideFocusAfterScanning: true, infoMessageConfig: .default())
    }
}

public struct CameraInfoMessageConfig {
    var message: NSAttributedString?
    var durationOfShowing: TimeInterval
    var backgroundColor: UIColor = .clear
    
    public init(message: NSAttributedString?, durationOfShowing: TimeInterval, backgroundColor: UIColor) {
        self.message = message
        self.durationOfShowing = durationOfShowing
        self.backgroundColor = backgroundColor
    }
    
    static func `default`() -> CameraInfoMessageConfig {
        return CameraInfoMessageConfig(message: nil, durationOfShowing: 0.5, backgroundColor: .clear)
    }
}

public struct MessageViewConfig {
    public var showDefaultLoader: Bool = true
    public var blurViewAlpha: CGFloat = 0.0
    
    public init(showDefaultLoader: Bool ,  blurViewAlpha: CGFloat) {
        self.showDefaultLoader = showDefaultLoader
        self.blurViewAlpha = blurViewAlpha
    }
    
    static func `default`() -> MessageViewConfig {
        return MessageViewConfig(showDefaultLoader: true, blurViewAlpha: 0.0)
    }
}

public struct HeaderViewConfig {
    public var closeButtonTitle: String
    public var navTitle: String
    
    public init(closeButtonTitle: String, navTitle: String) {
        self.closeButtonTitle = closeButtonTitle
        self.navTitle = navTitle
    }
    
    static func `default`() -> HeaderViewConfig {
        return HeaderViewConfig(closeButtonTitle: "", navTitle: "")
    }
}

