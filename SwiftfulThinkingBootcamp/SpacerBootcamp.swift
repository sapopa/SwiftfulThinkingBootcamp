//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 05.12.2024.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                //            Spacer()
                //            Rectangle()
                //                .fill(.black)
                //                .frame(width: 50, height: 50)
                //            Spacer()
                //            Rectangle()
                //                .fill(.red)
                //                .frame(width: 50, height: 50)
                //            Spacer()
                //            Rectangle()
                //                .fill(.green)
                //                .frame(width: 50, height: 50)
                //            Spacer()
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .padding(.horizontal)
            .font(.title)
            Spacer()
            
            Rectangle()
                .frame(height: 55)
        }
//        .background(.yellow)
//        .padding(.horizontal, 200)
//        .background(.pink)
        
    }
}

#Preview {
    SpacerBootcamp()
}
