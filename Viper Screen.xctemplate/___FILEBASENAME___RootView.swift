// ___FILENAME___
// ___PROJECTNAME___
//
// Created by ___FULLUSERNAME___ on ___DATE___.
// ___COPYRIGHT___
//

import UIKit
import Reusable

protocol ___VARIABLE_productName:identifier___RootViewDelegate: class {
    
}

final class ___VARIABLE_productName:identifier___RootView: UIView, NibReusable {

    unowned var delegate: ___VARIABLE_productName:identifier___RootViewDelegate?
    
    var viewModel = ___VARIABLE_productName:identifier___ViewModel()
    
}

// MARK: - ViewConfigurable
extension ___VARIABLE_productName:identifier___RootView: ViewConfigurable {
    
    func configure(with viewModel: ___VARIABLE_productName:identifier___ViewModel) {
        self.viewModel = viewModel
    }
}
