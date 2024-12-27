//
//  TabViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 25.12.2024.
//

import SwiftUI

struct TabViewBootcamp: View {
    let icons = ["heart.fill", "globe", "house.fill", "person.fill"]
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                TabView {
                    ForEach(icons, id: \.self) { icon in
                        Image(systemName: icon)
                            .resizable()
                            .scaledToFit()
                            .padding(30)
                    }
                }
                .background(RadialGradient(gradient: Gradient(colors: [.red, .blue]), center: .center, startRadius: 5, endRadius: 300))
                .frame(height: 300)
                .tabViewStyle(PageTabViewStyle())
            }
            Tab("About", systemImage: "book") {
                Text("Hello About")
            }
            Tab("Profile", systemImage: "person") {
                Text("Hello Profile")
            }
        }
    }
}

#Preview {
    TabViewBootcamp()
}
