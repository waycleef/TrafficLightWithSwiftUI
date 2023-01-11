//
//  ChangeButtonView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Алишер Маликов on 10.01.2023.
//

import SwiftUI

struct ChangeButtonView: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20, style:  .continuous)
            .stroke(Color.white, lineWidth: 4))
    }
}

struct ChangeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeButtonView(title: "Start", action: {})
    }
}
