//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 24.12.2024.
//

import SwiftUI

struct PickerBootcamp: View {
    @State private var selection: String = "Most Recent"
    let filterOptions = ["Most Recent", "Most Popular", "Most Liked"]
    var body: some View {
        
        Picker("Filter by", selection: $selection) {
            ForEach(filterOptions, id: \.self) { option in
                Text(option)
                    .tag(option)
            }
        }
        .pickerStyle(.segmented)

        
//        List {
//            Picker(selection: $selection) {
//                ForEach(18..<100) { age in
//                    Text("\(age)")
//                        .tag("\(age)")
//                        .font(.headline)
//                        .foregroundStyle(.red)
//                }
//            } label: {
//                HStack {
//                    Text("Select an age")
//                }
//                .font(.headline)
//                .foregroundStyle(.white)
//                .padding()
//                .padding(.horizontal)
//                .background(.blue)
//                .clipShape(.rect(cornerRadius: 10))
//                .shadow(color: .blue.opacity(0.3), radius: 10, x: 0, y: 10)
//            }
//            .pickerStyle(.menu)
//        }

        
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//            Picker(selection: $selection) {
//                ForEach(18..<100) { age in
//                    Text("\(age)")
//                        .tag("\(age)")
//                        .font(.headline)
//                        .foregroundStyle(.red)
//                }
//            } label: {
//                Text("Picker")
//            }
//            .pickerStyle(.wheel)
//        }

    }
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        let attributes : [NSAttributedString.Key : Any] = [
            .foregroundColor : UIColor.yellow
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
}

#Preview {
    PickerBootcamp()
}
