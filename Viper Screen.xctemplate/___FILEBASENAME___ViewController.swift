// ___FILENAME___
// ___PROJECTNAME___
//
// Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import CoordinatorKit

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
    lazy var interactor = interactorFactory
        .make___VARIABLE_productName:identifier___Interactor()
    
    /// The factory that instanciate the interactor
    private let interactorFactory: ___VARIABLE_productName:identifier___InteractorFactory

    // MARK: - LifeCycle
    init(interactorFactory: ___VARIABLE_productName:identifier___InteractorFactory) {
        self.interactorFactory = interactorFactory
        super.init()
    }

    override func loadView() {
        view = ___VARIABLE_productName:identifier___RootView(delegate: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor.delegate = self
    }
}

// MARK: - ___VARIABLE_productName:identifier___InteractorDelegate
extension ___VARIABLE_productName:identifier___ViewController: ___VARIABLE_productName:identifier___InteractorDelegate {
    
    func interactor(_ interactor: ___VARIABLE_productName:identifier___Interactor, didUpdate state: ___VARIABLE_productName:identifier___State) {
        rootView.configure(for: state)
    }
}

// MARK: - ___VARIABLE_productName:identifier___RootViewDelegate
extension ___VARIABLE_productName:identifier___ViewController: ___VARIABLE_productName:identifier___RootViewDelegate {
    
}

/// ___VARIABLE_productName:identifier___View Factory
protocol ___VARIABLE_productName:identifier___ControllerFactory {
    func make___VARIABLE_productName:identifier___Controller() -> ___VARIABLE_productName:identifier___View
}


