//
//  CreateAccountPresenter.swift
//  VIPER
//
//  Created by Дмитрий Пономарев on 31.05.2023.
//

import Foundation

protocol CreateAccountPresenterInput {
    var output: CreateAccountPresenterOutput? { get set }
}
protocol CreateAccountPresenterOutput: AnyObject {
    
}

final class CreateAccountPresenter: CreateAccountPresenterInput {
    weak var output: CreateAccountPresenterOutput?
    
    private let router: CreateAccountRouterInput
    private let interactor: CreateAccountInteractorInput
    private let view: CreateAccountViewInput
    
    init(router: CreateAccountRouterInput, interactor: CreateAccountInteractorInput, view: CreateAccountViewInput) {
        self.router = router
        self.interactor = interactor
        self.view = view
    }
}


extension CreateAccountPresenter: CreateAccountViewOutput {
    func userSelectCreateAccount(login: String, password: String) {
        interactor.createAccount(login: login, password: password)
    }
}

extension CreateAccountPresenter: CreateAccountInteractorOutput {
    func didReceive(error: String) {
    }
    
    func didCreateSuccess(with login: String) {
        router.switchToAuthScreen(login: login)
    }
    
    
}
