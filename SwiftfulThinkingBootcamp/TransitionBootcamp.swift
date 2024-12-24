//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 18.12.2024.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State private var showView = false
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottom) {
                VStack {
                    HStack{
                        Button("Button") {
                            withAnimation(.spring) {
                                showView.toggle()
                            }
                        }
                    }
                    .frame(maxWidth: .infinity)
                    Spacer()
                }
                if showView {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(height: geometry.size.height * 0.5)
//                        .transition(.move(edge: .trailing))
                        .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing)))
                }
            }
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

#Preview {
    TransitionBootcamp()
}
