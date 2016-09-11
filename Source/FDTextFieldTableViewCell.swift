//
//  FDTextFieldTableViewCell.swift
//  FDTextFieldTableViewCell
//
//  Created by William Entriken on 2/2/16.
//  Copyright © 2016 William Entriken. All rights reserved.
//

import UIKit

//@IBDesignable
/// A UITableViewCell with a UITextField inside
public class FDTextFieldTableViewCell: UITableViewCell {
    /// A UITextField
    public var textField = UITextField()

    /// UIView initializer
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .Default, reuseIdentifier: reuseIdentifier)
        self.setup()
    }

    /// UIView initializer
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }

    /// UIView initializer
    override public func awakeFromNib() {
        super.awakeFromNib()
        self.setup()
    }

    private func setup() {
        self.contentView.viewWithTag(3)?.removeFromSuperview()
        self.textField.tag = 3
        self.textField.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.textField)
        self.addConstraint(NSLayoutConstraint(item: self.textField, attribute: .Leading, relatedBy: .Equal, toItem: self.contentView, attribute: .Leading, multiplier: 1, constant: 50))
        self.addConstraint(NSLayoutConstraint(item: self.textField, attribute: .Top, relatedBy: .Equal, toItem: self.contentView, attribute: .Top, multiplier: 1, constant: 8))
        self.addConstraint(NSLayoutConstraint(item: self.textField, attribute: .Bottom, relatedBy: .Equal, toItem: self.contentView, attribute: .Bottom, multiplier: 1, constant: -8))
        self.addConstraint(NSLayoutConstraint(item: self.textField, attribute: .Trailing, relatedBy: .Equal, toItem: self.contentView, attribute: .Trailing, multiplier: 1, constant: -16))
        self.textField.textAlignment = .Right
    }

    /// UIView internal handler
    override public func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.textField.becomeFirstResponder()
    }
}
