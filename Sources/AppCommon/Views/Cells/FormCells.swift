//
//  FormCells.swift
//  Seeler
//
//  Created by Bách on 7/15/20.
//  Copyright © 2020 BachVQ. All rights reserved.
//

import UIKit

class TextFieldCell: RowView<UILabel, TextField, UIView> {
    var label: UILabel { return leftView }
    var textField: TextField { return rightView }
}

class TextViewCell: RowView<UILabel, InputTextView, UIView> {
    var label: UILabel { return leftView }
    var textView: InputTextView { return rightView }
}

class DetailCell<AccessoryViewType: UIView>: RowView<UILabel, UILabel, AccessoryViewType> {
    var label: UILabel { return leftView }
    var detailLabel: UILabel { return rightView }
}

class CheckboxCell: RowView<UILabel, UIView, Checkbox> {
    var label: UILabel { return leftView }
    var checkbox: Checkbox { return accessoryView }
}

class SwitchCell: RowView<UILabel, UILabel, Switch> {
    var label: UILabel { return leftView }
    var detailLabel: UILabel { return rightView }
    var `switch`: Switch { return accessoryView }
}
