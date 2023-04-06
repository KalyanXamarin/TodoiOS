//
//  QiblaModel.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 06/04/23.
//

import Foundation

struct QiblaModel: Codable {
    let code: Int
    let status: String
    let data: DataClass
}

struct DataClass: Codable {
    let latitude, longitude, direction: Double
}
