//
//  OnAppearBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 26.12.2024.
//

import SwiftUI

struct OnAppearBootcamp: View {
    @State private var myText = "Start text."
    @State private var count = 0
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(0..<50) { index in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .overlay {
                                Text("This is the \(ordinalString(for: index)) item")
                                    .font(.title)
                                    .bold()
                                    .italic()
                                    .foregroundStyle(.red)
                            }
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is my new new text"
                }
                myText = "This is my new text!"
            }
            .onDisappear() {
                myText = "This is my old text!"
            }
            .navigationTitle("On Appear \(count)")
        }
    }
    
    private func ordinalString(for number: Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .ordinal
        return formatter.string(from: NSNumber(value: number)) ?? "\(number)"
    }
}

#Preview {
    OnAppearBootcamp()
}
