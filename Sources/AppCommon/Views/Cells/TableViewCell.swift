//
//  TableViewCell.swift
//  Seeler
//
//  Created by Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import UIKit

class TableViewCell<ViewType: IReusableView>: UITableViewCell, IReuseIdentifiable, IWrapperView {

    class var reuseIdentifier: String {
        return String(describing: self)
    }

    override var textLabel: UILabel? { return nil }
    override var detailTextLabel: UILabel? { return nil }

    let wrappedView = ViewType()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        cellDidLoad()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        cellDidLoad()
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        wrappedView.prepareForReuse()
    }

    func cellDidLoad() {
        contentView.addSubview(wrappedView)
        wrappedView.fillSuperview()
        selectionStyle = .none
    }
    
}
