//
//  StaticDataView.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 29/1/22.
//

import SwiftUI

struct StaticDataView: View {
    var body: some View {
        List(courses) { course in
            Text(course.title)
                .padding()
                .background(course.color)
                .cornerRadius(10)
        }
    }
}

struct StaticDataView_Previews: PreviewProvider {
    static var previews: some View {
        StaticDataView()
    }
}

struct Course: Identifiable {
    var id = UUID()
    var title: String
    var color: Color
}

var courses = [
    Course(title: "SwiftUI", color: Color.blue),
    Course(title: "UI Design", color: Color.red)
//    Course(title: "SwiftUI", color: Color.blue)
]
