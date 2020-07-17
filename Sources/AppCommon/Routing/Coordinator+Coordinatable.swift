//
//  Coordinator+Coordinatable.swift
//  Seeler
//
//  Created by Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import UIKit
import Swinject

protocol Coordinator {
    var mainController: UIViewController { get }
    var container: Container { get set }
}

protocol Coordinatable {
    associatedtype RouteType: Route
    func navigate(to route: RouteType)
}
