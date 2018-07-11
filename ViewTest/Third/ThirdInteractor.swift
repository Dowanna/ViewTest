import UIKit

protocol ThirdBusinessLogic {
    // FIXME: delete if unneeded.
    func doSomething(request: Third.Something.Request)

}

protocol ThirdDataStore {
    // FIXME: delete if unneeded.
    var name: String { get set }

}

class ThirdInteractor: ThirdDataStore {
    var presenter: ThirdPresentationLogic?

    // MARK: - DataStore
    // FIXME: delete if unneeded.
    var name: String = ""

}


// MARK: - ThirdBusinessLogic
extension ThirdInteractor: ThirdBusinessLogic {
    // MARK: Do something

    // FIXME: delete if unneeded.
    func doSomething(request: Third.Something.Request) {
        // 

        let response = Third.Something.Response()
        presenter?.presentSomething(response: response)
    }

}
