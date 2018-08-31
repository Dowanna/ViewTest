import Foundation
import UIKit

public protocol ThirdContainerViewDelegate: class {
    func onTappedDismiss()
}

class ThirdContainerView: XibView {
    
    @IBAction func onTappedDismiss(_ sender: UIButton) {
        delegate?.onTappedDismiss()
    }
    weak var delegate: ThirdContainerViewDelegate?
    
    func setup(delegate: ThirdContainerViewDelegate?) {
        self.delegate = delegate
    }
    

}
