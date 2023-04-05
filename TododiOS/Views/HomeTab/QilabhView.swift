//
//  QilabhView.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 05/04/23.
//

import SwiftUI

struct QilabhView: View {
    
    @StateObject var qilabhViewModel = QilbahViewModel()
    
    var body: some View {
        VStack{
            List(qilabhViewModel.quilabh) { book in
                HStack{
                    Image(book.iconName)
                        .resizable()
                        .padding(10)
                        .frame(width: 40, height: 40)
                        .cornerRadius(20)
                        .background(.white)
                        .clipShape(Circle())
                        .padding(20)
                    Text(book.name)
                        .frame(width: .infinity)
                    Spacer()
                }
                .background(.green)
                .padding(0)
                .cornerRadius(15)
            }.padding(0)
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(placement: .principal)
            {
                HStack{
                    Spacer()
                    Text("Title")
                        .frame(width: .infinity, height: .infinity)
                    Spacer()
                }
                .background(.green)
            }
        }
    }
}

struct QilabhView_Previews: PreviewProvider {
    static var previews: some View {
        QilabhView()
    }
}
