//
//  SigninViewController.swift
//  KingBurguer
//
//  Created by Alexandre  Servian on 10/03/26.
//

import Foundation
import UIKit

class SigninViewController: UIViewController {
    let email: UITextField = {
        let ed = UITextField()
        ed.backgroundColor = .white
        ed.placeholder = "Email"
        return ed
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        
        view.addSubview(email)
        
        email.frame = CGRect(x: 0, y: view.bounds.height / 2, width: view.bounds.size.width, height: 50)
    }
}
