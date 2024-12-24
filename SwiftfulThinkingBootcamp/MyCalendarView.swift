//
//  MyCalendarView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 04.12.2024.
//

import SwiftUI

struct MyCalendarView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(colors: [.custom, .pink, .indigo], startPoint: .topLeading, endPoint: .bottomTrailing)
                        .opacity(0.7)
                )
            RoundedRectangle(cornerRadius: 20)
                .stroke()
                .padding(8)
            VStack {
                HStack {
                    Text("My Calendar")
                    Text("PLUS")
                        .padding(4)
                        .background(Color(#colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 1)))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                
                Text("Unlock All Features")
                    .font(.title)
                    .padding(.vertical)
                
                Button("Try For Free") {
                    print("Hello world")
                }
                .foregroundStyle(.primary)
                .font(.title2)
                .padding([.top, .bottom], 10)
                .frame(maxWidth: .infinity)
                .background(LinearGradient(colors: [.orange, .pink, .custom, .purple], startPoint: .leading, endPoint: .trailing))
                .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            .padding(20)
        }
            .frame(height: 200)
    }
}

#Preview {
    MyCalendarView()
}
