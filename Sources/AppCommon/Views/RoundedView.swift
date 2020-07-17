//
//  RoundedView.swift
//  Seeler
//
//  Created by Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import UIKit

class RoundedView: UIView, RoundableView {
    
    var roundingMethod: RoundingMethod = .complete {
        didSet {
            applyRounding()
        }
    }
    
    var roundedCorners: UIRectCorner = .allCorners {
        didSet {
            applyRounding()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        applyRounding()
    }
}
