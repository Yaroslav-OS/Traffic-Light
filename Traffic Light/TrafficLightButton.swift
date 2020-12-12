//
//  ButtonView.swift
//  Traffic Light
//
//  Created by Yaroslav on 10.12.2020.
//

import SwiftUI

struct TrafficLightButton: View {
    
    private var firstTap: Bool
    private var closure: () -> ()
    
    init(firstTap: Bool, closure: @escaping () -> ()) {
        self.firstTap = firstTap
        self.closure = closure
    }
        
    var body: some View {
        ZStack {
            Color(.blue)
                .frame(width: 200, height: 70)
                .clipShape(Capsule())
                .overlay(Capsule().stroke(Color.white, lineWidth: 4))
            Button(action: { closure() } ) {
                Text(firstTap ? "Start" : "Next")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
            }
        }
    }
}
