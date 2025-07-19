//
//  LargerTextView.swift
//  Accblty
//
//  Created by JAVIER CALATRAVA LLAVERIA on 19/7/25.
//


import SwiftUI

struct LargerTextView: View {
    @State private var isDarkMode = false
    var body: some View {
        NavigationView {
            contentNotAccessible()
        }
    }
    
    func contentAccessible() -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Nutrition Facts")
                .font(.title)
                .bold()
                .accessibilityAddTraits(.isHeader)

            Divider()

            HStack {
                Text("Calories")
                    .font(.body)
                Spacer()
                Text("200")
                    .font(.body)
            }

            HStack {
                Text("Total Fat")
                    .font(.body)
                Spacer()
                Text("8g")
                    .font(.body)
            }

            HStack {
                Text("Sodium")
                    .font(.body)
                Spacer()
                Text("150mg")
                    .font(.body)
            }
        }
        .padding()
        .navigationTitle("Larger Text")
    }
    
    func contentNotAccessible() -> some View {
        VStack(alignment: .leading, spacing: 8) {
                    Text("Nutrition Facts")
                        .font(.system(size: 24)) // ❌ Fixed font size, not Dynamic Type

                    Divider()

                    HStack {
                        Text("Calories")
                            .font(.system(size: 16)) // ❌ Not Dynamic Type
                        Spacer()
                        Text("200")
                            .font(.system(size: 16)) // ❌ Not Dynamic Type
                    }

                    HStack {
                        Text("Total Fat")
                            .font(.system(size: 16))
                        Spacer()
                        Text("8g")
                            .font(.system(size: 16))
                    }

                    HStack {
                        Text("Sodium")
                            .font(.system(size: 16))
                        Spacer()
                        Text("150mg")
                            .font(.system(size: 16))
                    }
                }
                .padding()
                .frame(width: 300) // ❌ Fixed width may clip or misalign with larger text
                .navigationTitle("Larger Text")
    }
}
