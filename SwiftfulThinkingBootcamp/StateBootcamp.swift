//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 11.12.2024.
//

import SwiftUI

struct StateBootcamp: View {
    @State private var backgroundColor = Color.green
    @State private var title = "My Title"
    @State private var count = 0
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
                .font(.title)
            Text("Count: \(count)")
                .font(.headline)
                .underline()
            
            HStack(spacing: 20) {
                Button("Button 1") {
                    withAnimation {
                        backgroundColor = .purple
                        title = "Button 1 was pressed"
                        count += 1
                    }
                }
                
                Button("Button 2") {
                    withAnimation {
                        backgroundColor = .red
                        title = "Button 2 was pressed"
                        count -= 1
                    }
                }
            }
        }
        
        .foregroundStyle(.white)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundColor)
    }
}

#Preview {
    StateBootcamp()
}
