//
//  QilabhViewModel.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 05/04/23.
//

import Foundation

final class QilbahViewModel: ObservableObject{
    
    private let apiService: APIService
    @Published var quilabh:[QuilabhModel] = []
    
    init(apiService: APIService = APIService()) {
        self.apiService = apiService
        quilabh = [
            QuilabhModel(name: "Test", iconName: "Settings"),
            QuilabhModel(name: "Test again", iconName: "Settings"),
            QuilabhModel(name: "Test again again", iconName: "Settings"),
            QuilabhModel(name: "Test again again", iconName: "Settings"),
            QuilabhModel(name: "Test again again", iconName: "Settings"),
            QuilabhModel(name: "Test again again", iconName: "Settings"),
        ]
    }
    
}

struct QuilabhModel: Hashable, Identifiable
{
    var id = UUID()
    let name:String
    let iconName:String
}
