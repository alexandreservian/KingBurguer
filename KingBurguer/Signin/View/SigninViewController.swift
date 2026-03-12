//
//  SigninViewController.swift
//  KingBurguer
//
//  Created by Alexandre  Servian on 10/03/26.
//

import Foundation
import UIKit

class SigninViewController: UIViewController, SigninViewModelDelegate {
    var viewModel: SigninViewModel? {
        didSet {
            viewModel?.delegate = self
        }
    }
    
    let email: UITextField = {
        let ed = UITextField()
        ed.backgroundColor = .white
        ed.placeholder = "Email"
        ed.translatesAutoresizingMaskIntoConstraints = false
        return ed
    }()
    
    let password: UITextField = {
        let ed = UITextField()
        ed.backgroundColor = .white
        ed.placeholder = "Entre com sua senha"
        ed.translatesAutoresizingMaskIntoConstraints = false
        return ed
    }()
    
    lazy var send: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Entrar", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = .yellow
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(sendDidTap), for: .touchUpInside)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        
        view.addSubview(email)
        view.addSubview(password)
        view.addSubview(send)
        
        let emailConstraints = [
            email.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            email.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            email.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            email.heightAnchor.constraint(equalToConstant: 50.0),
        ]
        
        let passwordConstraints = [
            password.leadingAnchor.constraint(equalTo: email.leadingAnchor),
            password.trailingAnchor.constraint(equalTo: email.trailingAnchor),
            password.topAnchor.constraint(equalTo: email.bottomAnchor, constant: 10.0),
            password.heightAnchor.constraint(equalToConstant: 50.0),
        ]
        
        let sendConstraints = [
            send.leadingAnchor.constraint(equalTo: email.leadingAnchor),
            send.trailingAnchor.constraint(equalTo: email.trailingAnchor),
            send.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 10.0),
            send.heightAnchor.constraint(equalToConstant: 50.0),
        ]
        
        NSLayoutConstraint.activate(emailConstraints)
        NSLayoutConstraint.activate(passwordConstraints)
        NSLayoutConstraint.activate(sendConstraints)
    }
    
    @objc func sendDidTap(_ btn: UIButton) {
        viewModel?.send()
    }
    
    func viewModelDidChanged(viewModel: SigninViewModel) {
        print("a viewmodel notificou a viewcontrol")
    }
}
