//
//  HomeViewModel.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 22/03/23.
//

import Foundation

final class HomeViewModel : ObservableObject {
    
    private let apiService: APIService
    init(apiService: APIService = APIService()){
        self.apiService = apiService
    }
    
}
