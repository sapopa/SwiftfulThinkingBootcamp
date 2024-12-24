//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 02.12.2024.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        Rectangle()
            .frame(width: 200, height: 100)
        RoundedRectangle(cornerRadius: 50)
            .trim(from: 0.4, to: 1)
            .frame(width: 300, height: 200)
//        Capsule(style: .circular)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
//            .frame(width: 200, height: 100)
//        Ellipse()
//            .stroke(.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
//            .frame(width: 200, height: 100)
//        Circle()
//            .stroke(.red, lineWidth: 30)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(.purple, lineWidth: 50)
    }
}

#Preview {
    ShapesBootcamp()
}
