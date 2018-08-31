//
//  RootVC.swift
//  ViewTest
//
//  Created by 松原　舜也 on 2018/08/31.
//  Copyright © 2018年 松原　舜也. All rights reserved.
//

import Foundation
import UIKit

class RootVC: UIViewController {
    public static let shared: RootVC = RootVC()

    public override func viewDidLoad() {
        super.viewDidLoad()

        // tabCをrootに追加する
        let tabController = BaseTabController.shared
        let vc1 = ViewController()
        let vc2 = SecondViewController()
        let vc3 = ThirdViewController()
        vc1.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        vc2.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        vc3.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 2)
        tabController.viewControllers = [vc1, vc2, vc3]

        tabController.willMove(toParentViewController: self)
        addChildViewController(BaseTabController.shared)
        view.addFullsizeView(tabController.view)
//        view.addFullsizeSubView(tabController.view)
        tabController.didMove(toParentViewController: self)
    }
}
