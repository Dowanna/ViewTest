//: Playground - noun: a place where people can play

import UIKit
import PromiseKit

class Device {
    let model: String
    let manufacturer: String

    init(model: String, manufacturer: String) {
        self.model = model
        self.manufacturer = manufacturer
    }


    deinit {
        print("deinit!")
    }

    lazy var summary: () -> Void = { [weak self] in
        print("\(self?.model): \(self?.manufacturer)")
    }
}


var d: Device? = Device(model: "t-41", manufacturer: "huawei")

d?.summary()
d = nil
