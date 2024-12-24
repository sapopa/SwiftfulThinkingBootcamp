//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 18.12.2024.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State private var isAnimating = false
    let timing = 3.0
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.linear(duration: timing), value: isAnimating)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeIn(duration: timing), value: isAnimating)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimating)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeOut(duration: timing), value: isAnimating)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring, value: isAnimating)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 1.0), value: isAnimating)
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
