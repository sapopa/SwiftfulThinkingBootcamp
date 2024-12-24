//
//  ButtonsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 10.12.2024.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            Button("Press me!") {
                self.title = "button was pressed"
            }
            .tint(.red)
            Button {
                self.title = "button two was pressed"
            } label: {
                Image(systemName: "plus")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.blue)
                    .clipShape(.capsule)
                    .shadow(radius: 10)
            }

        }
    }
}

#Preview {
    ButtonsBootcamp()
}
