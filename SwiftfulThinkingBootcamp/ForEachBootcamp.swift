//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 08.12.2024.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone!"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
            ForEach(0..<100) { _ in
                Circle()
                    .frame(height: 50)
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
