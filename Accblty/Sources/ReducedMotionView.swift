//
//  ReducedMotionView.swift
//  
//
//  Created by JAVIER CALATRAVA LLAVERIA on 19/7/25.
//


import SwiftUI

struct ReducedMotionView: View {
    @Environment(\.accessibilityReduceMotion) var reduceMotion
    @State private var spin = false
    @State private var scale: CGFloat = 1.0
    @State private var moveOffset: CGFloat = -200

    var body: some View {
        NavigationView {
            ZStack {
                // Background rotating spiral
                Circle()
                    .strokeBorder(Color.purple, lineWidth: 10)
                    .frame(width: 300, height: 300)
                    .rotationEffect(.degrees(spin ? 360 : 0))
                    .animation(reduceMotion ? nil : .linear(duration: 3).repeatForever(autoreverses: false), value: spin)

                // Scaling and bouncing circle
                Circle()
                    .fill(Color.orange)
                    .frame(width: 100, height: 100)
                    .scaleEffect(scale)
                    .offset(x: reduceMotion ? 0 : moveOffset)
                    .animation(reduceMotion ? nil : .easeInOut(duration: 1).repeatForever(autoreverses: true), value: scale)
            }
            .onAppear {
                if !reduceMotion {
                    spin = true
                    scale = 1.5
                    moveOffset = 200
                }
            }
            .padding()
            .overlay(
                Text(reduceMotion ? "Reduce Motion Enabled" : "Extreme Motion Enabled")
                    .font(.headline)
                    .padding()
                    .background(Color.black.opacity(0.7))
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .padding(),
                alignment: .top
            )
        }
        .navigationTitle("Reduced motion")
    }
}
