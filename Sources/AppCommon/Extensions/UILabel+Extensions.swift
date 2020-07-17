//
//  UILabel+Extensions.swift
//  Seeler
//
//  Created Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import UIKit

extension UILabel {
    
    func animate(font: UIFont, duration: TimeInterval) {
        
        let oldFrame = frame
        let labelScale = self.font.pointSize / font.pointSize
        self.font = font
        let oldTransform = transform
        transform = transform.scaledBy(x: labelScale, y: labelScale)
        let newOrigin = frame.origin
        if textAlignment == .left {
            frame.origin = oldFrame.origin // only for left aligned text
        } else if textAlignment == .right {
            frame.origin = CGPoint(x: oldFrame.origin.x + oldFrame.width - frame.width, y: oldFrame.origin.y) // only for right aligned text
        }
        setNeedsUpdateConstraints()
        UIView.animate(withDuration: duration) {
            if self.textAlignment == .left {
                self.frame.origin = newOrigin // only for left aligned text
            }
            self.transform = oldTransform
            self.layoutIfNeeded()
        }
    }
}
