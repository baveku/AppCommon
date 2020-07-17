//
//  Interface+Defaults.swift
//  Seeler
//
//  Created by Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import UIKit
import IGListKit
import RxSwift

extension IView {
    func viewWillAppear(_ animated: Bool) {
        interfaceSubviews.forEach { $0.viewWillAppear(animated) }
    }
    func viewDidAppear(_ animated: Bool) {
        interfaceSubviews.forEach { $0.viewDidAppear(animated) }
    }
    func viewWillDisappear(_ animated: Bool) {
        interfaceSubviews.forEach { $0.viewWillDisappear(animated) }
    }
    func viewDidDisappear(_ animated: Bool) {
        interfaceSubviews.forEach { $0.viewDidDisappear(animated) }
    }
}

extension IErrorPresenter {
    func presentError(_ error: IError, animated: Bool, completion: (() -> Void)?) {
        let alert = UIAlertController(title: error.title, message: error.body, preferredStyle: .alert)
        alert.addAction(.ok)
        present(alert, animated: true, completion: nil)
    }
}

extension IReusableView {
    func prepareForReuse() { }
}

extension IThemeable {
    func themeDidChange(_ theme: Theme) { }
}
