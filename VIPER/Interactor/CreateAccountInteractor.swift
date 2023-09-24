//
//  CreateAccountInteractor.swift
//  VIPER
//
//  Created by Дмитрий Пономарев on 31.05.2023.
//

import Foundation

protocol CreateAccountInteractorInput: AnyObject {
    var outPut: CreateAccountInteractorOutput? {get set}
    func createAccount(login: String, password: String)
}
protocol CreateAccountInteractorOutput: AnyObject {
    func didReceive(error: String)
    func didCreateSuccess(with login: String)
}


final class CreateAccountInteractor: CreateAccountInteractorInput {
    
    weak var outPut: CreateAccountInteractorOutput?
    
    func createAccount(login: String, password: String) {
        let _ = Account(login: login, password: password)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            self?.outPut?.didCreateSuccess(with: login)
        }
    }
}
