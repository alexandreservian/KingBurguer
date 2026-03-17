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
    var coordinator: SignInCoordinator?
    
    var state: SignInState = .none {
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
    
    func goToSignUp() {
        coordinator?.signUp()
    }
    
    func goToHome() {
        coordinator?.home()
    }
}
