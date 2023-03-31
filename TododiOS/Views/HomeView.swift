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

    @State var selection = 0
    
    var body: some View {
        TabView(selection: $selection)
        {
            ListView()
                .tabItem{
                    Image("Home")
                }
            
            SecondTab()
                .tabItem{
                    Image("Settings")
                }
            
            ThirdTab()
                .tabItem{
                    Image("Star")
                }
            
        }
        .accentColor(.red)
        .overlay(starOverlay, alignment: .topTrailing)
        .onAppear{
            let appearance = UITabBarAppearance()
            appearance.shadowColor = .white
            appearance.shadowImage = UIImage(named: "tab-shadow")?.withRenderingMode(.alwaysTemplate)
            appearance.backgroundColor = UIColor.darkGray

           UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
    
    @ViewBuilder private var starOverlay: some View {
        if homeViewModel.isLoading {
            ZStack {
                Color(white: 0, opacity: 0.30)
                ProgressView().tint(.white)
            }
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
