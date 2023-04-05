//
//  ThirdTab.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 30/03/23.
//

import SwiftUI
import SwiftDrawer
import AVKit

struct ThirdTab: View {
 
    var body: some View {
        NavigationView{
            VStack(spacing:0){
                TabView {
                    getVideoView(link:"https://www.youtube.com/watch?v=nA6Jo6YnL9g")
                    getVideoView(link:"https://www.youtube.com/watch?v=nA6Jo6YnL9g")
                    getVideoView(link:"https://www.youtube.com/watch?v=nA6Jo6YnL9g")
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                .frame(height: 300)
                
                VStack(alignment: .leading) {
                    Text("Your Highness").frame(maxWidth: .infinity, alignment: .center)
                    Text("Kalyan Pidugu").frame(maxWidth: .infinity, alignment: .center)
                    
                }
                .padding()
                .cornerRadius(15)
                HStack{
                    Spacer()
                    NavigationLink(destination: QilabhView()){
                        getIconView(title: "Quibah", iconName: "Settings")
                    }
                    Spacer()
                    getIconView(title: "Quibah", iconName: "Settings")
                    Spacer()
                    getIconView(title: "Quibah", iconName: "Settings")
                    Spacer()
                }
                Spacer()
            }
            .padding(.all,0)
        }
    }
    
    func getVideoView(link: String) -> some View{
        VideoPlayer(player: AVPlayer(url:  URL(string: link)!))
            .frame(height: 300)
    }
    
    func getIconView(title:String, iconName:String) -> some View {
        VStack{
            Image("Settings")
                .padding(10)
                .background(.blue)
                .cornerRadius(15)
            Text("Quilabh")
                .foregroundColor(.green)
                .padding(3)
            
        }
    }
}

struct ThirdTab_Previews: PreviewProvider {
    static var previews: some View {
        ThirdTab()
    }
}
