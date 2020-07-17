//
//  TableView.swift
//  Seeler
//
//  Created by Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import UIKit

class TableView: UITableView, IView {

    // MARK: - Init

    convenience init(frame: CGRect) {
        self.init(frame: frame, style: .plain)
    }

    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        viewDidLoad()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        viewDidLoad()
    }

    // MARK: - View Life Cycle

    func viewDidLoad() {
        subscribeToThemeChanges()
        separatorStyle = .none
    }

    // MARK: - Theme Updates

    func themeDidChange(_ theme: Theme) {
        backgroundColor = .white
    }
}
