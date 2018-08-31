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

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

protocol FirstViewDelegate: class {
    func createAnotherVC()
    func dismissVC()
}
extension ViewController: FirstViewDelegate {
    func createAnotherVC() {
        let secondVC = SecondViewController {
            self.dismiss(animated: true)
        }
        let nav = UINavigationController(rootViewController: secondVC)
        RootVC.shared.present(nav, animated: true)
    }
    func dismissVC() {
        self.childViewControllers.first?.view.removeFromSuperview()
//        childController.willMove(toParentViewController: nil)
//        childController.removeFromParentViewController()
//        childController.view.removeFromSuperview()
//        self.dismiss(animated: true, completion: nil)
    }
}
