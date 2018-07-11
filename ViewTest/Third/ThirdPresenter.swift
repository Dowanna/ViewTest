import UIKit

protocol ThirdPresentationLogic {
    // FIXME: delete if unneeded.
    func presentSomething(response: Third.Something.Response)
}

class ThirdPresenter: ThirdPresentationLogic {
    weak var viewController: ThirdDisplayLogic?
    
    // MARK: Do something

    // FIXME: delete if unneeded.
    func presentSomething(response: Third.Something.Response) {
        let viewModel = Third.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}
