//
//  TapGestureBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 26.12.2024.
//

import SwiftUI

struct TapGestureBootcamp: View {
    @State private var isSelected = false
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundStyle(isSelected ? .green : .red)
            
            Button {
                withAnimation {
                    isSelected.toggle()
                }
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .clipShape(.rect(cornerRadius: 25))
            }
            
            Text("Button")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .clipShape(.rect(cornerRadius: 25))
                .onTapGesture(count: 2) {
                    withAnimation {
                        isSelected.toggle()
                    }
                }
            
            Spacer()
        }
        .padding(40)
    }
}

#Preview {
    TapGestureBootcamp()
}
