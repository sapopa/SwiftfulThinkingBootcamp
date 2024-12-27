//
//  DarkModeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 25.12.2024.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This color is PRIMARY")
                        .foregroundStyle(.primary)
                    Text("This color is SECONDARY")
                        .foregroundStyle(.secondary)
                    Text("This color is black")
                        .foregroundStyle(.black)
                    Text("This color is white")
                        .foregroundStyle(.white)
                    Text("This color is red")
                        .foregroundStyle(.red)
                    Text("This color is globally adaptive!")
                        .foregroundStyle(.adaptive)
                    Text("This color is locally adaptive!")
                        .foregroundStyle(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

#Preview {
    DarkModeBootcamp()
}
