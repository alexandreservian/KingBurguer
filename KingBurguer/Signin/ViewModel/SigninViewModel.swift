//
//  SigninViewModel.swift
//  KingBurguer
//
//  Created by Alexandre  Servian on 12/03/26.
//

import Foundation

protocol SigninViewModelDelegate {
    func viewModelDidChanged(state: SignInState)
}

class SigninViewModel {
    var delegate: SigninViewModelDelegate?
    
    var state: SignInState = .none {
        didSet {
            delegate?.viewModelDidChanged(state: state)
        }
    }
    
    func send() {
        state = .loading
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.state = .error("Usuario nao existe")
        }
    }
}
