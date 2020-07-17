//
//  UIEdgeInsets+Extensions.swift
//  Seeler
//
//  Created Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import UIKit

extension UIEdgeInsets {

    init(all: CGFloat) {
        self.init(top: all, left: all, bottom: all, right: all)
    }

    var horizontal: CGFloat {
        return left + right
    }

    var vertical: CGFloat {
        return top + bottom
    }
}
