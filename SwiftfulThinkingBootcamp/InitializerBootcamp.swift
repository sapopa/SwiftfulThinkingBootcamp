//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 07.12.2024.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
    init(count: Int, fruit: Fruit) {
        switch fruit {
        case .apple:
            self.title = "Apples"
            self.backgroundColor = .red
        case .orange:
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
        self.count = count
    }
    
    enum Fruit {
        case apple, orange
    }
}

#Preview {
    VStack {
        InitializerBootcamp(count: 55, fruit: .orange)
        InitializerBootcamp(count: 546, fruit: .apple)
    }
}
