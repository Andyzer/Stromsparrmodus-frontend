//
//  LoginViewViewModel.swift
//  Stromsparrmodus-frontend
//
//  Created by spaceCadet on 27.01.24.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var username = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login(){
        guard validate() else  {
            return
        }
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !username.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Fill in all fields"
            
            return false
        }
        
        
        print("Called")
        return false
    }
}
