//
//  TrafficLightCollors.swift
//  Traffic Light
//
//  Created by Yaroslav on 10.12.2020.
//

import SwiftUI

struct TrafficLightCollor: View {
    
    let opacity: Double
    let color: Color
    
    var body: some View {
        color
            .opacity(opacity)
            .frame(width: 120, height: 120)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct TrafficLightCollors_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightCollor(opacity: 1, color: .green)
    }
}
