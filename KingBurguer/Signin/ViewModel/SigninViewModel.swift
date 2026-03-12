//
//  SigninViewModel.swift
//  KingBurguer
//
//  Created by Alexandre  Servian on 12/03/26.
//

import Foundation

protocol SigninViewModelDelegate {
    func viewModelDidChanged(viewModel: SigninViewModel)
}

class SigninViewModel {
    var delegate: SigninViewModelDelegate?
    
    var state: Bool = false {
        didSet {
            delegate?.viewModelDidChanged(viewModel: self)
        }
    }
    
    func send() {
        state = true
    }
}
