//
//  NSLayoutConstraint+Extensions.swift
//  Seeler
//
//  Created by Bách on 3/11/18.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import UIKit

extension NSLayoutConstraint {

    func withPriority(_ priority: UILayoutPriority) -> NSLayoutConstraint {
        self.priority = priority
        return self
    }

    @discardableResult
    func activated() -> NSLayoutConstraint {
        NSLayoutConstraint.activate([self])
        return self
    }
}
