//
//  UIView+Extensions.swift
//  ViewTest
//
//  Created by 松原　舜也 on 2018/07/11.
//  Copyright © 2018年 松原　舜也. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func addFullsizeView(_ view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        let attributes: [NSLayoutAttribute] = [.top, .left, .right, .bottom]
        let constraints = attributes.map { (attribute) -> NSLayoutConstraint in
            return NSLayoutConstraint(
                item: view,
                attribute: attribute,
                relatedBy: .equal,
                toItem: self,
                attribute: attribute,
                multiplier: 1.0,
                constant: 0
            )
        }
        addSubview(view)
        addConstraints(constraints)
    }
}
