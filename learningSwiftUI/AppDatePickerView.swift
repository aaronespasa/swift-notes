//
//  AppDatePickerView.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 29/1/22.
//

import SwiftUI

struct AppDatePickerView: View {
    @State var selectedDate = Date()
    
    var body: some View {
        VStack {
//            Beautiful calendar:
//            DatePicker("Select a date", selection: $selectedDate)
//                .datePickerStyle(GraphicalDatePickerStyle())
            
//          Choose what to show:
//            DatePicker("Select a date", selection: $selectedDate,
//                       displayedComponents: [.hourAndMinute, .date])
//                .font(.title3)
//                .padding()
            
            // Only select before today -> in: ...Date()
            // Only select after today  -> in: Date()...
            DatePicker("Select a date", selection: $selectedDate, in: ...Date())
                .font(.title3)
                .padding()
        }
        .padding()
    }
}

struct AppDatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        AppDatePickerView()
    }
}
