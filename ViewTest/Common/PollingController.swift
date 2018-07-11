//
//  PollingController.swift
//  ViewTest
//
//  Created by 松原　舜也 on 2018/07/11.
//  Copyright © 2018年 松原　舜也. All rights reserved.
//

import Foundation
import UIKit

public class PollingController {
    private var timer: Timer?

    /// ポーリング処理実行中を表すフラグ
    /// これが true の場合、ポーリングのexecuteBlockは実行されません。
    /// executeBlock実行中はポーリング処理を行わない場合は このフラグで制御してください。
    public var isFetching = false

    private let fireDate: Date
    private let interval: TimeInterval

    /// - Parameters:
    ///   - fireDate: ポーリング処理開始日時
    ///   - interval: ポーリング間隔
    public init(fireDate: Date, interval: TimeInterval) {
        self.fireDate = fireDate
        self.interval = interval
    }

    /// ポーリング処理を開始する
    ///
    /// - Parameters:
    ///   - fireDate: ポーリング処理開始日時
    ///   - interval: ポーリング間隔
    ///   - executeBlock: 実行closure
    public func startPolling(executeBlock: @escaping () -> Void) {
        self.timer = Timer(fire: fireDate, interval: interval, repeats: true) { [weak self] _ in
            guard let strongSelf  = self else { return }

            if strongSelf.isFetching { return }
            executeBlock()
        }

        guard let timer  = self.timer else { return }
        RunLoop.current.add(timer, forMode: .commonModes)
    }

    /// ポーリング処理を停止する
    public func stopPollingIfNeeded() {
        self.timer?.invalidate()
    }
}
