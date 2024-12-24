//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 04.12.2024.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "paperclip.badge.ellipsis")
            .resizable()
            .scaledToFit()
//            .aspectRatio(contentMode: .fit)
//            .font(.largeTitle)
//            .font(.system(size: 200))
            .foregroundStyle(.red, .orange)
            .frame(width: 300, height: 300)
//            .clipped()
    }
}

#Preview {
    IconsBootcamp()
}
