//
//  SignUpCoordinator.swift
//  KingBurguer
//
//  Created by Alexandre  Servian on 14/03/26.
//

import Foundation
import UIKit

class SignUpCoordinator {
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewModel = SignUpViewModel()
        viewModel.coordinator = self
        
        let signUpVC = SignUpViewController()
        signUpVC.viewModel = viewModel
        
        navigationController.pushViewController(signUpVC, animated: true)
    }
}
