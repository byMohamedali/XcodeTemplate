// ___FILENAME___
// ___PROJECTNAME___
//
// Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import CoordinatorKit

protocol ___VARIABLE_productName:identifier___RootViewDelegate: class {
    
}

final class ___VARIABLE_productName:identifier___RootView: NiblessView {

    unowned var delegate: ___VARIABLE_productName:identifier___RootViewDelegate?
    
    init(delegate: ___VARIABLE_productName:identifier___RootViewDelegate) {
        self.delegate = delegate
        super.init(frame: .zero)
    }
    
}

// MARK: - ViewConfigurable
extension ___VARIABLE_productName:identifier___RootView: ViewConfigurable {
    
    func configure(with viewModel: ___VARIABLE_productName:identifier___ViewModel) {
        
    }
}