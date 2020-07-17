//
//  Theme.swift
//  Seeler
//
//  Created by Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import Foundation
import UIKit.UIColor

enum Theme: Int {
    case light = 0
    case dark

    static var `default`: Theme {
        return .light
    }
}

extension UIColor {
    func adjustedForTheme(_ theme: Theme) -> UIColor {
        return theme == .dark ? self.darkModeColor() : self
    }
}
