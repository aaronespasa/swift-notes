//
//  SidebarView.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 25/1/22.
//

import SwiftUI

struct SidebarView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: HomeView()) {
                    Label("Courses", systemImage: "book")
                }
                NavigationLink(destination: TutorialsView()) {
                    Label("Tutorials", systemImage: "square")
                }
            }
            .navigationTitle("Learn")
            
            HomeView()
        }
    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
