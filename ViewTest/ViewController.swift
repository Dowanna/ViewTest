//
//  ViewController.swift
//  ViewTest
//
//  Created by 松原　舜也 on 2018/07/04.
//  Copyright © 2018年 松原　舜也. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let containerView: XibView

    init(_ view: FirstView = FirstView()) {
        self.containerView = view
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        super.loadView()
        self.view = self.containerView
    }
}

