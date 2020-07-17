//
//  ControllerInteractor.swift
//  Seeler
//
//  Created by Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import UIKit

class ControllerInteractor: UIPercentDrivenInteractiveTransition, IControllerInteractor {

    // MARK: - Properties

    private(set) var isInteracting: Bool = false
    private var isAtLeastHalfway: Bool = false

    private(set) weak var viewController: UIViewController!

    // MARK: - Initialization

    init(for viewController: UIViewController) {
        super.init()
        self.viewController = viewController
        addSwipeGesture(in: viewController.view)
    }

    private func addSwipeGesture(in view: UIView) {
        let gesture = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(handlePanGesture(_:)))
        gesture.edges = .left
        view.addGestureRecognizer(gesture)
    }

    @objc private func handlePanGesture(_ gesture: UIScreenEdgePanGestureRecognizer) {
        let translation = gesture.translation(in: gesture.view?.superview)
        let progress = translation.x / viewController.view.bounds.width

        switch gesture.state {
        case .possible:
            break
        case .began:
            isInteracting = true
            viewController.dismiss(animated: true, completion: nil)
        case .changed:
            isAtLeastHalfway = progress > 0.5
            update(progress)
        case .cancelled, .failed:
            isInteracting = false
            cancel()
        case .ended:
            isInteracting = false
            if gesture.velocity(in: gesture.view).x > 300 {
                finish()
            } else {
                isAtLeastHalfway ? finish() : cancel()
            }
        }
    }
}
