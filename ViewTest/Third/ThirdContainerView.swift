import Foundation

public protocol ThirdContainerViewDelegate: class {
    
    func onTapped()
}

class ThirdContainerView: XibView {
    
    weak var delegate: ThirdContainerViewDelegate?
    
    func setup(delegate: ThirdContainerViewDelegate?) {
        self.delegate = delegate
    }
    

}
