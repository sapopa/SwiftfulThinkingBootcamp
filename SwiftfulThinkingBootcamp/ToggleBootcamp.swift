//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 22.12.2024.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State private var isOn = false
    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(isOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(isOn: $isOn) {
                Text("Change Status")
            }
            .tint(.purple)
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBootcamp()
}
