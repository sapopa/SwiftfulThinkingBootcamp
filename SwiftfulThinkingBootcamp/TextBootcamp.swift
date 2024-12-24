//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 02.12.2024.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!")
//            .baselineOffset(-50)
            .kerning(2)
            .multilineTextAlignment(.leading)
            .foregroundStyle(.red)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
//            .font(.system(size: 24, weight: .semibold, design: .serif))
        //.font(.body)
        //.bold()
        //.underline()
        //            .underline(color: .red)
        //            .italic()
        //            .strikethrough(color: .green)
        
    }
}

#Preview {
    TextBootcamp()
}
