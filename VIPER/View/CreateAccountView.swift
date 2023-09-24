//
//  ViewController.swift
//  VIPER
//
//  Created by Дмитрий Пономарев on 31.05.2023.
//

import UIKit

protocol CreateAccountViewInput {
    var viewOutput: CreateAccountViewOutput? {get set}
}

protocol CreateAccountViewOutput {
    func userSelectCreateAccount(login: String, password: String)
}

final class CreateAccountView: UIViewController, CreateAccountViewInput {
    
    var viewOutput: CreateAccountViewOutput?
    let loginLabel = UILabel()
    let passwordLabel = UILabel()
    let button = UIButton()
    var array: Array = [1, 2, 3]
    
    deinit {
        print("deinited")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        let asembly = Assembly()
        asembly.createAssemblyModul(view: self)
        
        view.addSubview(passwordLabel)
        view.addSubview(loginLabel)
        view.addSubview(button)
        loginLabel.center = view.center
        loginLabel.bounds.size = CGSize(width: 100, height: 50)
        passwordLabel.center.x = view.center.x
        passwordLabel.center.y = view.center.y + 200
        passwordLabel.bounds.size = CGSize(width: 100, height: 50)
        passwordLabel.text = "password"
        loginLabel.text = "login"
        loginLabel.textColor = .blue
        passwordLabel.textColor = .black
        button.bounds.size = CGSize(width: 100, height: 50)
        button.center.x = view.center.x
        button.center.y = view.center.y - 200
        button.backgroundColor = .brown

        button.addTarget(self, action: #selector(makeAction), for: .touchUpInside)
    }
    
    @objc func makeAction() {
        viewOutput?.userSelectCreateAccount(login: loginLabel.text!, password: passwordLabel.text!)
    }
}

