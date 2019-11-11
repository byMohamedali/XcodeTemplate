// ___FILENAME___
// ___PROJECTNAME___
//
// Created by ___FULLUSERNAME___ on ___DATE___.
// ___COPYRIGHT___
//

import UIKit

/// Protocol that abstract the ___VARIABLE_productName:identifier___ViewController
protocol ___VARIABLE_productName:identifier___View: BaseView {
    var onfinish: ClosureEmptyParameter? { get set }
}

final class ___VARIABLE_productName:identifier___ViewController: NiblessViewController, ___VARIABLE_productName:identifier___View {
    
    // MARK: - ___VARIABLE_productName:identifier___View
    var onfinish: ClosureEmptyParameter?


    // MARK: - Properties

    /// A wrapper to the root view
    var rootView: ___VARIABLE_productName:identifier___RootView {
        return view as! ___VARIABLE_productName:identifier___RootView
    }
    
    /// The object responsible of the view business logic
    var interactor: ___VARIABLE_productName:identifier___InteractorInput
    
    // MARK: - LifeCycle
    init(interactor: ___VARIABLE_productName:identifier___InteractorInput) {
        self.interactor = interactor
        super.init()
    }

    override func loadView() {
        view = ___VARIABLE_productName:identifier___RootView.loadFromNib()
        rootView.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor.delegate = self
    }
}

// MARK: - ___VARIABLE_productName:identifier___InteractorDelegate
extension ___VARIABLE_productName:identifier___ViewController: ___VARIABLE_productName:identifier___InteractorDelegate {
    
    func interactor(_ interactor: ___VARIABLE_productName:identifier___InteractorInput, 
                    didUpdate state: ___VARIABLE_productName:identifier___State) {
        switch state {
        case .loading:
            break
        case .idle:
            break
        case .success(let viewModel):
            self.rootView.configure(with: viewModel)
        case .failure(let error):
            self.showError(error)
        }
    }
}

// MARK: - ___VARIABLE_productName:identifier___RootViewDelegate
extension ___VARIABLE_productName:identifier___ViewController: ___VARIABLE_productName:identifier___RootViewDelegate {
    
}

// MARK: - ___VARIABLE_productName:identifier___Controller Factory
/// ___VARIABLE_productName:identifier___Controller Factory
protocol ___VARIABLE_productName:identifier___ControllerFactory {
    func make___VARIABLE_productName:identifier___Controller() -> ___VARIABLE_productName:identifier___View
}

extension ___VARIABLE_productName:identifier___ControllerFactory {
    func make___VARIABLE_productName:identifier___Controller() -> ___VARIABLE_productName:identifier___View {
        let interactor = ___VARIABLE_productName:identifier___Interactor()
        return  ___VARIABLE_productName:identifier___ViewController(interactor: interactor)
    }

}

