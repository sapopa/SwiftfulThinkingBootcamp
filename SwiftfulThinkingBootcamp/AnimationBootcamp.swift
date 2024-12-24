//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 13.12.2024.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State private var isAnimated = false
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(Animation.default.speed(0.2)) {
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .red : .green)
                .frame(width: isAnimated ? 100 : 300, height: isAnimated ? 100 : 300)
                .rotationEffect(.degrees(isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
//                .animation(.default, value: isAnimated)
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
