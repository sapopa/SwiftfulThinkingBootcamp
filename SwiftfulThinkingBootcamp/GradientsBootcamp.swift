//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 03.12.2024.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(
    //                .red
//                    LinearGradient(
//                        gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)), Color(#colorLiteral(red: 0.4500938654, green: 0.9813225865, blue: 0.4743030667, alpha: 1))]),
//                        startPoint: .top, endPoint: .bottom)
//                    RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)), Color(#colorLiteral(red: 0.4500938654, green: 0.9813225865, blue: 0.4743030667, alpha: 1))]), center: .topLeading, startRadius: 5, endRadius: 400)
//                    AngularGradient(gradient: Gradient(colors: [.red, .blue]), center: .topLeading, angle: .degrees(225))
                    .red
                )
            Text("La Raluca! Lorem ipsum dolor sit amet consequitur")
                .font(.callout)
                .multilineTextAlignment(.center)
        }
        .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsBootcamp()
}
