//
//  DifferentiateColorView.swift
//  Accblty
//
//  Created by JAVIER CALATRAVA LLAVERIA on 19/7/25.
//


import SwiftUI

struct DifferentiateColorView: View {
    @State private var isDiffColorOn = false
    var body: some View {
        NavigationView {
            VStack {
              
                if isDiffColorOn {
                    contentAccessible()
                } else {
                    contentNotAccessible()
                }
                
                Toggle(isOn: $isDiffColorOn) {
                    Text("Differentiate color")
                    .foregroundColor(.secondary)
                }
                .padding()
                .toggleStyle(SwitchToggleStyle(tint: .blue))
            }
            .navigationTitle("Differentiate Color")

        }
    }
    
    func contentAccessible() -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(systemName: "xmark.circle.fill")
                  .resizable()
                  .frame(width: 50, height: 50)
                  .foregroundColor(.red)
            Image(systemName: "checkmark.circle.fill")
                  .resizable()
                  .frame(width: 50, height: 50)
                  .foregroundColor(.green)
            
        }
        .padding()
    }
    
    func contentNotAccessible() -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(systemName: "circlebadge.fill")
                  .resizable()
                  .frame(width: 50, height: 50)
                  .foregroundColor(.red)
            Image(systemName: "circlebadge.fill")
                  .resizable()
                  .frame(width: 50, height: 50)
                  .foregroundColor(.green)
            
        }
        .padding()
    }
}