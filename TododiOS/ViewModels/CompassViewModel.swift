//
//  CompassViewModel.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 06/04/23.
//

import Foundation

final class CompassViewModel : ObservableObject{
  
    @Published var qiblaDirection: Double? = nil
    @Published var isLoading = false
    
    private let apiService: APIService
    let locationManager: LocationManager
    
    init(apiService: APIService = APIService()) {
        self.apiService = apiService
        locationManager = LocationManager()
    }
    
    func LoadQiblaDirection()
    {
        guard let location = locationManager.location else {
                  return
        }
        let endPoint =  "http://api.aladhan.com/v1/qibla/\(location.latitude)/\(location.longitude)"
        
        apiService.fetch(QiblaModel.self,url: endPoint){ result in
            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                case .failure(let error):
                    // print(error.description)
                    print(error)
                case .success(let direction):
                    self.qiblaDirection = direction.data.direction
                }
            }
        }
    }
    
}
