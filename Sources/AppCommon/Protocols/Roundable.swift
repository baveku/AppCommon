//
//  Roundable.swift
//  Seeler
//
//  Created by Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import UIKit

enum RoundingMethod {
    case complete
    case partial(radius: CGFloat)
    case none
}

protocol RoundableView where Self: UIView {

    var roundingMethod: RoundingMethod { get set }

    var roundedCorners: UIRectCorner { get set }

    func applyRounding()
}

extension RoundableView where Self: UIView {

    func applyRounding() {
        switch roundingMethod {
        case .complete:
            round(corners: roundedCorners, radius: bounds.height / 2)
        case .partial(let radius):
            round(corners: roundedCorners, radius: radius)
        case .none:
            layer.mask = nil
        }
    }
}
