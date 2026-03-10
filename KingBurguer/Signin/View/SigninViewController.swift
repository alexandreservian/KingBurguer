//
//  SigninViewController.swift
//  KingBurguer
//
//  Created by Alexandre  Servian on 10/03/26.
//

import Foundation
import UIKit

class SigninViewController: UIViewController {
    let email: UITextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        
        view.addSubview(email)
        email.backgroundColor = .white
        email.placeholder = "Email"
        email.frame = CGRect(x: 0, y: view.bounds.height / 2, width: view.bounds.size.width, height: 50)
    }
}
