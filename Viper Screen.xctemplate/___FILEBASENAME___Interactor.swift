// ___FILENAME___
// ___PROJECTNAME___
//
// Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

typealias ___VARIABLE_productName:identifier___State = InteractorState<___VARIABLE_productName:identifier___ViewModel>

protocol ___VARIABLE_productName:identifier___InteractorDelegate: class {
    
    /// Tells the delegate that the interactor state did update
    ///
    /// - Parameters:
    ///   - interactor: The interactor object informing the delegate of this impending event.
    ///   - state: The `interactor`  state
    func interactor(_ interactor: ___VARIABLE_productName:identifier___Interactor,
                    didUpdate state: ___VARIABLE_productName:identifier___State)
}

final class ___VARIABLE_productName:identifier___Interactor {
 
    weak var delegate: ___VARIABLE_productName:identifier___InteractorDelegate?
    
    /// The object describing the state of the Interactor
    private var state: ___VARIABLE_productName:identifier___State = .idle {
        didSet {
            DispatchQueue.main.async {
                self.delegate?
                    .interactor(self, didUpdate: self.state)
            }
        }
    }
    
    init() {
        
    }
    
}

protocol ___VARIABLE_productName:identifier___InteractorFactory {
    func make___VARIABLE_productName:identifier___Interactor() -> ___VARIABLE_productName:identifier___Interactor
}
