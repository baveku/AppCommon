//
//  FeedbackGeneratable.swift
//  Seeler
//
//  Created by Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import UIKit

protocol FeedbackGeneratable {

    typealias FeedbackType = UINotificationFeedbackGenerator.FeedbackType

    func generateSelectionFeedback()
    func generateImpactFeedback()
    func generateNotificationFeedback(type: FeedbackType)
}

extension FeedbackGeneratable {

    func generateSelectionFeedback() {
        let generator = UISelectionFeedbackGenerator()
        generator.prepare()
        generator.selectionChanged()
    }

    func generateImpactFeedback() {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.prepare()
        generator.impactOccurred()
    }

    func generateNotificationFeedback(type: FeedbackType) {
        let generator = UINotificationFeedbackGenerator()
        generator.prepare()
        generator.notificationOccurred(type)
    }
}

