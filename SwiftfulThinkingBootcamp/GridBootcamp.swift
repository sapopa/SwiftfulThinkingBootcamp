//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 08.12.2024.
//

import SwiftUI

struct GridBootcamp: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6),
    ]
    
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid(columns: columns, alignment: .center, spacing: 6, pinnedViews: .sectionHeaders) {
                Section {
                    ForEach(0..<20) { _ in
                        Rectangle().frame(height: 150)
                    }
                } header: {
                    Text("Section 1")
                        .font(.title)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.green)
                        .padding()
                }
                
                Section {
                    ForEach(0..<20) { _ in
                        Rectangle()
                            .fill(.blue)
                            .frame(height: 150)
                    }
                } header: {
                    Text("Section 2")
                        .font(.title)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.red)
                        .padding()
                }

            }
        }
    }
}

#Preview {
    GridBootcamp()
}
