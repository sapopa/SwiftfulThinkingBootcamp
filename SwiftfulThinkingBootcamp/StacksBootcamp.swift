//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 05.12.2024.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
//        ZStack(alignment: .top) {
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//            
//            VStack(alignment: .leading, spacing: 30) {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150, alignment: .center)
//                
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 100, height: 100)
//                
//                HStack(alignment: .bottom) {
//                    Rectangle()
//                        .fill(.purple)
//                        .frame(width: 50, height: 50)
//                    Rectangle()
//                        .fill(.pink)
//                        .frame(width: 75, height: 75)
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 25, height: 25)
//                }
//                .background(.white)
//            }
//            .background(.black)
//        }
//        VStack(alignment: .center) {
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//
//            Text("Items in your card")
//                .font(.caption)
//                .foregroundStyle(.gray)
//        }
        VStack(spacing: 50) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundStyle(.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundStyle(.white)
                .background {
                    Circle()
                        .frame(width: 100, height: 100)
                }
        }
    }
}

#Preview {
    StacksBootcamp()
}
