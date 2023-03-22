//
//  Book.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 17/03/23.
//

import Foundation

struct Boook: Codable, Identifiable {
    var id = UUID()
    var author: String
    var email: String
    var title: String
}
