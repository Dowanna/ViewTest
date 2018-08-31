//
//  SecondViewController.swift
//  ViewTest
//
//  Created by 松原　舜也 on 2018/07/11.
//  Copyright © 2018年 松原　舜也. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: BaseViewController<SecondView> {
    
    init(_ view: SecondView = SecondView()) {
        super.init(view: view)
        containerView.setup(self)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        super.loadView()
        self.view = self.containerView
    }

}

protocol SecondViewDelegate {
    func onTappedDismiss()
}

extension SecondViewController: SecondViewDelegate {
    func onTappedDismiss() {
        self.dismiss(animated: true)
    }
}
