//
//  AppNavigationView.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 29/1/22.
//

import SwiftUI

struct AppNavigationView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink(destination: Text("New view")) {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(height: 1000)
                        .padding()
                    .foregroundColor(.blue)
                }
            }
            .navigationTitle("Today")
            .navigationBarItems(trailing: Image(systemName: "person.crop.circle"))
        }
    }
}

struct AppNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavigationView()
    }
}
