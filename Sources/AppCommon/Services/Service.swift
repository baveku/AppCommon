//
//  BaseService.swift
//  Seeler
//
//  Created by Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import Foundation

class Service: NSObject, IService {

    // MARK: - Init

    override init() {
        super.init()
        serviceDidLoad()
    }

    func serviceDidLoad() {

    }
}
