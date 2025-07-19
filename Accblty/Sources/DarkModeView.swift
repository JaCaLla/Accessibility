//
//  DarkModeView.swift
//  Accblty
//
//  Created by JAVIER CALATRAVA LLAVERIA on 19/7/25.
//


import SwiftUI

struct DarkModeView: View {
    @State private var isDarkMode = false
    var body: some View {
        NavigationView {
            ZStack {
                 // Background adjusts with mode
                 Color(isDarkMode ? .black : .white)
                     .edgesIgnoringSafeArea(.all)

                 VStack(spacing: 20) {
                     Text("SwiftUI Theme Switch")
                         .font(.title)
                         .foregroundColor(.primary)

                     AsyncImage(url: URL(string: "https://www.barcelo.com/guia-turismo/wp-content/uploads/2022/10/yakarta-monte-bromo-pal.jpg")) { image in
                         image
                             .resizable()
                             .scaledToFit()
                             .frame(width: 300, height: 200)
                             .cornerRadius(12)
                             .shadow(radius: 10)
                     } placeholder: {
                         ProgressView()
                             .frame(width: 300, height: 200)
                     }
                     .accessibilityIgnoresInvertColors(isDarkMode)

                     Toggle(isOn: $isDarkMode) {
                         Text("Dark Mode")
                         .foregroundColor(.secondary)
                     }
                     .padding()
                     .toggleStyle(SwitchToggleStyle(tint: .blue))
                 }
                 .padding()
             }
             .preferredColorScheme(isDarkMode ? .dark : .light)
            .navigationTitle("Dark mode")
        }
    }
}
