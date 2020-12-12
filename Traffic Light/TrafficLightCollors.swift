//
//  TrafficLightCollors.swift
//  Traffic Light
//
//  Created by Yaroslav on 10.12.2020.
//

import SwiftUI

struct TrafficLightCollors: View {
    
    var redOpacity: Double
    var yellowOpacity: Double
    var greenOpacity: Double
    
    init(redOpacity: Double, yellowOpacity: Double, greenOpacity: Double) {
        self.redOpacity = redOpacity
        self.yellowOpacity = yellowOpacity
        self.greenOpacity = greenOpacity
    }
    
    var body: some View {
        VStack {
            Color(.red)
                .opacity(redOpacity)
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
            Color(.yellow)
                .opacity(yellowOpacity)
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
            Color(.systemGreen)
                .opacity(greenOpacity)
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
        }
    }
}

struct TrafficLightCollors_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightCollors(redOpacity: 0.3,
                            yellowOpacity: 0.3,
                            greenOpacity: 0.3)
    }
}
