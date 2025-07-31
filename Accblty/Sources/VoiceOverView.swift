//
//  VoiceOverView.swift
//  Accblty
//
//  Created by JAVIER CALATRAVA LLAVERIA on 26/7/25.
//


import SwiftUI

struct VoiceOverView: View {
    @State private var isToggled = false
       
       var body: some View {
           VStack(spacing: 40) {
               Text("VoiceOver Interaction Example")
                   .font(.title)
                   .accessibilityAddTraits(.isHeader)
               
               Button(action: {
                   isToggled.toggle()
               }) {
                   Image(systemName: isToggled ? "checkmark.circle.fill" : "circle")
                       .resizable()
                       .frame(width: 60, height: 60)
                       .foregroundColor(isToggled ? .green : .gray)
               }
               .accessibilityLabel("Toggle button")
               .accessibilityValue(isToggled ? "On" : "Off")
               .accessibilityHint("Double tap to change the toggle state")

               Text("Toggle is currently \(isToggled ? "On" : "Off")")
           }
           .padding()
       }
}