//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 22.12.2024.
//

import SwiftUI

struct AlertBootcamp: View {
    @State private var isAlertPresented = false
    @State private var counter = 0
    var body: some View {
        Text("Counter: \(counter)")
        Button("Click Here") {
            isAlertPresented.toggle()
        }
        .alert("Title of alert", isPresented: $isAlertPresented) {
            Button("Increase") {
                counter += 1
            }
            Button("Decrease") {
                counter -= 1
            }
        } message: {
            Text("You can change the value of the counter")
        }

    }
}

#Preview {
    AlertBootcamp()
}
