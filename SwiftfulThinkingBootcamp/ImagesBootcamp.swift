//
//  ImagesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 04.12.2024.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        Image("pasta")
//            .renderingMode(.template)
            .resizable()
            .scaledToFill()
            .frame(width: 400, height: 400)
            .clipped()
            .clipShape(RoundedRectangle(cornerRadius: 150))
//            .foregroundStyle(.red)
    }
}

#Preview {
    ImagesBootcamp()
}
