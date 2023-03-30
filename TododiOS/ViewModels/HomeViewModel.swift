//
//  HomeViewModel.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 22/03/23.
//

import Foundation

final class HomeViewModel : ObservableObject {
    
    @Published var mockList : [MockData] = []
    
    private let apiService: APIService
    init(apiService: APIService = APIService()){
        self.apiService = apiService
        loadData()
    }
    
    func loadData()
    {
        apiService.fetch([MockData].self,url: URL(string:"http://demo5147872.mockable.io/json2")) { result in
            DispatchQueue.main.async {
                switch result {
                case .failure(let error):
                    // print(error.description)
                    print(error)
                case .success(let data):
                    self.mockList = data
                }
            }
        }
    }
}
