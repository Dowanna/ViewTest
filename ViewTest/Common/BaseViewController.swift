//
//  BaseViewController.swift
//  ViewTest
//
//  Created by 松原　舜也 on 2018/07/11.
//  Copyright © 2018年 松原　舜也. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController<C>: UIViewController {
    public typealias ContainerView = C

    public let containerView: C

    init(view: C) {
        self.containerView = view
        super.init(nibName: nil, bundle: nil)
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        super.loadView()
        guard let containerView = self.containerView as? UIView else {
            super.loadView()
            return
        }
        self.view = containerView
    }

    // RootVCに対してpresentしてdismissした際にBaseVCのwillAppearが呼ばれるか実験
    // 仮説: dismissする際にobserverが横取りするのが原因？
    override func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(coordinateViewAppear),
                                               name: .ModalDismissing,
                                               object: nil)

        super.present(viewControllerToPresent, animated: flag, completion: completion)
    }

    override func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
        NotificationCenter.default.post(name: .ModalDismissing, object: nil)
        super.dismiss(animated:flag, completion: completion)
    }

    @objc func coordinateViewAppear() {
        print("coordinateViewAppear!")
    }
}
