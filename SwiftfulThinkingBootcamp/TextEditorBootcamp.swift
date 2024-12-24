//
//  TextEditorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 22.12.2024.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State private var textEditorText = "This is the starting text"
    @State private var savedText = ""
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .colorMultiply(.gray)
                    .clipShape(.rect(cornerRadius: 10))
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .clipShape(.rect(cornerRadius: 10))
                }
                
                Text(savedText)
                
                Spacer()
            }
            .padding()
            .background(.green)
            .navigationTitle("TextEditor Bootcamp!")
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
