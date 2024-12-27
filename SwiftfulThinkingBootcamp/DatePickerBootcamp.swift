//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sebastian-Alexandru Popa on 25.12.2024.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State private var date: Date = Date()
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        formatter.timeStyle = .short
        return formatter
    }
    let startingDate = Calendar.current.date(from: DateComponents(year: 2024)) ?? Date()
    let endingDate = Calendar.current.date(from: DateComponents(year: 2026)) ?? Date()
    var body: some View {
        Text("Selected date is")
        Text(dateFormatter.string(from: date))
        DatePicker(selection: $date, in: startingDate...endingDate,  displayedComponents: [.date, .hourAndMinute]) {
            Text("Selected Date")
                .foregroundStyle(.red)
        }
        .datePickerStyle(.automatic)
        .tint(.red)
        .padding()
    }
}

#Preview {
    DatePickerBootcamp()
}
