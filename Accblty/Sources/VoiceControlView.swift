//
//  VoiceControlView.swift
//  Accblty
//
//  Created by JAVIER CALATRAVA LLAVERIA on 26/7/25.
//


import SwiftUI

struct VoiceControlView: View {
    @State private var name: String = ""
    @State private var message: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("Voice Control Example")
                .font(.title)
                .accessibilityAddTraits(.isHeader)
            
            TextField("Enter your name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .accessibilityLabel("Name Field")
                .accessibilityIdentifier("nameField")

            Button(action: {
                message = "Hello, \(name)!"
            }) {
                Text("Submit")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .accessibilityLabel("Submit Button")
            .accessibilityIdentifier("submitButton")

            if !message.isEmpty {
                Text(message)
                    .font(.headline)
                    .accessibilityLabel(message)
            }

            Spacer()
        }
        .padding()
    }
}