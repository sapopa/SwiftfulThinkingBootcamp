//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 26.12.2024.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    
    @State private var data = ["Apples", "Bananas", "Oranges"]
    @State private var showAlert = false
    
    // MARK: BODY
    var body: some View {
        NavigationView {
            foregroundLayer
                .frame(maxWidth: .infinity)
                .background(.red)
                .navigationTitle("Documentation")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("ALERT") {
                            showAlert.toggle()
                        }
                    }
                }
                .alert(getAlert(name: "Sebastian"), isPresented: $showAlert) {
                    
                }
        }
    }
    
    
    /// This view represents the layer that overlays the background
    private var foregroundLayer: some View {
        ScrollView {
            Text("Hello")
            ForEach(data, id: \.self) { item in
                Text(item)
                    .font(.headline)
            }
        }
    }
    
    //MARK: FUNCTIONS
    
    
    /// This function returns an alert message as a String, customizable with a user name.
    ///
    /// The output of this function is supposed to be an alert that prints a specific message, but tailored for each individual user. Note that the return type is String an NOT an Alert.
    /// ```
    /// getAlert(name: "Sebastian") -> "This is the alert with your name -> \(name)!"
    /// ```
    /// - WARNING: There is no additional message in this alert String.
    /// - Parameter name: A String parameter which represents the name of the user.
    /// - Returns: The alert message as a string.
    private func getAlert(name: String) -> String {
        return "This is the alert with your name -> \(name)!"
    }
}

#Preview {
    DocumentationBootcamp()
}
