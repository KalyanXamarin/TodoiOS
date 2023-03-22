//
//  LoginViewModel.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 22/03/23.
//

import Foundation

final class LoginViewModel : ObservableObject {
    
    private let apiService: APIService
    init(apiService: APIService = APIService()){
        self.apiService = apiService
    }
    
    func login(user:String, pass: String){
        var data = LoginModel(granttype: "password", username: user, password: pass)
        
        let url = URL(string: "https://acgmoqataamobileapi-staging.azurewebsites.net/token")
        apiService.post(AuthenticationDataContract.self, body: data, url: url){ result in
            print("\nTuple After Modification: ")
        }
            
    }
}
