//
//  RowView.swift
//  Seeler
//
//  Created by Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import UIKit

class RowView<LeftViewType: UIView, RightViewType: UIView, AccessoryViewType: UIView>: View {

    let leftView = LeftViewType()
    let rightView = RightViewType()
    let accessoryView = AccessoryViewType()

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews(leftView, rightView, accessoryView)

        let xInset = Stylesheet.Layout.Padding.edgeLeadingTrailing
        let yInset = Stylesheet.Layout.Padding.edgeTopBottom
        let spacing = Stylesheet.Layout.Padding.subviewSpacing

        leftView.anchorIfNeeded(topAnchor, bottom: bottomAnchor, topConstant: yInset, bottomConstant: yInset)
        leftView.anchorCenterYToSuperview()
        leftView.anchor(left: leftAnchor, right: rightView.leftAnchor, leftConstant: xInset, rightConstant: spacing)
        leftView.setContentCompressionResistancePriority(
            .defaultHigh,
            for: .horizontal
        )
        leftView.setContentHuggingPriority(
            .defaultHigh,
            for: .horizontal
        )

        rightView.anchorIfNeeded(topAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: yInset, bottomConstant: yInset)
        rightView.anchor(left: leftView.rightAnchor, leftConstant: spacing)
        rightView.anchorCenterYToSuperview()

        accessoryView.anchorIfNeeded(topAnchor, bottom: bottomAnchor, topConstant: yInset, bottomConstant: yInset, widthConstant: 0)
        accessoryView.anchorCenterYToSuperview()
        accessoryView.anchor(left: rightView.rightAnchor, right: rightAnchor, leftConstant: spacing,  rightConstant: xInset)
        accessoryView.setContentCompressionResistancePriority(
            .defaultHigh,
            for: .horizontal
        )
        accessoryView.setContentHuggingPriority(
            .defaultHigh,
            for: .horizontal
        )

        heightAnchor.constraint(greaterThanOrEqualToConstant: 60)
            .withPriority(.defaultHigh)
            .activated()
    }
}
