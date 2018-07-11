import UIKit

protocol ThirdDisplayLogic: class {
    // FIXME: delete if unneeded.
    func displaySomething(viewModel: Third.Something.ViewModel)
}

class ThirdViewController: BaseViewController<ThirdContainerView> {
    var interactor: ThirdBusinessLogic?
    var router: (NSObjectProtocol & ThirdRoutingLogic & ThirdDataPassing)?
    
    // MARK: Object lifecycle
    override init(view: ThirdContainerView = ThirdContainerView()) {
        super.init(view: view)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Setup
    
    private func setup() {
        let viewController = self
        let interactor = ThirdInteractor()
        let presenter = ThirdPresenter()
        let router = ThirdRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }

    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "TITLE"
        
        containerView.setup(delegate: self)

        // FIXME: delete if unneeded.
        doSomething()
    }
    
    // MARK: Do something

    // FIXME: delete if unneeded.
    fileprivate func doSomething() {
        let request = Third.Something.Request()
        interactor?.doSomething(request: request)
    }
}

extension ThirdViewController: ThirdDisplayLogic {
    // FIXME: delete if unneeded.
    func displaySomething(viewModel: Third.Something.ViewModel) {
        //nameTextField.text = viewModel.name
    }

}

// MARK: - Event handling
extension ThirdViewController: ThirdContainerViewDelegate {
    func onTapped() {
        
    }
}
