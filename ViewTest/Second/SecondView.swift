//
//  SecondView.swift
//  ViewTest
//
//  Created by 松原　舜也 on 2018/07/11.
//  Copyright © 2018年 松原　舜也. All rights reserved.
//

import Foundation
import UIKit

class SecondView: XibView {

    var delegate: SecondViewDelegate?

    func setup(_ delegate: SecondViewDelegate) {
        self.delegate = delegate
    }

    @IBAction func onTappedDismiss(_ sender: UIButton) {
        self.delegate?.onTappedDismiss()
    }
}
