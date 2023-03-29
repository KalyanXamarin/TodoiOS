//
//  HomeView.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 22/03/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel = HomeViewModel()
    var body: some View {
        Text("Hello Home View")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
