//
//  ButtonView.swift
//  Traffic Light
//
//  Created by Yaroslav on 10.12.2020.
//

import SwiftUI

struct TrafficLightButton: View {
    
    let firstTap: Bool
    let closure: () -> ()
        
    var body: some View {
            Button(action: { closure() }) {
                Text(firstTap ? "Start" : "Next")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
            }.frame(width: 200, height: 70)
            .background(Color.blue)
            .clipShape(Capsule())
            .overlay(Capsule().stroke(Color.white, lineWidth: 4))
    }
}

struct TrafficLightButton_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightButton(firstTap: true, closure: {})
    }
}


