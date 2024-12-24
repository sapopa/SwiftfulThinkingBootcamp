//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 18.12.2024.
//

import SwiftUI

struct ListBootcamp: View {
    @State private var fruits = ["apple", "orange", "banana", "peach"]
    @State private var vegetables = ["carrot", "celery", "lettuce"]
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete { indexSet in
                        removeItem(from: &fruits, atOffsets: indexSet)
                    }
                    .onMove { indexSet, offset in
                        moveItem(from: &fruits, indexSet: indexSet, to: offset)
                    }
                    .listRowBackground(Color.orange)
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .foregroundStyle(.orange)
                    .font(.headline)
                }
                Section {
                    ForEach(vegetables, id: \.self) { vegetable in
                        Text(vegetable.capitalized)
                    }
                    .onDelete { indexSet in
                        removeItem(from: &vegetables, atOffsets: indexSet)
                    }
                    .onMove { indexSet, offset in
                        moveItem(from: &vegetables, indexSet: indexSet, to: offset)
                    }
                } header: {
                    Text("Vegetables")
                }
            }
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    AddButton
                }
            }
        }
        .tint(.red)
    }
    
    var AddButton: some View {
        Button("Add") {
            addItem(to: &vegetables, element: "Cucumber")
        }
    }
    
    func removeItem<T>(from collection: inout [T], atOffsets indexSet: IndexSet) {
        collection.remove(atOffsets: indexSet)
    }
    
    func moveItem<T>(from collection: inout [T], indexSet: IndexSet, to destinationIndex: Int) {
        collection.move(fromOffsets: indexSet, toOffset: destinationIndex)
    }
    
    func addItem<T>(to collection: inout [T], element: T){
        collection.append(element)
    }
}

#Preview {
    ListBootcamp()
}
