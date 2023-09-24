//
//  SecondViewController.swift
//  VIPER
//
//  Created by Дмитрий Пономарев on 31.05.2023.
//

import UIKit

class SecondViewController: UIViewController {

    let label = UILabel()

    
    let login: String
    
    init(login: String) {
        self.login = login
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray

    }
}
