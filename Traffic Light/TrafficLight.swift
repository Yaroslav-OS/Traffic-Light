//
//  ContentView.swift
//  Traffic Light
//
//  Created by Yaroslav on 10.12.2020.
//

import SwiftUI

struct TrafficLight: View {
    
    @State private var firstTap = true
    
    @State private var redChosen = false
    @State private var yellowChosen = false
    @State private var greenChosen = false
    
    @State private var currentColor = Colors.red
    
    private var redOpacity: Double { redChosen ? 1 : 0.3 }
    private var yellowOpacity: Double { yellowChosen ? 1 : 0.3 }
    private var greenOpacity: Double { greenChosen ? 1 : 0.3 }
            
    private enum Colors {
        case red, yellow, green
    }
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                TrafficLightCollors(redOpacity: redOpacity,
                                    yellowOpacity: yellowOpacity,
                                    greenOpacity: greenOpacity)
                Spacer()
                TrafficLightButton(firstTap: firstTap, closure: buttonPressed)
            }.padding(.top, 20)
        }
    }
    
    private func buttonPressed() {
        firstTap = false
        
        switch currentColor {
        case .red:
            redChosen = true
            greenChosen = false
            currentColor = .yellow
        case .yellow:
            redChosen = false
            yellowChosen = true
            currentColor = .green
        case .green:
            yellowChosen = false
            greenChosen = true
            currentColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TrafficLight()
        }
    }
}
