//
//  SignInState.swift
//  KingBurguer
//
//  Created by Alexandre  Servian on 14/03/26.
//

import Foundation

enum SignInState {
    case none
    case loading
    case goToHome
    case error(String)
}
