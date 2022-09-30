//
//  DatePickerExample.swift
//  TheUltimateCheatSheet
//
//  Created by Zachary on 30/9/22.
//

import SwiftUI

struct DatePickerExample: View {
    
    @State var selectedDate: Date = Date()
    
    //range of the selectedDate
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2021)) ?? Date()
    let endingDate: Date = Date()
    
    //Formatting Date & Time
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            
            Text("Selected Date Is:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            
            //DatePicker("Select a Date", selection: $selectedDate)
            //DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
            DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                .accentColor(Color.red)
                .datePickerStyle(
                    CompactDatePickerStyle()
                    //GraphicalDatePickerStyle()
                )

            
        }
    }
}

struct DatePickerExample_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerExample()
    }
}
