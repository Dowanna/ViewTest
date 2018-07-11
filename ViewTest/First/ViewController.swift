//
//  ViewController.swift
//  ViewTest
//
//  Created by 松原　舜也 on 2018/07/04.
//  Copyright © 2018年 松原　舜也. All rights reserved.
//

import UIKit

class ViewController: BaseViewController<FirstView> {

    init(_ view: FirstView = FirstView()) {
        super.init(view: view)
        view.setup(delegate: self)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        super.loadView()
        self.view = self.containerView
    }
}

protocol FirstViewDelegate: class {
    func createAnotherVC()
    func dismissVC()
}
extension ViewController: FirstViewDelegate {
    func createAnotherVC() {
        let vc = SecondViewController()
//        vc.willMove(toParentViewController: self)
//        addChildViewController(vc)
        view.addFullsizeView(vc.view)
//        vc.didMove(toParentViewController: self)

//        present(ViewController(), animated: true, completion: nil)
    }
    func dismissVC() {
        self.childViewControllers.first?.view.removeFromSuperview()
//        childController.willMove(toParentViewController: nil)
//        childController.removeFromParentViewController()
//        childController.view.removeFromSuperview()
//        self.dismiss(animated: true, completion: nil)
    }
}
