//
//  UIWindow+Extensions.swift
//  Seeler
//
//  Created Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import UIKit

extension UIWindow {
    
    func switchRootViewController(_ viewController: UIViewController,  animated: Bool = true, duration: TimeInterval = 0.5, options: UIView.AnimationOptions = .transitionCrossDissolve, completion: ((Bool) -> Void)? = nil) {
        
        guard animated else {
            rootViewController = viewController
            completion?(true)
            return
        }
        
        UIView.transition(with: self, duration: duration, options: options, animations: {
            let oldState = UIView.areAnimationsEnabled
            UIView.setAnimationsEnabled(false)
            self.rootViewController = viewController
            UIView.setAnimationsEnabled(oldState)
        }) { success in
            completion?(success)
        }
    }
}
