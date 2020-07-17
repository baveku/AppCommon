//
//  UIViewController+Extensions.swift
//  Seeler
//
//  Created Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import UIKit

extension UIViewController {

    private static var alertWindow: UIWindow?

    @objc
    func dismissViewController() {
        dismiss(animated: true, completion: nil)
    }

    func show(animated: Bool, completion: (() -> Void)? = nil) {
        UIViewController.alertWindow = UIWindow(frame: UIScreen.main.bounds)
        UIViewController.alertWindow?.rootViewController = UIViewController()

        if let windowLevel = UIApplication.shared.windows.last?.windowLevel {
            UIViewController.alertWindow?.windowLevel = windowLevel + 1
        } else {
            UIViewController.alertWindow?.windowLevel = UIWindow.Level.alert
        }

        UIViewController.alertWindow?.makeKeyAndVisible()
        UIViewController.alertWindow?.rootViewController?.present(self, animated: animated, completion: completion)
    }

    func hide(animated: Bool, completion: (() -> Void)? = nil) {
        UIViewController.alertWindow?.isHidden = true
        UIViewController.alertWindow = nil
    }
}
