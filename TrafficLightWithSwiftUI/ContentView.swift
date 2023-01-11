//
//  ContentView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Алишер Маликов on 10.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonTitle = "Start"

    @State private var redLight = 0.3
    @State private var yellowLight = 0.3
    @State private var greenLight = 0.3
    
    var body: some View {
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            
            VStack {
                SingleLightView(color: .red, opacity: redLight)
                SingleLightView(color: .yellow, opacity: yellowLight)
                SingleLightView(color: .green, opacity: greenLight)
                Spacer()
                ChangeButtonView(title: buttonTitle) {
                    if buttonTitle == "Start" {
                        buttonTitle = "Next"
                    }
                    nextColor()
                }
            }
            .padding()
        }
    }
    
    
    private func nextColor() {
        if redLight < 1 && yellowLight < 1 && greenLight < 1 {
            redLight = 1
        } else if redLight == 1 {
            redLight = 0.3
            yellowLight = 1
            print(yellowLight, redLight)
        } else if yellowLight == 1 {
            yellowLight = 0.3
            greenLight = 1
        } else if greenLight == 1 {
            greenLight = 0.3
            redLight = 1
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
