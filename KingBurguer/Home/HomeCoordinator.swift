//
//  HomeCoordinator.swift
//  KingBurguer
//
//  Created by Alexandre  Servian on 17/03/26.
//
import Foundation
import UIKit

class HomeCoordinator {
    private let window: UIWindow?
    private let navigationController: UINavigationController
    
    init(window: UIWindow?){
        self.window = window
        self.navigationController = UINavigationController()
    }
    
    func start(){
        let homeVC = HomeViewController()
        navigationController.pushViewController(homeVC, animated: true)
        window?.rootViewController = navigationController
    }
    
}
