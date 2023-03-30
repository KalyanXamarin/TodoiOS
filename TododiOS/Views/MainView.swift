//
//  MainView.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 30/03/23.
//

import SwiftUI
import SwiftDrawer

struct MainView: View {
    var body: some View {
        Drawer()
            .setSlider(view: NavigationDrawerView(type: .leftFront))
            .setMain(view: HomeView())
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
