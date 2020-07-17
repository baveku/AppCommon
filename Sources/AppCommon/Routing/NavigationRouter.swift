//
//  NavigationRouter.swift
//  Seeler
//
//  Created by Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import UIKit
import Swinject
protocol Route {}

class NavigationCoordinator: Coordinator {

    // MARK: - Properties

    var mainController: UIViewController {
        return navigationController
    }

    var container: Container

    let navigationController: NavigationController

    // MARK: - Init

    init(in container: Container) {
        self.container = container
        self.navigationController = NavigationController()
    }
}
