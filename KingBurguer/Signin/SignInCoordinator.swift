//
//  SignInCoordinator.swift
//  KingBurguer
//
//  Created by Alexandre  Servian on 14/03/26.
//

import Foundation
import SwiftUI

class SignInCoordinator {
    private let window: UIWindow?
    private let navigationController: UINavigationController
    
    init(window: UIWindow?) {
        self.window = window
        self.navigationController = UINavigationController()
    }
    
    func start() {
        let viewModel = SigninViewModel()
        viewModel.coordinator = self
        
        let signInVC = SigninViewController()
        signInVC.viewModel = viewModel

        navigationController.pushViewController(signInVC, animated: true)
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
    
    func signUp() {
        let signUpCoordinator = SignUpCoordinator(navigationController: navigationController)
        signUpCoordinator.start()
    }
}
