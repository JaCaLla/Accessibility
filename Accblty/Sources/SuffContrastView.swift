//
//  SuffContrastView.swift
//  Accblty
//
//  Created by JAVIER CALATRAVA LLAVERIA on 18/7/25.
//


import SwiftUI

struct SuffContrastView: View {
    @State private var showAlert = false
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    showAlert = true
                }) {
                    Text("Tap Me")
                        .foregroundColor(.blue)
                        .padding()
                        .background(Color.indigo)
                        .cornerRadius(8)
                }
                .alert("Alert Title", isPresented: $showAlert) {
                    Button("OK", role: .cancel) { }
                } message: {
                    Text("This is the alert message.")
                }
            }
            .navigationTitle("S. Contrast")
        }
    }
}
