//
//  ColorPickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 25.12.2024.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    @State private var color: Color = .green
    var body: some View {
        VStack {
            ColorPicker("Select a color", selection: $color, supportsOpacity: false)
                .padding()
                .background(.black)
                .clipShape(.rect(cornerRadius: 20))
                .padding(.horizontal, 50)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(color)
    }
}

#Preview {
    ColorPickerBootcamp()
}
