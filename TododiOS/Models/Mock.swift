//
//  Mock.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 29/03/23.
//

import Foundation

struct MockData : Codable, Identifiable
{
    var id = UUID()
    var title: String
    var description: String
    
    private enum CodingKeys: String, CodingKey {
           case title, description
    }
}
