//
//  Accessible.swift
//  Seeler
//
//  Created by Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import UIKit

enum AccessibilityIdentifier: String {
    case example

    var description: String? {
        return nil
    }

    var hint: String? {
        return nil
    }
}

extension AccessibilityIdentifier {
    var id: String {
        return self.rawValue
    }
}

protocol Accessible {
    var accessibilityId: AccessibilityIdentifier { get }
}

extension Accessible where Self: UIAccessibilityElement {

    func setAccessibility(to identifier: AccessibilityIdentifier) {
        accessibilityIdentifier = identifier.id
        accessibilityLabel = identifier.description
        accessibilityHint = identifier.hint
    }

}
