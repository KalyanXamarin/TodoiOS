//
//  LoginView.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 16/03/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            Image("Logo").resizable().frame(width: 150, height: 150, alignment: .center)
            Text("sign_in")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top,15)
            
            TextField("username",text:self.$email)
                .autocapitalization(.none)
                .padding()
                .background(RoundedRectangle(cornerRadius:6).stroke(Color.gray,lineWidth:2))
                .padding(.top,0)
            
            SecureField("password", text: self.$password)
                .autocapitalization(.none)
                .padding()
                .background(RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 2))
            
            Button(action:Login){
                    Text("sign_in")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
            }
            .background(Color.blue)
            .cornerRadius(6)
            .padding(.top, 6)
            
            
        }.padding(.horizontal, 15)
    }
    
    func Login()
    {
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
