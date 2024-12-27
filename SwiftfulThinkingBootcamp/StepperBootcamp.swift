//
//  StepperBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 25.12.2024.
//

import SwiftUI

struct StepperBootcamp: View {
    @State private var count = 0
    @State private var stepper2Value = 0
    var body: some View {
        VStack {
            Stepper(value: $count, in: -10...10, step: 2) {
                Text("Stepper value: \(count)")
            }
            .colorMultiply(.green)
            .colorInvert()
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + CGFloat(stepper2Value), height: 300)
            
            Stepper("Stepper 2 value: \(stepper2Value)") {
                withAnimation {
                    stepper2Value += 20
                }
            } onDecrement: {
                withAnimation {
                    stepper2Value -= 3
                }
            }
        }
        .padding()
    }
}

#Preview {
    StepperBootcamp()
}
