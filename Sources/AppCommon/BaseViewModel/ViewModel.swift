//
//  ViewModel.swift
//  Seeler
//
//  Created by Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import Foundation

typealias ViewModel = BaseViewModel & IViewModel

class BaseViewModel: NSObject {

    // MARK: - Properties

    let appViewModel: AppViewModel

    required init(appViewModel: AppViewModel) {
        self.appViewModel = appViewModel
        super.init()
        viewModelDidLoad()
    }

    func viewModelDidLoad() {

    }
}
