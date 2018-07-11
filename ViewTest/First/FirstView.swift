//  FirstView.swift
//  ViewTest
//
//  Created by 松原　舜也 on 2018/07/10.
//  Copyright © 2018年 松原　舜也. All rights reserved.
//

import Foundation
import UIKit

class FirstView: XibView {
    weak var delegate: FirstViewDelegate?

    func setup(delegate: FirstViewDelegate) {
        self.delegate = delegate
    }
    @IBAction func nextbutton(_ sender: UIButton) {
       delegate?.createAnotherVC()
    }
    @IBAction func dismissButto(_ sender: UIButton) {
        delegate?.dismissVC()
    }
}
