//
//  SecondTab.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 30/03/23.
//

import SwiftUI

struct SecondTab: View {
    
    @ObservedObject var compass = CompassLogic()
    var body: some View {
         VStack {
             Capsule()
                 .frame(width: 5, height: 50)
             
             ZStack {
                 ForEach(Marker.markers(), id: \.self) { marker in
                     CompassMarkerView(marker: marker, compassDegrees: compass.north)
                 }
                 .frame(width: 300, height: 300)
                 .rotationEffect(Angle(degrees: compass.north))
             }
         }
    }
}

struct SecondTab_Previews: PreviewProvider {
    static var previews: some View {
        SecondTab()
    }
}
