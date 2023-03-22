//
//  ContentView.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 16/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            if UserDefaults.standard.object(forKey: "auth_key") == nil
            {
                LoginView()
            }
            else
            {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


