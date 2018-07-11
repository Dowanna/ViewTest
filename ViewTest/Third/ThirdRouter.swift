import UIKit

@objc protocol ThirdRoutingLogic {
    // FIXME: delete if unneeded.
    func routeToSomewhere()
}

protocol ThirdDataPassing {
    var dataStore: ThirdDataStore? { get }
}

class ThirdRouter: NSObject, ThirdRoutingLogic, ThirdDataPassing {
    weak var viewController: ThirdViewController?
    var dataStore: ThirdDataStore?
    
    // MARK: Routing
    
    // FIXME: delete if unneeded.
    func routeToSomewhere() {
//        let destinationVC = SomewhereViewController()
//        var destinationDS = destinationVC.router!.dataStore!

//        passDataToSomewhere(source: dataStore!, destination: &destinationDS)
//        navigateToSomewhere(source: viewController!, destination: destinationVC)
    }
    
    // MARK: Navigation
//    func navigateToSomewhere(source: ThirdViewController) {
//        source.show(destination, sender: nil)
//    }
    
    // MARK: Passing data
//    func passDataToSomewhere(source: ThirdDataStore, destination: inout SomewhereDataStore) {
//
//    }
}
