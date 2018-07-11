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
    fileprivate weak var pollingController: PollingController?
    
    public typealias ContainerView = C

    public let containerView: C

    private var counter: Int

    init(view: C) {
        self.containerView = view
        let interval = 3.0
        self.counter = 0

//        pollingController = PollingController(fireDate: Date(), interval: interval)
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

    open override func viewDidLoad() {
        super.viewDidLoad()
//        pollingController?.startPolling(executeBlock: { [weak self] in
//            self?.counter += 1
//        })
    }
}
