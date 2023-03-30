//
//  HomeView.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 22/03/23.
//

import SwiftUI
import SwiftDrawer

struct HomeView: View {
    
    @EnvironmentObject public var control: DrawerControl
    
    @StateObject var homeViewModel = HomeViewModel()

    var body: some View {
        TabView
        {
            ListView()
                .tabItem{
                    Label("Home", image: "Home")
                }
            
            SecondTab()
                .tabItem{
                    Label("Settings", image: "settings")
                }
            
            ThirdTab()
                .tabItem{
                    Label("Favourites", image: "star")
                }
            
        }
        .accentColor(.red)
        .onAppear{
            UITabBar.appearance().isTranslucent = false
            UITabBar.appearance().backgroundColor = .lightGray
        }
    }
    
    func ListView() -> some View
    {
        VStack{
            List(homeViewModel.mockList) { book in
                Text("\(book.title) by \(book.description)")
            }.padding(0)
            Button("Tap me"){
                self.control.show(type: .leftFront, isShow: true)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
