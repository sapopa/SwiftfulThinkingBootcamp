//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 18.12.2024.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State private var showSheet = false
    
    var body: some View {
        VStack {
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(20)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(radius: 10)
            }
//            .fullScreenCover(isPresented: $showSheet) {
//                SecondScreen()
//            }
            .sheet(isPresented: $showSheet) {
                SecondScreen()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.green)
    }
}

struct SecondScreen: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .background(.red)
    }
}

#Preview {
    SheetsBootcamp()
}
