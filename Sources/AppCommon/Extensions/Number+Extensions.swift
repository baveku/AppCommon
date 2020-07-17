//
//  Number+Extensions.swift
//  Seeler
//
//  Created Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import Foundation

extension Double {
    
    func toDollars() -> String {
        return String(format: "$%.02f", self)
    }
    
    func roundTwoDecimal() -> String {
        return String(format: "%.02f", self)
    }
    
}
