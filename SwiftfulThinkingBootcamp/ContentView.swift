//
//  ContentView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 02.12.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 30) {
                    MyCalendarView()
                    SymptomView()
                    GradientsBootcamp()
                    ShapesBootcamp()
                    ListBootcamp()
                    ConfirmationDialogBootcamp()
                    TextfieldBootcamp()
                }
            }
            .navigationTitle("Bootcamp")
        }
    }
}

#Preview {
    ContentView()
}
