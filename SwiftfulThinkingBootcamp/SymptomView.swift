//
//  SymptomView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 04.12.2024.
//

import SwiftUI

struct SymptomView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(UIColor.systemGray5))
            HStack {
                VStack(alignment: .leading, spacing: 30) {
                    Text("How are you feeling today?")
                        .font(.title3.bold())
                    Text("Tell us more about your body to get analysis")
                        .multilineTextAlignment(.leading)
                        .frame(width: 200, height: 50, alignment: .leading)
                        .foregroundStyle(.gray)
                    Button("Add Symptom") {
                        
                    }
                    .font(.headline)
                    .padding(.vertical)
                    .padding(.horizontal, 30)
                    .background(.indigo)
                    .foregroundStyle(.primary)
                    .clipShape(.capsule)
                }
                Spacer()
                VStack {
                    Spacer()
                    Image(systemName: "sun.rain.circle")
                        .font(.system(size: 100))
                }
            }
            .padding()
        }
            .frame(width: .infinity, height: 200)
    }
}

#Preview {
    SymptomView()
}
