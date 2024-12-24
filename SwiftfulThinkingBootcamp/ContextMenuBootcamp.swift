//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 22.12.2024.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    @State private var backgroundColor: Color = .purple
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundStyle(.white)
        .padding(30)
        .background(backgroundColor)
        .clipShape(.rect(cornerRadius: 20))
        .contextMenu {
            Button {
                withAnimation {
                    backgroundColor = .yellow
                }
            } label: {
                Label("Share post", systemImage: "flame.fill")
            }

            Button {
                withAnimation {
                    backgroundColor = .red
                }
            } label: {
                Label("Delete post", systemImage: "trash.fill")
            }
            
            Button {
                withAnimation {
                    backgroundColor = .green
                }
            } label: {
                Label("Save post", systemImage: "arrow.up.circle.fill")
            }
        }
    }
}

#Preview {
    ContextMenuBootcamp()
}
