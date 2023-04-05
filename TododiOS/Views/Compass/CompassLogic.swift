//
//  CompassLogic.swift
//  TododiOS
//
//  Created by kalyan Pidugu on 04/04/23.
//

import Foundation
import CoreMotion

class CompassLogic: ObservableObject {
    private let motionManger = CMMotionManager();
    private let updateRate: Double = 1/100
    private(set) var north: Double = .zero {
        didSet{
            objectWillChange.send()
        }
    }
    
    init() {
        motionManger.startDeviceMotionUpdates()
        
        if motionManger.isAccelerometerAvailable {
            motionManger.accelerometerUpdateInterval = updateRate
            motionManger.startDeviceMotionUpdates(using: .xMagneticNorthZVertical, to: .main) { data, error in
                guard let validData = data else {
                    fatalError("compass not avaliable")
                }
                self.north = -validData.heading
                print("N:", validData.heading)
            }
        }
    }
}
