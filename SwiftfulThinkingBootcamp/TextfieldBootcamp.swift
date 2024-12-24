//
//  TextfieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 22.12.2024.
//

import SwiftUI

struct TextfieldBootcamp: View {
    @State private var textFieldText: String = ""
    @State private var dataArray: [String] = []
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
//                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(.gray.opacity(0.3))
                    .clipShape(.rect(cornerRadius: 10))
                    .foregroundStyle(.red)
                    .font(.headline)
                    .keyboardType(.decimalPad)
                
                Button {
                    if isTextAppropriate() {
                        saveText()
                    }
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(isTextAppropriate() ? .blue : .gray)
                        .clipShape(.rect(cornerRadius: 10))
                        .foregroundStyle(.white)
                        .font(.headline)
                }
                .disabled(!isTextAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp!")
        }
    }
    
    func isTextAppropriate() -> Bool {
        return textFieldText.count >= 3
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    TextfieldBootcamp()
}
