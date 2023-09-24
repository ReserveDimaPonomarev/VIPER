//
//  Assembly.swift
//  VIPER
//
//  Created by Дмитрий Пономарев on 31.05.2023.
//

import Foundation
import UIKit

class Assembly {
    
    func createAssemblyModul(view: CreateAccountView) {
        
        let router = CreateAccountRouter()
        let interactor = CreateAccountInteractor()
        let presenter = CreateAccountPresenter(router: router, interactor: interactor, view: view)
        view.viewOutput = presenter
        interactor.outPut = presenter
        router.rootView = view
        
    }
    
}
