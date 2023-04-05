//
//  Marker.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 04/04/23.
//

import Foundation

struct Marker: Hashable{
    let degrees: Double
    let label: String
    
    init(degrees: Double, label: String = "") {
        self.degrees = degrees
        self.label = label
    }
    
    func degreeText() -> String{
        String(format: "%.0f", self.degrees)
    }
    
    static func markers() -> [Marker]{
        [
            Marker(degrees: 0, label: "N"),
            Marker(degrees: 30),
            Marker(degrees: 60),
            Marker(degrees: 90, label: "L"),
            Marker(degrees: 120),
            Marker(degrees: 150),
            Marker(degrees: 180, label: "S"),
            Marker(degrees: 210),
            Marker(degrees: 240),
            Marker(degrees: 270, label: "O"),
            Marker(degrees: 300),
            Marker(degrees: 330),
        ]
    }
}
