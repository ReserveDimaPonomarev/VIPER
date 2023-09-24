//
//  File.swift
//  VIPER
//
//  Created by Дмитрий Пономарев on 31.05.2023.
//

import UIKit

protocol CreateAccountRouterInput {
    func switchToAuthScreen(login: String)
}


final class CreateAccountRouter: UIViewController, CreateAccountRouterInput {
    
    weak var rootView: UIViewController?
    func switchToAuthScreen(login: String) {
        let secondView = SecondViewController(login: login)
        rootView?.navigationController?.pushViewController(secondView, animated: true)
    }
    
}
