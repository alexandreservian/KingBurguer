//
//  SigninViewModel.swift
//  KingBurguer
//
//  Created by Alexandre  Servian on 12/03/26.
//

import Foundation

protocol SignUpViewModelDelegate {
    func viewModelDidChanged(state: SignUpState)
}

class SignUpViewModel {
    var delegate: SignUpViewModelDelegate?
    var coordinator: SignUpCoordinator?
    
    var state: SignUpState = .none {
        didSet {
            delegate?.viewModelDidChanged(state: state)
        }
    }
    
    func send() {
        state = .loading
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.state = .goToHome
        }
    }
    
    func goToHome() {
        coordinator?.home()
    }
}
