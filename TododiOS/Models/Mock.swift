//
//  Mock.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 29/03/23.
//

import Foundation

struct Mock: Codable, Identifiable
{
    var id = UUID()
    var MockList : [MockData] = []
}

struct MockData : Codable
{
    var title: String
    var description: String
}
