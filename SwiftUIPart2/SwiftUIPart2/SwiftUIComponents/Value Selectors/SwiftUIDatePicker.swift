//
//  SwiftUIDatePicker.swift
//  SwiftUIPart2
//
//  Created by グェン・トゥン on 2021/08/13.
//

import SwiftUI

struct SwiftUIDatePicker: View {
    @State private var date = Date()
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2021, month: 1, day: 1)
        let endComponents = DateComponents(year: 2021, month: 12, day: 31, hour: 23, minute: 59, second: 59)
        return calendar.date(from:startComponents)!
            ...
            calendar.date(from:endComponents)!
    }()
    
    var body: some View {
        VStack {
            DatePicker("Date of birth", selection: $date, displayedComponents: [.date])
            
            Text("Date picker with range")
            DatePicker("Time order", selection: $date, in: dateRange )
            
            DatePicker("", selection: $date, displayedComponents: [.date])
                .datePickerStyle(WheelDatePickerStyle())
            
            DatePicker("Selected date", selection: $date, displayedComponents: [.date])
                .datePickerStyle(CompactDatePickerStyle())
            Spacer()
            
            
            
        }.padding()
        
    }
}

struct SwiftUIDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIDatePicker()
    }
}
