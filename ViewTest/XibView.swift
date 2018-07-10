//
//  XibView.swift
//  ViewTest
//
//  Created by 松原　舜也 on 2018/07/10.
//  Copyright © 2018年 松原　舜也. All rights reserved.
//

import Foundation
import UIKit

class XibView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        let view = initViewFromName(of: self)
        addFullsizeView(view)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let view = initViewFromName(of: self)
        addFullsizeView(view)
    }

    fileprivate func initViewFromName(of viewClass: UIView) -> UIView {
        let name = String(describing: type(of: viewClass))
        let nib = UINib(nibName: name, bundle: nil)
        guard let view = nib.instantiate(withOwner: viewClass, options: nil).first as? UIView else {
            fatalError("nib not found")
        }
        return view
    }

    fileprivate func addFullsizeView(_ view: UIView) {
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
