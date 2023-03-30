//
//  NavigationDrawerView.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 30/03/23.
//

import SwiftUI
import SwiftDrawer

struct NavigationDrawerView: View, SliderProtocol{
    var type: SwiftDrawer.SliderType
    
    init(type: SwiftDrawer.SliderType) {
        self.type = type
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct NavigationDrawerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDrawerView(type: .leftFront)
    }
}
