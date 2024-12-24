//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 13.12.2024.
//

import SwiftUI

struct BindingBootcamp: View {
    @State private var backgroundColor = Color.green
    @State private var title = "Title"
    var body: some View {
        VStack {
            Text(title)
                .foregroundStyle(.white)
            ButtonView(backgroundColor: $backgroundColor, title: $title)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundColor)
    }
}

#Preview {
    BindingBootcamp()
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    @Binding var title: String
    var body: some View {
        Button {
            withAnimation {
                backgroundColor = .orange
                title = "This is a title triggered from the button"
            }
        } label: {
            Text("Button")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}
