//
//  SinglLightView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Алишер Маликов on 10.01.2023.
//

import SwiftUI

struct SingleLightView: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 200, height: 200)
            .opacity(opacity)
            .overlay(Circle().stroke(lineWidth: 4))            
    }
}

struct SinglLightView_Previews: PreviewProvider {
    static var previews: some View {
        SingleLightView(color: .red, opacity: 0.3)
    }
}
