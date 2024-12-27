//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 25.12.2024.
//

import SwiftUI

struct SliderBootcamp: View {
    @State private var sliderValue: Double = 0
    @State private var secondarySliderValue: Double = 3
    @State private var secondarySliderTintColor: Color = .purple
    var body: some View {
        VStack {
            Text("Slider value:")
            Text(sliderValue.formatted(.number.precision(.fractionLength(2))))
            
            Slider(value: $sliderValue, in: 0...1, step: 0.05) {
                Text("Slider")
            } onEditingChanged: { _ in
                
            }
            .tint(.red)
            
            Text("Slider 2 value:")
            Text(secondarySliderValue.formatted(.number.precision(.fractionLength(2))))
            
            Slider(value: $secondarySliderValue, in: 1...5, step: 0.5) {
                Text("Some label")
            } minimumValueLabel: {
                Text("Min")
            } maximumValueLabel: {
                Text("Max")
            } onEditingChanged: { changed in
                if changed {
                    secondarySliderTintColor = .random()
                }
            }
            .tint(secondarySliderTintColor)

        }
        
        .padding()

    }
}

#Preview {
    SliderBootcamp()
}


extension Color {
    static func random() -> Color {
        Color(
            red: Double.random(in: 0...1),
            green: Double.random(in: 0...1),
            blue: Double.random(in: 0...1)
        )
    }
}
