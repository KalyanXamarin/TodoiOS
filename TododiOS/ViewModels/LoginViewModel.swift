//
//  LoginViewModel.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 22/03/23.
//

import Foundation

final class LoginViewModel : ObservableObject {
    
    @Published var isHome = false
    private let apiService: APIService
    init(apiService: APIService = APIService()){
        self.apiService = apiService
    }
    
    func login(user:String, pass: String){
        apiService.loginToken(username: user, password: pass){ result in
           DispatchQueue.main.async {
               switch result {
               case .failure(let error):
                   // print(error.description)
                   print(error)
               case .success(let auth):
                   UserDefaults.standard.set(auth.access_token, forKey: "auth_key")
                   self.isHome = true
               }
           }
        }
    }
}
