//
//  JSONError.swift
//  Seeler
//
//  Created by Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import Foundation

enum JSONError: Error {
    case decodingFailed
    case serializationFailed
    
    var errorDescription: String? {
        switch self {
        case .decodingFailed:
            return "Response did not match decodable type"
        case .serializationFailed:
            return "Response was not a valid JSON object"
        }
    }
}
